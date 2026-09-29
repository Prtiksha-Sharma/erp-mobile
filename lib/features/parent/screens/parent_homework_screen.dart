import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/homework_submission.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/homework_provider.dart';

class ParentHomeworkScreen extends ConsumerStatefulWidget {
  const ParentHomeworkScreen({super.key});

  @override
  ConsumerState<ParentHomeworkScreen> createState() => _ParentHomeworkScreenState();
}

class _ParentHomeworkScreenState extends ConsumerState<ParentHomeworkScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Homework')),
        body: const Center(child: Text('Select a child from Home first.')),
      );
    }

    final studentId = activeChild.studentId;
    final homeworkAsync = ref.watch(homeworkProvider(studentId));
    final assignmentsAsync = ref.watch(assignmentsProvider(studentId));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: const Text('Homework'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [Tab(text: 'Homework'), Tab(text: 'Assignments')],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _HomeworkList(
            asyncValue: homeworkAsync,
            onRetry: () => ref.invalidate(homeworkProvider(studentId)),
          ),
          _HomeworkList(
            asyncValue: assignmentsAsync,
            onRetry: () => ref.invalidate(assignmentsProvider(studentId)),
          ),
        ],
      ),
    );
  }
}

class _HomeworkList extends StatelessWidget {
  const _HomeworkList({required this.asyncValue, required this.onRetry});

  final AsyncValue<List<HomeworkSubmission>> asyncValue;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (items) {
        if (items.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.task_alt_outlined, size: 48, color: Theme.of(context).colorScheme.outline),
                const SizedBox(height: 12),
                const Text('Nothing here yet.'),
              ],
            ),
          );
        }
        final dateFormat = DateFormat('d MMM yyyy');
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemBuilder: (context, index) => _HomeworkCard(item: items[index], dateFormat: dateFormat),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => ErrorView(message: describeError(err), onRetry: onRetry),
    );
  }
}

class _HomeworkCard extends StatelessWidget {
  const _HomeworkCard({required this.item, required this.dateFormat});

  final HomeworkSubmission item;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    final status = item.effectiveStatus;
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border(left: BorderSide(color: status.color, width: 4)),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  item.homework.title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(color: status.color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(10)),
                child: Text(status.label, style: TextStyle(color: status.color, fontSize: 11, fontWeight: FontWeight.w700)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.menu_book_outlined, size: 14, color: Theme.of(context).colorScheme.outline),
              const SizedBox(width: 4),
              Text(item.homework.subject.subjectName, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          if (item.homework.description != null && item.homework.description!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(item.homework.description!),
          ],
          const Divider(height: 20),
          Row(
            children: [
              Icon(Icons.event_outlined, size: 14, color: Theme.of(context).colorScheme.outline),
              const SizedBox(width: 4),
              Text('Due ${dateFormat.format(item.homework.dueDate)}', style: Theme.of(context).textTheme.bodySmall),
              const Spacer(),
              // The API only ever returns the teacher's login username, not
              // their display name (verified live) — shown as-is since
              // there's nothing better to show.
              Icon(Icons.person_outline, size: 14, color: Theme.of(context).colorScheme.outline),
              const SizedBox(width: 4),
              Text(item.homework.assignedBy.username, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          if (item.remark != null && item.remark!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text('Teacher remark: ${item.remark}', style: const TextStyle(fontStyle: FontStyle.italic)),
            ),
          ],
        ],
      ),
    );
  }
}
