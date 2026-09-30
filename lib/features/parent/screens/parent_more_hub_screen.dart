import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Same hub convention as Academics — replaces the plain ComingSoonScreen
/// now that "More" has real content. Leaves/Transport/Grievances/Messages
/// stay disabled entries until their own slices land (P2–P4).
class ParentMoreHubScreen extends StatelessWidget {
  const ParentMoreHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('More')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.campaign_outlined),
            title: const Text('School Updates'),
            subtitle: const Text('Events, calendar, activities'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/more/school-updates'),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.beach_access_outlined),
            title: const Text('Leaves'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/more/leaves'),
          ),
          ListTile(
            leading: const Icon(Icons.directions_bus_outlined),
            title: const Text('Transport'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/more/transport'),
          ),
          ListTile(
            leading: const Icon(Icons.report_problem_outlined),
            title: const Text('Grievances'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/more/grievances'),
          ),
          ListTile(
            leading: const Icon(Icons.chat_bubble_outline),
            title: const Text('Messages'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => context.go('/parent/more/messages'),
          ),
        ],
      ),
    );
  }
}
