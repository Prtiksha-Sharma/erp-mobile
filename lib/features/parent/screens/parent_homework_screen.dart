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
          return const Center(child: Text('Nothing here yet.'));
        }
        final dateFormat = DateFormat('d MMM yyyy');
        return ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: items.length,
          separatorBuilder: (_, _) => const SizedBox(height: 8),
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
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
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
                Chip(
                  avatar: CircleAvatar(backgroundColor: status.color, radius: 6),
                  label: Text(status.label),
                  visualDensity: VisualDensity.compact,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(item.homework.subject.subjectName, style: Theme.of(context).textTheme.bodySmall),
            if (item.homework.description != null && item.homework.description!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(item.homework.description!),
            ],
            const SizedBox(height: 8),
            Text('Due: ${dateFormat.format(item.homework.dueDate)}'),
            // The API only ever returns the teacher's login username, not
            // their display name (verified live) — shown as-is since
            // there's nothing better to show.
            Text(
              'Assigned by: ${item.homework.assignedBy.username}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            if (item.remark != null && item.remark!.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text('Teacher remark: ${item.remark}', style: const TextStyle(fontStyle: FontStyle.italic)),
            ],
          ],
        ),
      ),
    );
  }
}
