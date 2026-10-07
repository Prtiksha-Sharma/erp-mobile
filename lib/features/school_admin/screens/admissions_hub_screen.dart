import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/admissions_providers.dart';
import '../services/admissions_service.dart';
import 'admissions_widgets.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

class _Accent {
  const _Accent(this.color, this.light);

  final Color color;
  final Color light;
}

const _blue = _Accent(AppColors.primary, AppColors.primaryLight);
const _amber = _Accent(AppColors.amber, AppColors.amberLight);
const _emerald = _Accent(AppColors.emerald, AppColors.emeraldLight);
const _violet = _Accent(AppColors.violet, AppColors.violetLight);
const _rose = _Accent(AppColors.rose, AppColors.roseLight);
const _teal = _Accent(AppColors.teal, AppColors.tealLight);

class _Step {
  const _Step(this.label, this.path, this.accent, [this.icon = Icons.circle_outlined]);

  final String label;
  final String path;
  final _Accent accent;
  final IconData icon;
}

/// STAT_CARDS (web ApplicationsPage) — the seven pipeline destinations.
const _statCards = <_Step>[
  _Step('Total Applications', SchoolAdminPaths.admissionsApplications, _blue, Icons.assignment_outlined),
  _Step('Incomplete Applications', SchoolAdminPaths.admissionsIncomplete, _amber, Icons.error_outline),
  _Step('Payment Verification', SchoolAdminPaths.admissionsPaymentVerify, _emerald, Icons.credit_card_outlined),
  _Step('Selected for Interview', SchoolAdminPaths.admissionsInterview, _violet, Icons.how_to_reg_outlined),
  _Step('Present Applicants', SchoolAdminPaths.admissionsPresent, _amber, Icons.groups_outlined),
  _Step('Qualified Applicants', SchoolAdminPaths.admissionsQualified, _rose, Icons.workspace_premium_outlined),
  _Step('Final Selections', SchoolAdminPaths.admissionsFinalList, _teal, Icons.emoji_events_outlined),
];

/// PIPELINE (web ApplicationsPage) — the six steps of the pipeline strip.
const _pipeline = <_Step>[
  _Step('Applications\nReceived', SchoolAdminPaths.admissionsApplications, _blue),
  _Step('Incomplete\nApplications', SchoolAdminPaths.admissionsIncomplete, _amber),
  _Step('Payment\nVerification', SchoolAdminPaths.admissionsPaymentVerify, _emerald),
  _Step('Interview\nSelection', SchoolAdminPaths.admissionsInterview, _violet),
  _Step('Qualified\nApplicants', SchoolAdminPaths.admissionsQualified, _rose),
  _Step('Final\nApplicants', SchoolAdminPaths.admissionsFinalList, _teal),
];

/// New Applicant / Students — web features/admissions/pages/
/// ApplicationsPage.jsx: the admissions pipeline hub. The web page's
/// "Recent Applications" card is a permanent empty state (nothing feeds
/// it) and its "New Application" button links to the public home page; the
/// mobile hub shows the real latest applications and opens the admin New
/// Application form.
class AdmissionsHubScreen extends ConsumerWidget {
  const AdmissionsHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SchoolAdminPageScaffold(
      title: 'New Applicant / Students',
      body: ResponsiveListView(
        onRefresh: () async => ref.invalidate(admissionListProvider),
        children: [
          PageHeading(
            icon: Icons.checklist_outlined,
            title: 'New Applicant / Students',
            subtitle: 'Manage online registrations and applicant admissions pipeline',
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: FilledButton.icon(
              onPressed: () => context.go(SchoolAdminPaths.admissionsNew),
              icon: const Icon(Icons.person_add_alt_1_outlined, size: 18),
              label: const Text('New Application'),
            ),
          ),
          const SizedBox(height: 16),
          const _PipelineCard(),
          const SizedBox(height: 16),
          ResponsiveGrid(
            minItemWidth: 150,
            minColumns: 2,
            maxColumns: 4,
            children: [for (final (i, c) in _statCards.indexed) _StatCard(step: c, index: i)],
          ),
          const SizedBox(height: 20),
          const Text(
            'QUICK ACCESS',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 0.8, color: AppColors.textMuted),
          ),
          const SizedBox(height: 10),
          ResponsiveGrid(
            minItemWidth: 120,
            minColumns: 2,
            maxColumns: 6,
            spacing: 10,
            children: [for (final (i, s) in _pipeline.indexed) _QuickTile(step: s, number: i + 1)],
          ),
          const SizedBox(height: 20),
          const _RecentApplications(),
        ],
      ),
    );
  }
}

