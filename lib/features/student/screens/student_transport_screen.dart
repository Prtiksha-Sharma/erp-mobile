import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/student_records.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/student_portal_providers.dart';
import 'student_page_scaffold.dart';

/// Port of MyTransportPage.jsx — read-only; Transport Manager assigns.
class StudentTransportScreen extends ConsumerWidget {
  const StudentTransportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StudentPageScaffold(
      title: 'My Transport',
      body: AsyncValueView(
        value: ref.watch(myTransportProvider),
        loadingLabel: 'Loading your transport details…',
        onRetry: () => ref.invalidate(myTransportProvider),
        data: (transport) => ResponsiveListView(
          onRefresh: () => ref.refresh(myTransportProvider.future),
          children: [
            const PageIntro('Your assigned route, stop, and bus for the current session.'),
            if (transport == null)
              const SectionCard(
                child: EmptyState(
                  icon: Icons.directions_bus_outlined,
                  title: 'No transport assigned',
                  message:
                      "You aren't assigned to a bus route yet — contact your school's Transport Manager if this is unexpected.",
                ),
              )
            else
              _TransportCard(transport: transport),
          ],
        ),
      ),
    );
  }
}

class _TransportCard extends StatelessWidget {
  const _TransportCard({required this.transport});

  final TransportAssignment transport;

  @override
  Widget build(BuildContext context) {
    final stop = transport.stop;
    final driver = transport.driver;
    final scheme = Theme.of(context).colorScheme;
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ResponsiveGrid(
            minItemWidth: 240,
            maxColumns: 2,
            spacing: 16,
            children: [
              _InfoRow(icon: Icons.directions_bus_outlined, label: 'Route', value: transport.route.routeName),
              _InfoRow(icon: Icons.place_outlined, label: 'Stop', value: stop?.stopName ?? 'Not set'),
              _InfoRow(
                icon: Icons.schedule_outlined,
                label: 'Pickup Time',
                value: stop?.pickupTime == null ? '—' : formatClockTime(stop!.pickupTime),
              ),
              _InfoRow(
                icon: Icons.schedule_outlined,
                label: 'Drop Time',
                value: stop?.dropTime == null ? '—' : formatClockTime(stop!.dropTime),
              ),
              _InfoRow(icon: Icons.badge_outlined, label: 'Bus Number', value: transport.bus?.busNumber ?? '—'),
            ],
          ),
          if (driver != null) ...[
            const Divider(height: 32),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: scheme.surfaceContainerHighest,
                  backgroundImage: driver.photoUrl != null ? CachedNetworkImageProvider(driver.photoUrl!) : null,
                  child: driver.photoUrl == null ? Icon(Icons.person_outline, color: scheme.outline) : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Driver', style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.outline)),
                      Text(driver.name ?? '—', style: const TextStyle(fontWeight: FontWeight.w600)),
                      if (driver.phone != null) Text(driver.phone!, style: Theme.of(context).textTheme.bodySmall),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.label, required this.value});

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(color: scheme.primaryContainer, borderRadius: BorderRadius.circular(10)),
          child: Icon(icon, size: 18, color: scheme.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.outline)),
              Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ],
    );
  }
}
