import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_item.freezed.dart';
part 'event_item.g.dart';

/// GET /parent/events — verified live. Institution-wide, not child-scoped.
/// Real live data includes events with description/date typos from seed
/// data (e.g. event_date in 2016) — not sanitized, rendered as-is.
@freezed
abstract class EventItem with _$EventItem {
  const factory EventItem({
    @JsonKey(name: 'event_id') required String eventId,
    @JsonKey(name: 'event_name') required String eventName,
    String? description,
    @JsonKey(name: 'event_date') required DateTime eventDate,
  }) = _EventItem;

  factory EventItem.fromJson(Map<String, dynamic> json) => _$EventItemFromJson(json);
}
