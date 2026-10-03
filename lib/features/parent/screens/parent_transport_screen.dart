import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/transport_info.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/children_provider.dart' show activeChildProvider;
import '../providers/transport_provider.dart';
import 'parent_page_scaffold.dart';

class ParentTransportScreen extends ConsumerWidget {
  const ParentTransportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeChild = ref.watch(activeChildProvider);

    if (activeChild == null) {
      return const ParentPageScaffold(
        title: 'Transport',
        body: Center(child: Text('Select a child from Home first.')),
      );
    }

    final transportAsync = ref.watch(transportProvider(activeChild.studentId));

    return ParentPageScaffold(
      title: 'Transport',
      body: transportAsync.when(
        data: (info) => info == null
            ? const _NoTransportAssigned()
            : _TransportDetails(info: info),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(transportProvider(activeChild.studentId)),
        ),
      ),
    );
  }
}

class _NoTransportAssigned extends StatelessWidget {
  const _NoTransportAssigned();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.directions_bus_outlined, size: 48, color: Theme.of(context).colorScheme.outline),
          const SizedBox(height: 12),
          const Text('No transport assigned to this child.'),
        ],
      ),
    );
  }
}

class _TransportDetails extends StatelessWidget {
  const _TransportDetails({required this.info});

  final TransportInfo info;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: scheme.primaryContainer, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: scheme.primary,
                child: const Icon(Icons.directions_bus, color: Colors.white),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(info.route.routeName,
                        style: TextStyle(color: scheme.onPrimaryContainer, fontSize: 18, fontWeight: FontWeight.bold)),
                    if (info.bus != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        'Bus ${info.bus!.busNumber}${info.bus!.capacity != null ? ' • ${info.bus!.capacity} seats' : ''}',
                        style: TextStyle(color: scheme.onPrimaryContainer.withValues(alpha: 0.75)),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        if (info.stop != null) _InfoCard(
          icon: Icons.location_on_outlined,
          color: const Color(0xFF16A34A),
          title: info.stop!.stopName,
          rows: [
            if (info.stop!.pickupTimeOfDay != null) 'Pickup: ${info.stop!.pickupTimeOfDay!.format(context)}',
            if (info.stop!.dropTimeOfDay != null) 'Drop: ${info.stop!.dropTimeOfDay!.format(context)}',
          ],
        ),
        if (info.stop != null) const SizedBox(height: 12),
        if (info.driver != null) _InfoCard(
          icon: Icons.person_outline,
          color: const Color(0xFF2563EB),
          title: info.driver!.name,
          rows: [
            if (info.driver!.phone != null && info.driver!.phone!.isNotEmpty) info.driver!.phone!,
          ],
          subtitleLabel: 'Driver',
        ),
      ],
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.icon,
    required this.color,
    required this.title,
    required this.rows,
    this.subtitleLabel,
  });

  final IconData icon;
  final Color color;
  final String title;
  final List<String> rows;
  final String? subtitleLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(backgroundColor: color.withValues(alpha: 0.15), child: Icon(icon, color: color)),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (subtitleLabel != null)
                  Text(subtitleLabel!, style: Theme.of(context).textTheme.bodySmall),
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                for (final row in rows) ...[
                  const SizedBox(height: 2),
                  Text(row, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
