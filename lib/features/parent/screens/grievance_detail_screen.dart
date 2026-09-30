import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/grievance_ticket.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/grievances_provider.dart';
import '../services/grievances_service.dart';

class GrievanceDetailScreen extends ConsumerWidget {
  const GrievanceDetailScreen({super.key, required this.ticketId});

  final String ticketId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketAsync = ref.watch(grievanceDetailProvider(ticketId));

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: const Text('Grievance')),
      body: ticketAsync.when(
        data: (ticket) => _TicketDetailView(ticket: ticket),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(grievanceDetailProvider(ticketId)),
        ),
      ),
    );
  }
}

class _TicketDetailView extends ConsumerStatefulWidget {
  const _TicketDetailView({required this.ticket});

  final GrievanceTicket ticket;

  @override
  ConsumerState<_TicketDetailView> createState() => _TicketDetailViewState();
}

class _TicketDetailViewState extends ConsumerState<_TicketDetailView> {
  final _replyController = TextEditingController();
  bool _isSubmitting = false;

  @override
  void dispose() {
    _replyController.dispose();
    super.dispose();
  }

  Future<void> _submitReply() async {
    final body = _replyController.text.trim();
    if (body.isEmpty) return;

    setState(() => _isSubmitting = true);

    final result = await GrievancesService().addResponse(widget.ticket.ticketId, body);

    if (!mounted) return;
    setState(() => _isSubmitting = false);

    switch (result) {
      case Ok():
        _replyController.clear();
        ref.invalidate(grievanceDetailProvider(widget.ticket.ticketId));
      case Err(:final failure):
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(failure.userMessage)),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final ticket = widget.ticket;
    final color = grievanceStatusColor(ticket.status);
    final dateFormat = DateFormat('d MMM yyyy, h:mm a');
    final canReply = grievanceCanReply(ticket.status);

    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border(left: BorderSide(color: color, width: 4)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(ticket.subject,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                          decoration:
                              BoxDecoration(color: color.withValues(alpha: 0.12), borderRadius: BorderRadius.circular(10)),
                          child: Text(grievanceStatusLabel(ticket.status),
                              style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.w700)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(ticket.description),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: [
                        if (ticket.category != null) Chip(label: Text(ticket.category!), visualDensity: VisualDensity.compact),
                        if (ticket.priority != null) Chip(label: Text(ticket.priority!), visualDensity: VisualDensity.compact),
                        if (ticket.students != null)
                          Chip(label: Text(ticket.students!.displayName), visualDensity: VisualDensity.compact),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text('Responses', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(height: 8),
              if (ticket.responses == null || ticket.responses!.isEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('No responses yet.'),
                )
              else
                ...ticket.responses!.map((r) => _ResponseBubble(response: r, dateFormat: dateFormat)),
            ],
          ),
        ),
        if (canReply)
          Container(
            padding: EdgeInsets.fromLTRB(12, 8, 12, 8 + MediaQuery.of(context).padding.bottom),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.06), blurRadius: 6, offset: const Offset(0, -2))],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _replyController,
                    decoration: const InputDecoration(hintText: 'Write a reply...'),
                    minLines: 1,
                    maxLines: 4,
                  ),
                ),
                const SizedBox(width: 8),
                _isSubmitting
                    ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                    : IconButton(icon: const Icon(Icons.send), onPressed: _submitReply),
              ],
            ),
          ),
      ],
    );
  }
}

class _ResponseBubble extends StatelessWidget {
  const _ResponseBubble({required this.response, required this.dateFormat});

  final GrievanceResponse response;
  final DateFormat dateFormat;

  @override
  Widget build(BuildContext context) {
    final isParent = response.responderRole == 'PARENT';
    final scheme = Theme.of(context).colorScheme;

    return Align(
      alignment: isParent ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.all(12),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
          color: isParent ? scheme.primaryContainer : scheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isParent ? 'You' : 'School',
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: scheme.primary),
            ),
            const SizedBox(height: 4),
            Text(response.body),
            const SizedBox(height: 4),
            Text(dateFormat.format(response.createdAt), style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
