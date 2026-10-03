import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/grievance_ticket.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/grievances_provider.dart';
import 'parent_page_scaffold.dart';

class ParentGrievancesScreen extends ConsumerWidget {
  const ParentGrievancesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketsAsync = ref.watch(grievancesListProvider);

    return ParentPageScaffold(
      title: 'Grievances',
      body: ticketsAsync.when(
        data: (tickets) => _TicketsList(tickets: tickets),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(grievancesListProvider),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go('/parent/more/grievances/file'),
        icon: const Icon(Icons.add),
        label: const Text('File a Grievance'),
      ),
    );
  }
}

class _TicketsList extends StatelessWidget {
  const _TicketsList({required this.tickets});

  final List<GrievanceTicket> tickets;

  @override
  Widget build(BuildContext context) {
    if (tickets.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.report_problem_outlined, size: 48, color: Theme.of(context).colorScheme.outline),
            const SizedBox(height: 12),
            const Text('No grievances filed yet.'),
          ],
        ),
      );
    }

    final dateFormat = DateFormat('d MMM yyyy');
    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 88), // clears the FAB
      itemCount: tickets.length,
      separatorBuilder: (_, _) => const SizedBox(height: 10),
      itemBuilder: (context, i) {
        final ticket = tickets[i];
        final color = grievanceStatusColor(ticket.status);
        return Card(
          margin: EdgeInsets.zero,
          child: ListTile(
            title: Text(ticket.subject, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(
              [
                if (ticket.category != null) ticket.category!,
                if (ticket.students != null) ticket.students!.displayName,
                dateFormat.format(ticket.createdAt),
              ].join(' • '),
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(10)),
              child: Text(
                grievanceStatusLabel(ticket.status),
                style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.w700),
              ),
            ),
            onTap: () => context.go('/parent/more/grievances/${ticket.ticketId}'),
          ),
        );
      },
    );
  }
}
