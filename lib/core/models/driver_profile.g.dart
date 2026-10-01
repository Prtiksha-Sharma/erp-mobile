// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteStop _$RouteStopFromJson(Map<String, dynamic> json) => _RouteStop(
  stopId: json['stop_id'] as String,
  stopName: json['stop_name'] as String,
  pickupTime: json['pickup_time'] == null
      ? null
      : DateTime.parse(json['pickup_time'] as String),
  dropTime: json['drop_time'] == null
      ? null
      : DateTime.parse(json['drop_time'] as String),
  stopOrder: (json['stop_order'] as num).toInt(),
);

Map<String, dynamic> _$RouteStopToJson(_RouteStop instance) =>
    <String, dynamic>{
      'stop_id': instance.stopId,
      'stop_name': instance.stopName,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      'drop_time': instance.dropTime?.toIso8601String(),
      'stop_order': instance.stopOrder,
    };

_DriverRoute _$DriverRouteFromJson(Map<String, dynamic> json) => _DriverRoute(
  routeId: json['route_id'] as String,
  routeName: json['route_name'] as String,
  isActive: json['is_active'] as bool,
  stops: (json['route_stops'] as List<dynamic>)
      .map((e) => RouteStop.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DriverRouteToJson(_DriverRoute instance) =>
    <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
      'is_active': instance.isActive,
      'route_stops': instance.stops,
    };

_DriverBus _$DriverBusFromJson(Map<String, dynamic> json) => _DriverBus(
  busId: json['bus_id'] as String,
  busNumber: json['bus_number'] as String,
  capacity: (json['capacity'] as num).toInt(),
  routes: (json['routes'] as List<dynamic>)
      .map((e) => DriverRoute.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DriverBusToJson(_DriverBus instance) =>
    <String, dynamic>{
      'bus_id': instance.busId,
      'bus_number': instance.busNumber,
      'capacity': instance.capacity,
      'routes': instance.routes,
    };

_DriverProfile _$DriverProfileFromJson(Map<String, dynamic> json) =>
    _DriverProfile(
      driverId: json['driver_id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      licenseNumber: json['license_number'] as String,
      licenseExpiryDate: DateTime.parse(json['license_expiry_date'] as String),
      employmentStatus: json['employment_status'] as String,
      bus: json['buses'] == null
          ? null
          : DriverBus.fromJson(json['buses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DriverProfileToJson(_DriverProfile instance) =>
    <String, dynamic>{
      'driver_id': instance.driverId,
      'name': instance.name,
      'phone': instance.phone,
      'license_number': instance.licenseNumber,
      'license_expiry_date': instance.licenseExpiryDate.toIso8601String(),
      'employment_status': instance.employmentStatus,
      'buses': instance.bus,
    };

_TripRouteRef _$TripRouteRefFromJson(Map<String, dynamic> json) =>
    _TripRouteRef(
      routeId: json['route_id'] as String,
      routeName: json['route_name'] as String,
    );

Map<String, dynamic> _$TripRouteRefToJson(_TripRouteRef instance) =>
    <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
    };

_DriverTrip _$DriverTripFromJson(Map<String, dynamic> json) => _DriverTrip(
  tripId: json['trip_id'] as String,
  tripType: $enumDecode(
    _$TripTypeEnumMap,
    json['trip_type'],
    unknownValue: TripType.unknown,
  ),
  tripDate: DateTime.parse(json['trip_date'] as String),
  startTime: json['start_time'] == null
      ? null
      : DateTime.parse(json['start_time'] as String),
  endTime: json['end_time'] == null
      ? null
      : DateTime.parse(json['end_time'] as String),
  status: $enumDecode(
    _$TripStatusEnumMap,
    json['status'],
    unknownValue: TripStatus.unknown,
  ),
  studentCount: (json['student_count'] as num?)?.toInt(),
  startLocation: json['start_location'] as String?,
  endLocation: json['end_location'] as String?,
  route: json['routes'] == null
      ? null
      : TripRouteRef.fromJson(json['routes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DriverTripToJson(_DriverTrip instance) =>
    <String, dynamic>{
      'trip_id': instance.tripId,
      'trip_type': _$TripTypeEnumMap[instance.tripType]!,
      'trip_date': instance.tripDate.toIso8601String(),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'status': _$TripStatusEnumMap[instance.status]!,
      'student_count': instance.studentCount,
      'start_location': instance.startLocation,
      'end_location': instance.endLocation,
      'routes': instance.route,
    };

const _$TripTypeEnumMap = {
  TripType.pickup: 'PICKUP',
  TripType.drop: 'DROP',
  TripType.unknown: 'unknown',
};

const _$TripStatusEnumMap = {
  TripStatus.ongoing: 'ONGOING',
  TripStatus.completed: 'COMPLETED',
  TripStatus.cancelled: 'CANCELLED',
  TripStatus.unknown: 'unknown',
};

_StopReachedResult _$StopReachedResultFromJson(Map<String, dynamic> json) =>
    _StopReachedResult(
      alertId: json['alert_id'] as String,
      recipientCount: (json['recipient_count'] as num).toInt(),
    );

Map<String, dynamic> _$StopReachedResultToJson(_StopReachedResult instance) =>
    <String, dynamic>{
      'alert_id': instance.alertId,
      'recipient_count': instance.recipientCount,
    };