class _PipelineCard extends StatelessWidget {
  const _PipelineCard();

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'ADMISSIONS PIPELINE',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, letterSpacing: 0.8, color: AppColors.textMuted),
          ),
          const SizedBox(height: 14),
          LayoutBuilder(
            builder: (context, c) {
              Widget step(int i) => InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () => context.go(_pipeline[i].path),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _NumberBadge(number: i + 1, accent: _pipeline[i].accent, size: 40),
                      const SizedBox(height: 8),
                      Text(
                        _pipeline[i].label,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              );
              if (c.maxWidth >= 640) {
                return Row(
                  children: [
                    for (var i = 0; i < _pipeline.length; i++) ...[
                      Expanded(child: step(i)),
                      if (i < _pipeline.length - 1) const Icon(Icons.chevron_right, size: 16, color: AppColors.border),
                    ],
                  ],
                );
              }
              final w = (c.maxWidth - 16) / 3;
              return Wrap(
                spacing: 8,
                runSpacing: 12,
                children: [for (var i = 0; i < _pipeline.length; i++) SizedBox(width: w, child: step(i))],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _NumberBadge extends StatelessWidget {
  const _NumberBadge({required this.number, required this.accent, required this.size});

  final int number;
  final _Accent accent;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: accent.light, shape: BoxShape.circle),
      child: Text(
        '$number',
        style: TextStyle(fontWeight: FontWeight.w700, color: accent.color),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.step, required this.index});

  final _Step step;
  final int index;

  @override
  Widget build(BuildContext context) {
    final a = step.accent;
    return Material(
      color: Colors.white,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColors.border),
      ),
      child: InkWell(
        onTap: () => context.go(step.path),
        child: Container(
          constraints: const BoxConstraints(minHeight: 150),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: const Alignment(0.6, 1),
              colors: [a.light, Colors.white],
              stops: const [0, 0.65],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(color: a.light, borderRadius: BorderRadius.circular(12)),
                    child: Icon(step.icon, size: 20, color: a.color),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: a.light,
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(color: a.color),
                    ),
                    child: Text(
                      'Step ${index + 1}',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: a.color),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Text(
                step.label,
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      'View details',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: a.color),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(Icons.arrow_forward, size: 12, color: a.color),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuickTile extends StatelessWidget {
  const _QuickTile({required this.step, required this.number});

  final _Step step;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.border),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.go(step.path),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                width: 36,
                height: 36,
                alignment: Alignment.center,
                decoration: BoxDecoration(color: step.accent.light, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  '$number',
                  style: TextStyle(fontWeight: FontWeight.w700, color: step.accent.color),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                step.label,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.textSecondary),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// The latest five applications (GET /admin/admission/applications).
class _RecentApplications extends ConsumerWidget {
  const _RecentApplications();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recent = ref.watch(
      admissionListProvider(const AdmissionListRequest(AdmissionListKind.applications, limit: 5)),
    );
    return SectionCard(
      title: 'Recent Applications',
      icon: Icons.groups_outlined,
      trailing: TextButton(
        onPressed: () => context.go(SchoolAdminPaths.admissionsApplications),
        child: const Text('View all'),
      ),
      padding: EdgeInsets.zero,
      child: recent.when(
        skipLoadingOnRefresh: true,
        loading: () => const Padding(
          padding: EdgeInsets.all(24),
          child: Center(child: SizedBox(width: 22, height: 22, child: CircularProgressIndicator(strokeWidth: 2.5))),
        ),
        error: (err, _) => Padding(
          padding: const EdgeInsets.all(8),
          child: AdmissionLoadError(
            title: 'Failed to load applications.',
            error: err,
            onRetry: () => ref.invalidate(admissionListProvider),
          ),
        ),
        data: (page) => page.data.isEmpty
            ? const EmptyState(
                icon: Icons.assignment_outlined,
                title: 'No applications yet',
                message: 'New online applications will appear here once submitted.',
              )
            : Column(
                children: [
                  for (final (i, r) in page.data.indexed) ...[
                    if (i > 0) const Divider(height: 1, color: AppColors.border),
                    InkWell(
                      onTap: () => context.go('${SchoolAdminPaths.admissionsApplications}/${r.applicationId}'),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        child: Row(
                          children: [
                            ApplicantAvatar(name: r.applicant?.fullName, gender: r.applicant?.gender),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    r.applicant?.fullName ?? 'Not provided',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '${r.applicationNo ?? '—'} · ${admissionDate(r.createdAt)}',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Flexible(child: applicationStatusPill(r.applicationStatus)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
      ),
    );
  }
}
