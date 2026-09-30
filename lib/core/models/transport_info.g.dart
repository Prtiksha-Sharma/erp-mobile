// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransportRoute _$TransportRouteFromJson(Map<String, dynamic> json) =>
    _TransportRoute(
      routeId: json['route_id'] as String,
      routeName: json['route_name'] as String,
    );

Map<String, dynamic> _$TransportRouteToJson(_TransportRoute instance) =>
    <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
    };

_TransportStop _$TransportStopFromJson(Map<String, dynamic> json) =>
    _TransportStop(
      stopId: json['stop_id'] as String,
      stopName: json['stop_name'] as String,
      pickupTime: json['pickup_time'] == null
          ? null
          : DateTime.parse(json['pickup_time'] as String),
      dropTime: json['drop_time'] == null
          ? null
          : DateTime.parse(json['drop_time'] as String),
    );

Map<String, dynamic> _$TransportStopToJson(_TransportStop instance) =>
    <String, dynamic>{
      'stop_id': instance.stopId,
      'stop_name': instance.stopName,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      'drop_time': instance.dropTime?.toIso8601String(),
    };

_TransportBus _$TransportBusFromJson(Map<String, dynamic> json) =>
    _TransportBus(
      busNumber: json['bus_number'] as String,
      capacity: (json['capacity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TransportBusToJson(_TransportBus instance) =>
    <String, dynamic>{
      'bus_number': instance.busNumber,
      'capacity': instance.capacity,
    };

_TransportDriver _$TransportDriverFromJson(Map<String, dynamic> json) =>
    _TransportDriver(
      name: json['name'] as String,
      phone: json['phone'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$TransportDriverToJson(_TransportDriver instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'photo_url': instance.photoUrl,
    };

_TransportInfo _$TransportInfoFromJson(Map<String, dynamic> json) =>
    _TransportInfo(
      route: TransportRoute.fromJson(json['route'] as Map<String, dynamic>),
      stop: json['stop'] == null
          ? null
          : TransportStop.fromJson(json['stop'] as Map<String, dynamic>),
      bus: json['bus'] == null
          ? null
          : TransportBus.fromJson(json['bus'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : TransportDriver.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransportInfoToJson(_TransportInfo instance) =>
    <String, dynamic>{
      'route': instance.route,
      'stop': instance.stop,
      'bus': instance.bus,
      'driver': instance.driver,
    };
