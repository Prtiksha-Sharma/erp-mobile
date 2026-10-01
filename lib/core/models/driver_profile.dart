import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile.freezed.dart';
part 'driver_profile.g.dart';

/// pickup_time/drop_time are @db.Time(6) columns — epoch-date-only, same
/// convention as TimetableEntry (see datetime_extensions.dart's
/// EpochTimeOfDay). Verified by direct read of driver.service.js +
/// prisma/schema.prisma's route_stops model, not live-captured yet.
@freezed
abstract class RouteStop with _$RouteStop {
  const factory RouteStop({
    @JsonKey(name: 'stop_id') required String stopId,
    @JsonKey(name: 'stop_name') required String stopName,
    @JsonKey(name: 'pickup_time') DateTime? pickupTime,
    @JsonKey(name: 'drop_time') DateTime? dropTime,
    @JsonKey(name: 'stop_order') required int stopOrder,
  }) = _RouteStop;

  factory RouteStop.fromJson(Map<String, dynamic> json) => _$RouteStopFromJson(json);
}

@freezed
abstract class DriverRoute with _$DriverRoute {
  const factory DriverRoute({
    @JsonKey(name: 'route_id') required String routeId,
    @JsonKey(name: 'route_name') required String routeName,
    @JsonKey(name: 'is_active') required bool isActive,
    @JsonKey(name: 'route_stops') required List<RouteStop> stops,
  }) = _DriverRoute;

  factory DriverRoute.fromJson(Map<String, dynamic> json) => _$DriverRouteFromJson(json);
}

@freezed
abstract class DriverBus with _$DriverBus {
  const factory DriverBus({
    @JsonKey(name: 'bus_id') required String busId,
    @JsonKey(name: 'bus_number') required String busNumber,
    required int capacity,
    required List<DriverRoute> routes,
  }) = _DriverBus;

  factory DriverBus.fromJson(Map<String, dynamic> json) => _$DriverBusFromJson(json);
}

/// GET /driver/me — verified by direct read of
/// driver.service.js#getMyDriverProfile + the `drivers` Prisma model
/// (schema.prisma:2731). `bus` is nullable — a driver profile can exist
/// with no vehicle assigned yet (drivers.bus_id is optional).
@freezed
abstract class DriverProfile with _$DriverProfile {
  const factory DriverProfile({
    @JsonKey(name: 'driver_id') required String driverId,
    required String name,
    required String phone,
    @JsonKey(name: 'license_number') required String licenseNumber,
    @JsonKey(name: 'license_expiry_date') required DateTime licenseExpiryDate,
    @JsonKey(name: 'employment_status') required String employmentStatus,
    @JsonKey(name: 'buses') DriverBus? bus,
  }) = _DriverProfile;

  factory DriverProfile.fromJson(Map<String, dynamic> json) => _$DriverProfileFromJson(json);
}

enum TripType {
  @JsonValue('PICKUP')
  pickup,
  @JsonValue('DROP')
  drop,
  unknown,
}

extension TripTypeDisplay on TripType {
  String get label => switch (this) {
        TripType.pickup => 'Pickup',
        TripType.drop => 'Drop',
        TripType.unknown => 'Unknown',
      };
}

enum TripStatus {
  @JsonValue('ONGOING')
  ongoing,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
  unknown,
}

@freezed
abstract class TripRouteRef with _$TripRouteRef {
  const factory TripRouteRef({
    @JsonKey(name: 'route_id') required String routeId,
    @JsonKey(name: 'route_name') required String routeName,
  }) = _TripRouteRef;

  factory TripRouteRef.fromJson(Map<String, dynamic> json) => _$TripRouteRefFromJson(json);
}

/// Matches GET/POST/PATCH /driver/trips* — every one of those returns this
/// same TRIP_INCLUDE shape (trips.service.js). `drivers`/`buses` nested
/// context is deliberately not modeled — it's always the caller's own name/
/// vehicle, already known, same leanness convention as elsewhere.
@freezed
abstract class DriverTrip with _$DriverTrip {
  const factory DriverTrip({
    @JsonKey(name: 'trip_id') required String tripId,
    @JsonKey(name: 'trip_type', unknownEnumValue: TripType.unknown) required TripType tripType,
    @JsonKey(name: 'trip_date') required DateTime tripDate,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    @JsonKey(name: 'status', unknownEnumValue: TripStatus.unknown) required TripStatus status,
    @JsonKey(name: 'student_count') int? studentCount,
    @JsonKey(name: 'start_location') String? startLocation,
    @JsonKey(name: 'end_location') String? endLocation,
    @JsonKey(name: 'routes') TripRouteRef? route,
  }) = _DriverTrip;

  factory DriverTrip.fromJson(Map<String, dynamic> json) => _$DriverTripFromJson(json);
}

/// POST /driver/alerts/arrival — verified by direct read of
/// alerts.service.js#markStopReached + its ALERT_INCLUDE. Only the fields
/// the app actually displays (a confirmation of how many parents were
/// notified) are modeled.
@freezed
abstract class StopReachedResult with _$StopReachedResult {
  const factory StopReachedResult({
    @JsonKey(name: 'alert_id') required String alertId,
    @JsonKey(name: 'recipient_count') required int recipientCount,
  }) = _StopReachedResult;

  factory StopReachedResult.fromJson(Map<String, dynamic> json) => _$StopReachedResultFromJson(json);
}
