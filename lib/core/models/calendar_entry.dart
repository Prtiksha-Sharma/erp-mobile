import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_entry.freezed.dart';
part 'calendar_entry.g.dart';

/// GET /parent/calendar — the live account used for verification returns
/// a genuinely empty array (no calendar entries set up for that
/// institution yet), so this model is built from the Prisma schema
/// (academic_calendar, prisma/schema.prisma:1531) rather than a live
/// example. Every field there is nullable at the DB level — modeled as
/// such here rather than assumed required, since there's no live data to
/// contradict that.
@freezed
abstract class CalendarEntry with _$CalendarEntry {
  const factory CalendarEntry({
    @JsonKey(name: 'calendar_id') required String calendarId,
    @JsonKey(name: 'event_title') String? eventTitle,
    @JsonKey(name: 'event_description') String? eventDescription,
    @JsonKey(name: 'event_date') DateTime? eventDate,
  }) = _CalendarEntry;

  factory CalendarEntry.fromJson(Map<String, dynamic> json) => _$CalendarEntryFromJson(json);
}
