import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/models/child.dart';
import '../providers/children_provider.dart';

class ParentHomeScreen extends ConsumerWidget {
  const ParentHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final childrenAsync = ref.watch(childrenListProvider);
    final activeChild = ref.watch(activeChildProvider);

    // Auto-select the first child once the list loads, if nothing's
    // selected yet — this is the only place default-selection happens,
    // keeping ActiveChildNotifier itself free of cross-provider reads.
    ref.listen(childrenListProvider, (previous, next) {
      next.whenData((children) {
        if (ref.read(activeChildProvider) == null && children.isNotEmpty) {
          ref.read(activeChildProvider.notifier).select(children.first);
        }
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('EduSoft Parent'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Log out',
            onPressed: () => ref.read(authProvider.notifier).logout(),
          ),
        ],
      ),
      body: childrenAsync.when(
        data: (children) => _ChildrenView(children: children, activeChild: activeChild),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => _ErrorView(
          message: err is Failure ? err.userMessage : 'Something went wrong.',
          onRetry: () => ref.invalidate(childrenListProvider),
        ),
      ),
    );
  }
}

class _ChildrenView extends StatelessWidget {
  const _ChildrenView({required this.children, required this.activeChild});

  final List<Child> children;
  final Child? activeChild;

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return const Center(child: Text('No children linked to this account yet.'));
    }

    return Column(
      children: [
        if (children.length > 1) _ChildSwitcher(children: children, activeChild: activeChild),
        Expanded(
          child: Center(
            child: activeChild == null
                ? const Text('Select a child')
                : Text(
                    '${activeChild!.displayName}\n${activeChild!.className ?? ''} '
                    '${activeChild!.sectionName ?? ''}'.trim(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18),
                  ),
          ),
        ),
      ],
    );
  }
}

class _ChildSwitcher extends ConsumerWidget {
  const _ChildSwitcher({required this.children, required this.activeChild});

  final List<Child> children;
  final Child? activeChild;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 56,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        itemCount: children.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final child = children[index];
          final isActive = child.studentId == activeChild?.studentId;
          return ChoiceChip(
            label: Text(child.displayName),
            selected: isActive,
            onSelected: (_) => ref.read(activeChildProvider.notifier).select(child),
          );
        },
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(message, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            FilledButton(onPressed: onRetry, child: const Text('Retry')),
          ],
        ),
      ),
    );
  }
}
