import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/teacher_portal_providers.dart';
import 'teacher_page_scaffold.dart';

/// Port of MySubjectsPage.jsx — the teacher's subject/class/section
/// assignments for the active session. The web's three-column table
/// becomes a card grid.
class TeacherSubjectsScreen extends ConsumerWidget {
  const TeacherSubjectsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TeacherPageScaffold(
      title: 'My Subjects',
      body: AsyncValueView(
        value: ref.watch(teacherSubjectsProvider),
        loadingLabel: 'Loading…',
        onRetry: () => ref.invalidate(teacherSubjectsProvider),
        data: (assignments) => ResponsiveListView(
          onRefresh: () => ref.refresh(teacherSubjectsProvider.future),
          children: [
            if (assignments.isEmpty)
              const EmptyCard(
                icon: Icons.school_outlined,
                title: 'No subject assignments yet',
                message: 'Classes and subjects assigned to you will appear here.',
              )
            else
              ResponsiveGrid(
                minItemWidth: 260,
                maxColumns: 3,
                children: [
                  for (final a in assignments)
                    SectionCard(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        children: [
                          const TintedIcon(icon: Icons.menu_book_outlined, color: AppColors.primary),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(a.subject?.subjectName ?? '—', style: const TextStyle(fontWeight: FontWeight.w600)),
                                const SizedBox(height: 6),
                                Wrap(
                                  spacing: 6,
                                  runSpacing: 4,
                                  children: [
                                    StatusBadge(label: a.classRef?.className ?? '—', variant: BadgeVariant.primary),
                                    StatusBadge(label: 'Section ${a.sectionRef?.sectionName ?? '—'}'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
