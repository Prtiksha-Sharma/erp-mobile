import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/driver_profile.dart';
import '../services/driver_service.dart';

/// Not child-scoped (this app has no concept of "active child" for the
/// Driver role) — a single driver has exactly one profile.
final driverProfileProvider = FutureProvider<DriverProfile>((ref) async {
  final result = await DriverService().getMyProfile();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});

/// The caller's own trips, most recent first (trips.service.js#listTrips'
/// own orderBy) — used here only to find today's ONGOING trip, if any.
final myTripsProvider = FutureProvider<List<DriverTrip>>((ref) async {
  final result = await DriverService().listMyTrips();
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
});
