import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'parent_page_scaffold.dart';

/// Simple menu now that Academics has more than one real screen behind it
/// (Attendance, Homework). Timetable/Teachers stay listed but disabled
/// until their own slices land — same "visible but not yet built" pattern
/// as the ComingSoonScreen convention elsewhere.
class ParentAcademicsHubScreen extends StatelessWidget {
  const ParentAcademicsHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ParentPageScaffold(
      title: 'Academics',
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.event_available_outlined),
            title: const Text('Attendance'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/academics/attendance'),
          ),
          ListTile(
            leading: const Icon(Icons.menu_book_outlined),
            title: const Text('Homework & Assignments'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/academics/homework'),
          ),
          ListTile(
            leading: const Icon(Icons.schedule_outlined),
            title: const Text('Timetable'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/academics/timetable'),
          ),
          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('Teachers'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/academics/teachers'),
          ),
        ],
      ),
    );
  }
}
