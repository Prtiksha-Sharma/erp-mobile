import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/teacher_summary.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/teachers_provider.dart';

class ParentTeachersScreen extends ConsumerWidget {
  const ParentTeachersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Teachers')),
        body: const Center(child: Text('Select a child from Home first.')),
      );
    }

    final teachersAsync = ref.watch(childTeachersProvider(activeChild.studentId));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Teachers')),
      body: teachersAsync.when(
        data: (data) => _TeachersList(data: data),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(childTeachersProvider(activeChild.studentId)),
        ),
      ),
    );
  }
}

class _TeachersList extends StatelessWidget {
  const _TeachersList({required this.data});

  final ChildTeachers data;

  @override
  Widget build(BuildContext context) {
    if (data.classTeacher == null && data.subjectTeachers.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.people_outline, size: 48, color: Theme.of(context).colorScheme.outline),
            const SizedBox(height: 12),
            const Text('No teachers assigned to this class yet.'),
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (data.classTeacher != null) ...[
          _SectionHeader(icon: Icons.star_outline, label: 'Class Teacher'),
          const SizedBox(height: 8),
          _TeacherTile(teacher: data.classTeacher!, highlighted: true),
          const SizedBox(height: 20),
        ],
        _SectionHeader(icon: Icons.groups_outlined, label: 'Subject Teachers'),
        const SizedBox(height: 8),
        if (data.subjectTeachers.isEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text('No subject teachers assigned yet.', style: Theme.of(context).textTheme.bodyMedium),
          )
        else
          ...data.subjectTeachers.map((t) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _TeacherTile(teacher: t),
              )),
      ],
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        const SizedBox(width: 6),
        Text(label, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}

class _TeacherTile extends StatelessWidget {
  const _TeacherTile({required this.teacher, this.highlighted = false});

  final TeacherSummary teacher;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: highlighted ? scheme.primaryContainer : scheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: highlighted
            ? null
            : [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        leading: CircleAvatar(
          radius: 24,
          backgroundImage:
              teacher.profilePhotoUrl != null ? NetworkImage(teacher.profilePhotoUrl!) : null,
          child: teacher.profilePhotoUrl == null ? Text(teacher.fullName[0].toUpperCase()) : null,
        ),
        title: Text(teacher.fullName, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(teacher.designation ?? teacher.employeeCode ?? ''),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => context.go('/parent/academics/teachers/${teacher.staffId}'),
      ),
    );
  }
}
