// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventItem _$EventItemFromJson(Map<String, dynamic> json) => _EventItem(
  eventId: json['event_id'] as String,
  eventName: json['event_name'] as String,
  description: json['description'] as String?,
  eventDate: DateTime.parse(json['event_date'] as String),
);

Map<String, dynamic> _$EventItemToJson(_EventItem instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'event_name': instance.eventName,
      'description': instance.description,
      'event_date': instance.eventDate.toIso8601String(),
    };
