import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grievance_ticket.freezed.dart';
part 'grievance_ticket.g.dart';

/// Schema-derived (grievance_tickets.category is plain VarChar, no DB
/// enum) — this is the app's own validation list, matching
/// parent/grievances.service.js#GRIEVANCE_CATEGORIES exactly (the single
/// source of truth per that file's own comment). Not live-verified this
/// session (auth token expired mid-session, no password available to
/// re-login) — confirmed instead against the unchanged service source and
/// the full Prisma schema (grievance_tickets/grievance_responses), which
/// together give high confidence without a live example.
const grievanceCategories = ['Academic', 'Facilities', 'Transport', 'Fees', 'Behaviour', 'Other'];
const grievancePriorities = ['LOW', 'NORMAL', 'HIGH'];

/// Only OPEN and IN_PROGRESS are explicitly named anywhere in source
/// (OPEN_STATUSES, used to gate replying) — the full closed/terminal
/// vocabulary isn't enumerated in a constant the way categories/priorities
/// are. Deliberately NOT modeled as a strict enum with unknownEnumValue —
/// that would imply a confidence in the complete value set this app
/// doesn't have. label()/color() below give correct, confirmed treatment
/// for the two known-open statuses plus reasonable (not guaranteed)
/// generic formatting for anything else.
String grievanceStatusLabel(String status) {
  return status
      .split('_')
      .map((w) => w.isEmpty ? w : '${w[0]}${w.substring(1).toLowerCase()}')
      .join(' ');
}

Color grievanceStatusColor(String status) => switch (status.toUpperCase()) {
      'OPEN' => const Color(0xFFD97706),
      'IN_PROGRESS' => const Color(0xFF2563EB),
      'RESOLVED' => const Color(0xFF16A34A),
      'CLOSED' => const Color(0xFF64748B),
      'REJECTED' => const Color(0xFFDC2626),
      _ => const Color(0xFF64748B),
    };

/// Confirmed via OPEN_STATUSES in grievances.service.js#addMyResponse —
/// the backend itself rejects a reply once status leaves this set. This
/// mirrors that check client-side for UX only; the backend remains the
/// actual enforcement (a 409 still comes back if this client check is
/// ever stale).
bool grievanceCanReply(String status) => status == 'OPEN' || status == 'IN_PROGRESS';

@freezed
abstract class GrievanceApplicantRef with _$GrievanceApplicantRef {
  const factory GrievanceApplicantRef({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
  }) = _GrievanceApplicantRef;

  factory GrievanceApplicantRef.fromJson(Map<String, dynamic> json) =>
      _$GrievanceApplicantRefFromJson(json);
}

@freezed
abstract class GrievanceStudentRef with _$GrievanceStudentRef {
  const factory GrievanceStudentRef({
    @JsonKey(name: 'student_id') required String studentId,
    required GrievanceApplicantRef applicants,
  }) = _GrievanceStudentRef;

  factory GrievanceStudentRef.fromJson(Map<String, dynamic> json) => _$GrievanceStudentRefFromJson(json);
}

extension GrievanceStudentRefDisplay on GrievanceStudentRef {
  String get displayName {
    final parts = [applicants.firstName, applicants.lastName]
        .where((s) => s != null && s.isNotEmpty);
    return parts.isEmpty ? 'Student' : parts.join(' ');
  }
}

@freezed
abstract class GrievanceStaffRef with _$GrievanceStaffRef {
  const factory GrievanceStaffRef({
    @JsonKey(name: 'full_name') required String fullName,
  }) = _GrievanceStaffRef;

  factory GrievanceStaffRef.fromJson(Map<String, dynamic> json) => _$GrievanceStaffRefFromJson(json);
}

@freezed
abstract class GrievanceResponse with _$GrievanceResponse {
  const factory GrievanceResponse({
    @JsonKey(name: 'response_id') required String responseId,
    @JsonKey(name: 'responder_role') required String responderRole, // 'PARENT' | 'ADMIN'
    required String body,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _GrievanceResponse;

  factory GrievanceResponse.fromJson(Map<String, dynamic> json) => _$GrievanceResponseFromJson(json);
}

/// Matches GET /parent/grievances, GET /parent/grievances/:ticketId, and
/// POST /parent/grievances (the created ticket) — same TICKET_INCLUDE
/// shape for all three per the service source. `responses` is only ever
/// present on the single-ticket detail response (getMyGrievance) — absent
/// entirely on the list response, which json_serializable's generated
/// fromJson treats identically to an explicit null (a missing map key
/// returns null via Dart's `[]` operator), so no default-value trick is
/// needed for that distinction.
@freezed
abstract class GrievanceTicket with _$GrievanceTicket {
  const factory GrievanceTicket({
    @JsonKey(name: 'ticket_id') required String ticketId,
    String? category,
    required String subject,
    required String description,
    required String status,
    String? priority,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    GrievanceStudentRef? students,
    @JsonKey(name: 'staff_accounts') GrievanceStaffRef? staffAccounts,
    @JsonKey(name: 'grievance_responses') List<GrievanceResponse>? responses,
  }) = _GrievanceTicket;

  factory GrievanceTicket.fromJson(Map<String, dynamic> json) => _$GrievanceTicketFromJson(json);
}
