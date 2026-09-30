// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CalendarEntry _$CalendarEntryFromJson(Map<String, dynamic> json) =>
    _CalendarEntry(
      calendarId: json['calendar_id'] as String,
      eventTitle: json['event_title'] as String?,
      eventDescription: json['event_description'] as String?,
      eventDate: json['event_date'] == null
          ? null
          : DateTime.parse(json['event_date'] as String),
    );

Map<String, dynamic> _$CalendarEntryToJson(_CalendarEntry instance) =>
    <String, dynamic>{
      'calendar_id': instance.calendarId,
      'event_title': instance.eventTitle,
      'event_description': instance.eventDescription,
      'event_date': instance.eventDate?.toIso8601String(),
    };
