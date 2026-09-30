import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_item.freezed.dart';
part 'activity_item.g.dart';

/// GET /parent/activities — institution-wide feed, verified live.
/// description/activity_type/venue/activity_date are all genuinely
/// nullable in real data (confirmed — several live records have each of
/// these null). target_audience is a free-text-looking field ("BOTH",
/// "STUDENTS" seen live) with no confirmed enum source, so modeled as a
/// plain nullable String rather than guessing at an exhaustive value set.
@freezed
abstract class ActivityItem with _$ActivityItem {
  const factory ActivityItem({
    @JsonKey(name: 'activity_id') required String activityId,
    @JsonKey(name: 'activity_name') required String activityName,
    String? description,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'target_audience') String? targetAudience,
    @JsonKey(name: 'activity_date') DateTime? activityDate,
    String? venue,
  }) = _ActivityItem;

  factory ActivityItem.fromJson(Map<String, dynamic> json) => _$ActivityItemFromJson(json);
}

/// The nested `activity` shape inside a participation record is a leaner
/// subset of ActivityItem (no target_audience) — a genuinely different
/// shape from a different endpoint, same reasoning as every other
/// two-endpoints-two-models split in this app (TeacherRef/TeacherNameRef,
/// TeacherSummary/TeacherProfile).
@freezed
abstract class ActivityParticipationInfo with _$ActivityParticipationInfo {
  const factory ActivityParticipationInfo({
    @JsonKey(name: 'activity_id') required String activityId,
    @JsonKey(name: 'activity_name') required String activityName,
    String? description,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'activity_date') DateTime? activityDate,
    String? venue,
  }) = _ActivityParticipationInfo;

  factory ActivityParticipationInfo.fromJson(Map<String, dynamic> json) =>
      _$ActivityParticipationInfoFromJson(json);
}

/// GET /parent/children/:studentId/activities — child-scoped, verified
/// live. result/remarks both genuinely null in live data (no teacher has
/// recorded an outcome yet) — must render sensibly, not assume populated.
@freezed
abstract class ActivityParticipation with _$ActivityParticipation {
  const factory ActivityParticipation({
    @JsonKey(name: 'participant_id') required String participantId,
    String? result,
    String? remarks,
    required ActivityParticipationInfo activity,
  }) = _ActivityParticipation;

  factory ActivityParticipation.fromJson(Map<String, dynamic> json) =>
      _$ActivityParticipationFromJson(json);
}
