import 'package:freezed_annotation/freezed_annotation.dart';

import 'student_brief.dart';

part 'admin_school_life_events.freezed.dart';
part 'admin_school_life_events.g.dart';

// School Admin → Events and Activities (web features/events,
// features/activities).

/// One row of GET /admin/events — admin/events/events.service.js
/// #listEvents. The Prisma model `events` maps onto the
/// `school_admin.activities` table, but the API returns the model's own
/// names (event_id/event_name/event_date). `approval_status` is flattened
/// server-side from `event_approval` (APPROVED, else PENDING) — kept a
/// String so a future value can't crash.
@freezed
abstract class AdminSchoolEvent with _$AdminSchoolEvent {
  const factory AdminSchoolEvent({
    @JsonKey(name: 'event_id') required String eventId,
    @JsonKey(name: 'event_name') required String eventName,
    String? description,
    // @db.Date — UTC midnight.
    @JsonKey(name: 'event_date') DateTime? eventDate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'approval_status') @Default('PENDING') String approvalStatus,
  }) = _AdminSchoolEvent;

  factory AdminSchoolEvent.fromJson(Map<String, dynamic> json) => _$AdminSchoolEventFromJson(json);
}

/// `{ total, page, limit, data }` of GET /admin/events (limit capped at 100).
@freezed
abstract class AdminSchoolEventPage with _$AdminSchoolEventPage {
  const factory AdminSchoolEventPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<AdminSchoolEvent>[]) List<AdminSchoolEvent> data,
  }) = _AdminSchoolEventPage;

  factory AdminSchoolEventPage.fromJson(Map<String, dynamic> json) => _$AdminSchoolEventPageFromJson(json);
}

/// One row of GET /admin/activities — admin/activities/activities.service.js
/// #listActivities (raw `staff.school_activities` row with `_count`
/// flattened into `participant_count`). `target_audience` is STUDENTS |
/// STAFF | BOTH (validated server-side).
@freezed
abstract class AdminSchoolActivity with _$AdminSchoolActivity {
  const factory AdminSchoolActivity({
    @JsonKey(name: 'activity_id') required String activityId,
    @JsonKey(name: 'activity_name') required String activityName,
    String? description,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'target_audience') @Default('BOTH') String targetAudience,
    // @db.Date — UTC midnight.
    @JsonKey(name: 'activity_date') DateTime? activityDate,
    String? venue,
    @JsonKey(name: 'participant_count') @Default(0) int participantCount,
  }) = _AdminSchoolActivity;

  factory AdminSchoolActivity.fromJson(Map<String, dynamic> json) => _$AdminSchoolActivityFromJson(json);
}

@freezed
abstract class AdminSchoolActivityPage with _$AdminSchoolActivityPage {
  const factory AdminSchoolActivityPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<AdminSchoolActivity>[]) List<AdminSchoolActivity> data,
  }) = _AdminSchoolActivityPage;

  factory AdminSchoolActivityPage.fromJson(Map<String, dynamic> json) => _$AdminSchoolActivityPageFromJson(json);
}

/// `staff { staff_id, employee_code, full_name }` of a participant row.
@freezed
abstract class ParticipantStaffRef with _$ParticipantStaffRef {
  const factory ParticipantStaffRef({
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'full_name') String? fullName,
  }) = _ParticipantStaffRef;

  factory ParticipantStaffRef.fromJson(Map<String, dynamic> json) => _$ParticipantStaffRefFromJson(json);
}

/// GET /admin/activities/:id/participants — activities.service.js
/// PARTICIPANT_SELECT (`participant_id, participant_type, result, remarks,
/// created_at, student { student_id, admission_no, applicants { first_name,
/// last_name } }, staff { staff_id, employee_code, full_name }`).
/// `participant_type` is STUDENT | STAFF.
@freezed
abstract class ActivityParticipant with _$ActivityParticipant {
  const factory ActivityParticipant({
    @JsonKey(name: 'participant_id') required String participantId,
    @JsonKey(name: 'participant_type') required String participantType,
    String? result,
    String? remarks,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    StudentBrief? student,
    ParticipantStaffRef? staff,
  }) = _ActivityParticipant;

  factory ActivityParticipant.fromJson(Map<String, dynamic> json) => _$ActivityParticipantFromJson(json);
}

extension ActivityParticipantDisplay on ActivityParticipant {
  bool get isStudent => participantType == 'STUDENT';

  /// The web's participantName(): a student's `first last` (falling back
  /// to the admission number), else the staff member's full name.
  String get displayName {
    if (isStudent) {
      final name = [student?.applicant?.firstName, student?.applicant?.lastName]
          .whereType<String>()
          .where((s) => s.trim().isNotEmpty)
          .join(' ');
      return name.isNotEmpty ? name : (student?.admissionNo ?? '—');
    }
    return staff?.fullName ?? '—';
  }

  /// participantCode(): admission no. or employee code.
  String? get code => isStudent ? student?.admissionNo : staff?.employeeCode;
}

/// POST /admin/activities/:id/participants — activities.service.js
/// #addParticipants: already-registered ids are skipped, not an error.
@freezed
abstract class AddParticipantsResult with _$AddParticipantsResult {
  const factory AddParticipantsResult({
    @Default(0) int added,
    @JsonKey(name: 'skipped_students') @Default(<String>[]) List<String> skippedStudents,
    @JsonKey(name: 'skipped_staff') @Default(<String>[]) List<String> skippedStaff,
  }) = _AddParticipantsResult;

  factory AddParticipantsResult.fromJson(Map<String, dynamic> json) => _$AddParticipantsResultFromJson(json);
}
