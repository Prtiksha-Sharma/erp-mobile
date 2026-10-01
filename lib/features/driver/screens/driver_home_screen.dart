import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/driver_profile.dart';
import '../../../ui/widgets/error_view.dart';
import '../providers/driver_provider.dart';
import '../services/driver_service.dart';

/// Single-screen portal — mirrors the web's DriverDashboardPage exactly
/// (profile card, My Trip control, route/stops with a "Reached" button per
/// stop). The whole Driver role is this one screen; no bottom-nav hub is
/// warranted at this scope.
class DriverHomeScreen extends ConsumerWidget {
  const DriverHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(driverProfileProvider);
    final tripsAsync = ref.watch(myTripsProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(
        title: const Text('Driver'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Log out',
            onPressed: () => ref.read(authProvider.notifier).logout(),
          ),
        ],
      ),
      body: profileAsync.when(
        data: (profile) => tripsAsync.when(
          data: (trips) => _DriverBody(profile: profile, trips: trips),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, _) => ErrorView(
            message: describeError(err),
            onRetry: () => ref.invalidate(myTripsProvider),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => ErrorView(
          message: describeError(err),
          onRetry: () => ref.invalidate(driverProfileProvider),
        ),
      ),
    );
  }
}

class _DriverBody extends ConsumerStatefulWidget {
  const _DriverBody({required this.profile, required this.trips});

  final DriverProfile profile;
  final List<DriverTrip> trips;

  @override
  ConsumerState<_DriverBody> createState() => _DriverBodyState();
}

class _DriverBodyState extends ConsumerState<_DriverBody> {
  bool _isBusy = false;
  Failure? _error;
  final Set<String> _markingStopIds = {};

  DriverTrip? get _ongoingTrip {
    try {
      return widget.trips.firstWhere((t) => t.status == TripStatus.ongoing);
    } catch (_) {
      return null;
    }
  }

  void _refreshAll() {
    ref.invalidate(myTripsProvider);
    ref.invalidate(driverProfileProvider);
  }

  Future<void> _startTrip(TripType type, {String? routeId}) async {
    setState(() {
      _isBusy = true;
      _error = null;
    });
    final result = await DriverService().startTrip(tripType: type, routeId: routeId);
    if (!mounted) return;
    setState(() => _isBusy = false);
    switch (result) {
      case Ok():
        _refreshAll();
      case Err(:final failure):
        setState(() => _error = failure);
    }
  }

