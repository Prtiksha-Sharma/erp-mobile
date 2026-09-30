import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/datetime_extensions.dart';

part 'transport_info.freezed.dart';
part 'transport_info.g.dart';

@freezed
abstract class TransportRoute with _$TransportRoute {
  const factory TransportRoute({
    @JsonKey(name: 'route_id') required String routeId,
    @JsonKey(name: 'route_name') required String routeName,
  }) = _TransportRoute;

  factory TransportRoute.fromJson(Map<String, dynamic> json) => _$TransportRouteFromJson(json);
}

/// pickup_time/drop_time are epoch-date placeholders (@db.Time column,
/// same pattern as AttendanceRecord.checkInTime and
/// TimetableEntry.startTime/endTime) — only the time-of-day is real.
@freezed
abstract class TransportStop with _$TransportStop {
  const factory TransportStop({
    @JsonKey(name: 'stop_id') required String stopId,
    @JsonKey(name: 'stop_name') required String stopName,
    @JsonKey(name: 'pickup_time') DateTime? pickupTime,
    @JsonKey(name: 'drop_time') DateTime? dropTime,
  }) = _TransportStop;

  factory TransportStop.fromJson(Map<String, dynamic> json) => _$TransportStopFromJson(json);
}

extension TransportStopDisplay on TransportStop {
  TimeOfDay? get pickupTimeOfDay => pickupTime?.timeOfDayOnly;
  TimeOfDay? get dropTimeOfDay => dropTime?.timeOfDayOnly;
}

@freezed
abstract class TransportBus with _$TransportBus {
  const factory TransportBus({
    @JsonKey(name: 'bus_number') required String busNumber,
    int? capacity,
  }) = _TransportBus;

  factory TransportBus.fromJson(Map<String, dynamic> json) => _$TransportBusFromJson(json);
}

@freezed
abstract class TransportDriver with _$TransportDriver {
  const factory TransportDriver({
    required String name,
    String? phone,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _TransportDriver;

  factory TransportDriver.fromJson(Map<String, dynamic> json) => _$TransportDriverFromJson(json);
}

/// Matches GET /parent/children/:studentId/transport — verified live.
/// route is the only field guaranteed non-null when an assignment exists
/// (assignments.service.js#getStudentTransport accesses assignment.routes
/// without a null-check); stop/bus/driver are each independently nullable
/// (a route can exist with no bus assigned yet, etc — confirmed reading
/// the exact reshape logic, not assumed). The WHOLE payload can also be
/// null one level up (no assignment at all) — handled in
/// TransportService, not here.
@freezed
abstract class TransportInfo with _$TransportInfo {
  const factory TransportInfo({
    required TransportRoute route,
    TransportStop? stop,
    TransportBus? bus,
    TransportDriver? driver,
  }) = _TransportInfo;

  factory TransportInfo.fromJson(Map<String, dynamic> json) => _$TransportInfoFromJson(json);
}
