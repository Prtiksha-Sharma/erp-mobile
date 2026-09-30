import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/models/student_profile.dart';
import '../../../core/models/student_records.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/stat_tile.dart';
import '../providers/student_portal_providers.dart';
import 'student_documents_screen.dart' show DocumentRow;
import 'student_id_card_visual.dart';

/// Port of StudentDashboardPage.jsx — welcome banner, 4 stat tiles
/// (documents total / verified / pending, class), Quick Access, Recent
/// Documents and an ID card preview. Like the web, every widget here reads
/// the same providers its own detail screen uses — no dashboard endpoint.
class StudentHomeScreen extends ConsumerWidget {
  const StudentHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(myProfileProvider);
    final documents = ref.watch(myDocumentsProvider);
    final user = ref.watch(authProvider).user;

    final student = profile.value;
    final name = student?.fullName ?? user?.fullName ?? 'Student';
    final docs = documents.value ?? const <StudentDocument>[];
    final docsLoading = documents.isLoading && !documents.hasValue;
    final verified = docs.where((d) => d.verificationStatus == 'VERIFIED').length;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: const Text('Vidyaprabandhan'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Log out',
            onPressed: () => ref.read(authProvider.notifier).logout(),
          ),
        ],
      ),
      body: ResponsiveListView(
        onRefresh: () async {
          ref
            ..invalidate(myProfileProvider)
            ..invalidate(myDocumentsProvider)
            ..invalidate(myIdCardProvider);
          try {
            await ref.read(myProfileProvider.future);
          } catch (_) {}
        },
        children: [
          _WelcomeBanner(name: name, student: student, loading: profile.isLoading),
          const SizedBox(height: 16),
          ResponsiveGrid(
            minItemWidth: 160,
            minColumns: 2,
            maxColumns: 4,
            children: [
              StatTile(
                icon: Icons.description_outlined,
                color: AppColors.primary,
                tinted: true,
                value: docsLoading ? '—' : '${docs.length}',
                label: 'Total Documents',
              ),
              StatTile(
                icon: Icons.task_outlined,
                color: AppColors.emerald,
                tinted: true,
                value: docsLoading ? '—' : '$verified',
                label: 'Verified',
              ),
              StatTile(
                icon: Icons.pending_actions_outlined,
                color: AppColors.amber,
                tinted: true,
                value: docsLoading ? '—' : '${docs.length - verified}',
                label: 'Pending Review',
              ),
              StatTile(
                icon: Icons.school_outlined,
                color: AppColors.violet,
                tinted: true,
                value: student?.className ?? '—',
                label: [
                  student?.sectionName,
                  if (student?.rollNo != null) 'Roll ${student!.rollNo}',
                ].whereType<String>().join(' · ').ifEmpty('Class'),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'QUICK ACCESS',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.outline,
                  letterSpacing: 1,
                ),
          ),
          const SizedBox(height: 10),
          const ResponsiveGrid(
            minItemWidth: 260,
            maxColumns: 3,
            children: [
              _QuickLink(Icons.person_outline, 'My Profile', 'Personal & contact details', '/student/more/profile',
                  AppColors.primary),
              _QuickLink(Icons.description_outlined, 'My Documents', 'Uploaded documents & status',
                  '/student/more/documents', AppColors.emerald),
              _QuickLink(Icons.badge_outlined, 'Certificates', 'ID card & school certificates',
                  '/student/more/certificates', AppColors.violet),
            ],
          ),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, c) {
              final recent = _RecentDocuments(documents: documents);
              final card = _IdCardPreview(name: name, institution: student?.institutionName);
              if (c.maxWidth >= Breakpoints.expanded) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Expanded(child: recent), const SizedBox(width: 16), SizedBox(width: 340, child: card)],
                );
              }
              return Column(children: [recent, const SizedBox(height: 16), card]);
            },
          ),
        ],
      ),
    );
  }
}

class _WelcomeBanner extends StatelessWidget {
  const _WelcomeBanner({required this.name, required this.student, required this.loading});

  final String name;
  final StudentProfile? student;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final classLabel = [student?.className, student?.sectionName].whereType<String>().join(' - ');
    final subtitle = [
      student?.institutionName ?? 'Your School',
      ?student?.admissionNo,
      if (classLabel.isNotEmpty) classLabel,
    ].join('  ·  ');

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(gradient: AppColors.brandGradient, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(
            top: -90,
            right: -60,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(colors: [Colors.white.withValues(alpha: 0.25), Colors.transparent]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, $name 👋',
                        style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Text(subtitle, style: TextStyle(color: Colors.white.withValues(alpha: 0.7))),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (loading)
                      const SizedBox(
                        width: 14,
                        height: 14,
                        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                      ),
                    Text(
                      DateFormat('EEEE').format(now),
                      style: TextStyle(color: Colors.white.withValues(alpha: 0.6), fontSize: 12),
                    ),
                    Text(
                      DateFormat('d MMM yyyy').format(now),
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickLink extends StatelessWidget {
  const _QuickLink(this.icon, this.label, this.description, this.path, this.color);

  final IconData icon;
  final String label;
  final String description;
  final String path;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: InkWell(
        onTap: () => context.go(path),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(12)),
                child: Icon(icon, color: color),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
                    Text(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.outline),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward, size: 18, color: scheme.outline),
            ],
          ),
        ),
      ),
    );
  }
}

class _RecentDocuments extends ConsumerWidget {
  const _RecentDocuments({required this.documents});

  final AsyncValue<List<StudentDocument>> documents;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SectionCard(
      icon: Icons.description_outlined,
      title: 'Recent Documents',
      trailing: TextButton(onPressed: () => context.go('/student/more/documents'), child: const Text('View all')),
      padding: EdgeInsets.zero,
      child: AsyncValueView(
        value: documents,
        onRetry: () => ref.invalidate(myDocumentsProvider),
        data: (docs) => docs.isEmpty
            ? const EmptyState(
                icon: Icons.description_outlined,
                title: 'No documents yet',
                message: 'Documents uploaded by school staff will appear here.',
              )
            : Column(
                children: [
                  for (final (i, d) in docs.take(4).indexed) ...[
                    if (i > 0) const Divider(height: 1),
                    DocumentRow(document: d, compact: true),
                  ],
                ],
              ),
      ),
    );
  }
}

class _IdCardPreview extends ConsumerWidget {
  const _IdCardPreview({required this.name, required this.institution});

  final String name;
  final String? institution;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final card = ref.watch(myIdCardProvider);
    return SectionCard(
      icon: Icons.badge_outlined,
      title: 'My ID Card',
      child: card.when(
        loading: () => const LoadingView(compact: true),
        // The dashboard treats a failed/forbidden ID card like "none yet",
        // same as the web (it only renders the card when data exists).
        error: (_, _) => const EmptyState(
          icon: Icons.badge_outlined,
          title: 'No ID card yet',
          message: 'Visit Certificates to generate your ID card.',
        ),
        data: (c) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IdCardVisual(card: c, fallbackName: name, fallbackInstitution: institution, compact: true),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () => context.go('/student/more/certificates'),
              icon: const Icon(Icons.arrow_forward, size: 16),
              iconAlignment: IconAlignment.end,
              label: const Text('View certificates'),
            ),
          ],
        ),
      ),
    );
  }
}

extension on String {
  String ifEmpty(String fallback) => isEmpty ? fallback : this;
}