  /// A bus can serve more than one route (buses.routes is a list, not a
  /// single FK) — auto-pick only applies when there's exactly one, otherwise
  /// the driver must say which route they're actually driving today.
  Future<void> _startTripRequest(TripType type) async {
    final routes = widget.profile.bus?.routes ?? const [];
    if (routes.length <= 1) {
      await _startTrip(type, routeId: routes.firstOrNull?.routeId);
      return;
    }

    final picked = await showDialog<DriverRoute>(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Which route?'),
        children: [
          for (final route in routes)
            SimpleDialogOption(
              onPressed: () => Navigator.of(context).pop(route),
              child: Text(route.routeName),
            ),
        ],
      ),
    );
    if (picked == null) return;
    await _startTrip(type, routeId: picked.routeId);
  }

  Future<void> _completeTrip() async {
    setState(() {
      _isBusy = true;
      _error = null;
    });
    final result = await DriverService().completeTrip();
    if (!mounted) return;
    setState(() => _isBusy = false);
    switch (result) {
      case Ok():
        _refreshAll();
      case Err(:final failure):
        setState(() => _error = failure);
    }
  }

  Future<void> _cancelTrip() async {
    setState(() {
      _isBusy = true;
      _error = null;
    });
    final result = await DriverService().cancelTrip();
    if (!mounted) return;
    setState(() => _isBusy = false);
    switch (result) {
      case Ok():
        _refreshAll();
      case Err(:final failure):
        setState(() => _error = failure);
    }
  }

  Future<void> _markStopReached(String routeId, RouteStop stop) async {
    setState(() => _markingStopIds.add(stop.stopId));
    final result = await DriverService().markStopReached(routeId: routeId, stopId: stop.stopId);
    if (!mounted) return;
    setState(() => _markingStopIds.remove(stop.stopId));
    switch (result) {
      case Ok(:final value):
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${stop.stopName} marked reached — ${value.recipientCount} parent(s) notified.')),
        );
      case Err(:final failure):
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(failure.userMessage)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final bus = widget.profile.bus;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _ProfileCard(profile: widget.profile),
        const SizedBox(height: 20),
        Text('My Trip', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(_error!.userMessage, style: TextStyle(color: Theme.of(context).colorScheme.error)),
          ),
        _TripControl(
          ongoingTrip: _ongoingTrip,
          isBusy: _isBusy,
          bus: bus,
          onStart: _startTripRequest,
          onComplete: _completeTrip,
          onCancel: _cancelTrip,
        ),
        if (bus != null) ...[
          const SizedBox(height: 24),
          Text('Route & Stops', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          if (bus.routes.isEmpty)
            const Text('No route assigned to your vehicle yet.')
          else
            ...bus.routes.map((route) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _RouteCard(
                    route: route,
                    markingStopIds: _markingStopIds,
                    onMarkReached: (stop) => _markStopReached(route.routeId, stop),
                  ),
                )),
        ],
      ],
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({required this.profile});

  final DriverProfile profile;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final bus = profile.bus;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: scheme.primaryContainer, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: scheme.primary,
            child: Icon(Icons.directions_bus_outlined, color: scheme.onPrimary, size: 26),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile.name,
                  style: TextStyle(color: scheme.onPrimaryContainer, fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 2),
                Text('License: ${profile.licenseNumber}', style: TextStyle(color: scheme.onPrimaryContainer)),
                Builder(builder: (context) {
                  final expired = profile.licenseExpiryDate.isBefore(DateTime.now());
                  return Text(
                    'Expires ${DateFormat('d MMM yyyy').format(profile.licenseExpiryDate)}'
                    '${expired ? ' — EXPIRED' : ''}',
                    style: TextStyle(
                      color: expired ? scheme.error : scheme.onPrimaryContainer.withValues(alpha: 0.8),
                      fontWeight: expired ? FontWeight.bold : null,
                    ),
                  );
                }),
                Text(
                  bus != null ? 'Bus ${bus.busNumber} • Capacity ${bus.capacity}' : 'No vehicle assigned yet',
                  style: TextStyle(color: scheme.onPrimaryContainer.withValues(alpha: 0.8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TripControl extends StatelessWidget {
  const _TripControl({
    required this.ongoingTrip,
    required this.isBusy,
    required this.bus,
    required this.onStart,
    required this.onComplete,
    required this.onCancel,
  });

  final DriverTrip? ongoingTrip;
  final bool isBusy;
  final DriverBus? bus;
  final void Function(TripType type) onStart;
  final VoidCallback onComplete;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    final trip = ongoingTrip;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 6, offset: const Offset(0, 2))],
      ),
      child: trip == null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('No ongoing trip.'),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: isBusy || bus == null ? null : () => onStart(TripType.pickup),
                        icon: const Icon(Icons.arrow_upward),
                        label: const Text('Start Pickup'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: isBusy || bus == null ? null : () => onStart(TripType.drop),
                        icon: const Icon(Icons.arrow_downward),
                        label: const Text('Start Drop'),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.directions_bus, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 8),
                    Text(
                      '${trip.tripType.label} in progress',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                if (trip.route != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(trip.route!.routeName),
                  ),
                if (trip.startTime != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'Started ${DateFormat('h:mm a').format(trip.startTime!.toLocal())}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        onPressed: isBusy ? null : onComplete,
                        child: const Text('Complete Trip'),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: isBusy ? null : onCancel,
                        child: const Text('Cancel Trip'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}

class _RouteCard extends StatelessWidget {
  const _RouteCard({required this.route, required this.markingStopIds, required this.onMarkReached});

  final DriverRoute route;
  final Set<String> markingStopIds;
  final void Function(RouteStop stop) onMarkReached;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(route.routeName, style: const TextStyle(fontWeight: FontWeight.bold)),
          const Divider(height: 20),
          ...route.stops.map((stop) {
            final isMarking = markingStopIds.contains(stop.stopId);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(stop.stopName),
                        if (stop.pickupTime != null)
                          Text(
                            'Pickup ${DateFormat('h:mm a').format(stop.pickupTime!)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: isMarking ? null : () => onMarkReached(stop),
                    child: isMarking
                        ? const SizedBox(height: 16, width: 16, child: CircularProgressIndicator(strokeWidth: 2))
                        : const Text('Reached'),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
