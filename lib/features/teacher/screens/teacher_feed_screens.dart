import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import 'teacher_page_scaffold.dart';

/// The three read-only institution feeds — ports of MyNoticesPage.jsx,
/// MyEventsPage.jsx and MyActivitiesPage.jsx. Same card-per-item layout on
/// every screen size (width-capped on tablets).

class TeacherNoticesScreen extends ConsumerWidget {
  const TeacherNoticesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TeacherPageScaffold(
      title: 'Notices',
      body: AsyncValueView(
        value: ref.watch(teacherNoticesProvider),
        loadingLabel: 'Loading notices…',
        onRetry: () => ref.invalidate(teacherNoticesProvider),
        data: (notices) => ResponsiveListView(
          onRefresh: () => ref.refresh(teacherNoticesProvider.future),
          children: [
            if (notices.isEmpty)
              const EmptyCard(
                icon: Icons.campaign_outlined,
                title: 'No notices yet',
                message: 'School notices and circulars will appear here.',
              )
            else
              for (final n in notices)
                _FeedCard(
                  title: n.title,
                  date: n.noticeDate == null ? null : formatDate(n.noticeDate),
                  description: n.description,
                  footer: (n.attachmentUrl?.isNotEmpty ?? false)
                      ? ExternalLinkButton(label: 'View Attachment', url: n.attachmentUrl!)
                      : null,
                ),
          ],
        ),
      ),
    );
  }
}

class TeacherEventsScreen extends ConsumerWidget {
  const TeacherEventsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TeacherPageScaffold(
      title: 'Events',
      body: AsyncValueView(
        value: ref.watch(teacherEventsProvider),
        loadingLabel: 'Loading events…',
        onRetry: () => ref.invalidate(teacherEventsProvider),
        data: (events) => ResponsiveListView(
          onRefresh: () => ref.refresh(teacherEventsProvider.future),
          children: [
            if (events.isEmpty)
              const EmptyCard(
                icon: Icons.calendar_month_outlined,
                title: 'No events yet',
                message: 'School events will appear here.',
              )
            else
              for (final e in events)
                _FeedCard(
                  title: e.eventName,
                  date: e.eventDate == null ? null : formatDate(e.eventDate),
                  description: e.description,
                ),
          ],
        ),
      ),
    );
  }
}

class TeacherActivitiesScreen extends ConsumerWidget {
  const TeacherActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TeacherPageScaffold(
      title: 'Activities',
      body: AsyncValueView(
        value: ref.watch(teacherActivitiesProvider),
        loadingLabel: 'Loading activities…',
        onRetry: () => ref.invalidate(teacherActivitiesProvider),
        data: (activities) => ResponsiveListView(
          onRefresh: () => ref.refresh(teacherActivitiesProvider.future),
          children: [
            if (activities.isEmpty)
              const EmptyCard(
                icon: Icons.auto_awesome_outlined,
                title: 'No activities yet',
                message: 'Participatory school activities will appear here.',
              )
            else
              for (final a in activities)
                _FeedCard(
                  title: a.activityName,
                  date: a.activityDate == null ? null : formatDate(a.activityDate),
                  description: a.description,
                  tags: Wrap(
                    spacing: 8,
                    runSpacing: 6,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      if (a.activityType?.isNotEmpty ?? false)
                        StatusBadge(label: a.activityType!, variant: BadgeVariant.primary),
                      if (a.targetAudience != null) StatusBadge(label: a.targetAudience!),
                      if (a.venue?.isNotEmpty ?? false)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.place_outlined, size: 14, color: AppColors.textMuted),
                            const SizedBox(width: 2),
                            Flexible(
                              child: Text(a.venue!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class _FeedCard extends StatelessWidget {
  const _FeedCard({required this.title, this.date, this.description, this.tags, this.footer});

  final String title;
  final String? date;
  final String? description;
  final Widget? tags;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: SectionCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15))),
                if (date != null) ...[
                  const SizedBox(width: 12),
                  Text(date!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                ],
              ],
            ),
            if (tags != null) ...[const SizedBox(height: 8), tags!],
            if (description?.isNotEmpty ?? false) ...[
              const SizedBox(height: 6),
              Text(description!, style: const TextStyle(color: AppColors.textSecondary)),
            ],
            ?footer,
          ],
        ),
      ),
    );
  }
}
