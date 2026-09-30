import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'student_brief.dart';

part 'student_records.freezed.dart';
part 'student_records.g.dart';

/// Read-only record lists the student portal shows as-is. Status/severity
/// fields stay plain Strings (mapped to a BadgeVariant in the screen, same
/// as the web's `*_VARIANT` tables) so a new backend value renders instead
/// of failing to parse.

/// GET /student/documents — admin/student/documents.service.js via
/// serializeDoc (file_size is a plain number here, BigInt already converted).
@freezed
abstract class StudentDocument with _$StudentDocument {
  const factory StudentDocument({
    @JsonKey(name: 'document_id') required String documentId,
    @JsonKey(name: 'document_name') required String documentName,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'file_size') @LooseNumConverter() num? fileSize,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    @JsonKey(name: 'uploaded_at') DateTime? uploadedAt,
  }) = _StudentDocument;

  factory StudentDocument.fromJson(Map<String, dynamic> json) => _$StudentDocumentFromJson(json);
}

/// GET /student/leaves — admin/student/leaves.service.js. `total_days` is a
/// Prisma Decimal (JSON string, e.g. "3").
///
/// Also GET /teacher/leaves (teacher/leaves.service.js#listMyClassLeaves) —
/// the same student_leaves row plus a `students` include, which is null on
/// the student's own endpoint.
@freezed
abstract class StudentLeave with _$StudentLeave {
  const factory StudentLeave({
    @JsonKey(name: 'leave_id') required String leaveId,
    @JsonKey(name: 'leave_type') required String leaveType,
    @JsonKey(name: 'from_date') required DateTime fromDate,
    @JsonKey(name: 'to_date') required DateTime toDate,
    @JsonKey(name: 'total_days') @LooseNumConverter() num? totalDays,
    String? reason,
    String? status,
    String? remarks,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _StudentLeave;

  factory StudentLeave.fromJson(Map<String, dynamic> json) => _$StudentLeaveFromJson(json);
}

/// GET /student/medical — admin/student/medical.service.js. The whole
/// payload is `null` when nothing has been recorded (handled in the service).
@freezed
abstract class MedicalInfo with _$MedicalInfo {
  const factory MedicalInfo({
    @JsonKey(name: 'blood_group') String? bloodGroup,
    @JsonKey(name: 'height_cm') @LooseStringConverter() String? heightCm,
    @JsonKey(name: 'weight_kg') @LooseStringConverter() String? weightKg,
    String? allergies,
    @JsonKey(name: 'medical_conditions') String? medicalConditions,
    @JsonKey(name: 'doctor_name') String? doctorName,
    @JsonKey(name: 'doctor_contact') String? doctorContact,
    String? remarks,
  }) = _MedicalInfo;

  factory MedicalInfo.fromJson(Map<String, dynamic> json) => _$MedicalInfoFromJson(json);
}

/// GET /student/discipline — admin/student/discipline.service.js.
@freezed
abstract class DisciplineRecord with _$DisciplineRecord {
  const factory DisciplineRecord({
    @JsonKey(name: 'discipline_id') required String disciplineId,
    @JsonKey(name: 'incident_date') DateTime? incidentDate,
    @JsonKey(name: 'incident_type') required String incidentType,
    String? description,
    String? severity,
    @JsonKey(name: 'action_taken') String? actionTaken,
    String? status,
    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,
    String? remarks,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
  }) = _DisciplineRecord;

  factory DisciplineRecord.fromJson(Map<String, dynamic> json) => _$DisciplineRecordFromJson(json);
}

/// GET /student/promotion/history — admin/student/promotion.service.js.
@freezed
abstract class PromotionRecord with _$PromotionRecord {
  const factory PromotionRecord({
    @JsonKey(name: 'promotion_id') required String promotionId,
    @JsonKey(name: 'promotion_status') String? promotionStatus,
    @JsonKey(name: 'promoted_at') DateTime? promotedAt,
    String? remarks,
    @JsonKey(name: 'from_session') SessionRef? fromSession,
    @JsonKey(name: 'to_session') SessionRef? toSession,
    @JsonKey(name: 'from_class') ClassRef? fromClass,
    @JsonKey(name: 'to_class') ClassRef? toClass,
    @JsonKey(name: 'from_section') SectionRef? fromSection,
    @JsonKey(name: 'to_section') SectionRef? toSection,
    @JsonKey(name: 'promoted_by_user') PromotedByRef? promotedBy,
  }) = _PromotionRecord;

  factory PromotionRecord.fromJson(Map<String, dynamic> json) => _$PromotionRecordFromJson(json);
}

@freezed
abstract class PromotedByRef with _$PromotedByRef {
  const factory PromotedByRef({String? username}) = _PromotedByRef;

  factory PromotedByRef.fromJson(Map<String, dynamic> json) => _$PromotedByRefFromJson(json);
}

/// GET /student/transport — transport/assignments.service.js
/// (getStudentTransport). The whole payload is `null` when the student has
/// no route assignment (handled in the service).
@freezed
abstract class TransportAssignment with _$TransportAssignment {
  const factory TransportAssignment({
    required TransportRoute route,
    TransportStop? stop,
    TransportBus? bus,
    TransportDriver? driver,
  }) = _TransportAssignment;

  factory TransportAssignment.fromJson(Map<String, dynamic> json) => _$TransportAssignmentFromJson(json);
}

@freezed
abstract class TransportRoute with _$TransportRoute {
  const factory TransportRoute({@JsonKey(name: 'route_name') required String routeName}) = _TransportRoute;

  factory TransportRoute.fromJson(Map<String, dynamic> json) => _$TransportRouteFromJson(json);
}

@freezed
abstract class TransportStop with _$TransportStop {
  const factory TransportStop({
    @JsonKey(name: 'stop_name') String? stopName,
    // @db.Time — epoch-anchored; read with formatClockTime().
    @JsonKey(name: 'pickup_time') DateTime? pickupTime,
    @JsonKey(name: 'drop_time') DateTime? dropTime,
  }) = _TransportStop;

  factory TransportStop.fromJson(Map<String, dynamic> json) => _$TransportStopFromJson(json);
}

@freezed
abstract class TransportBus with _$TransportBus {
  const factory TransportBus({@JsonKey(name: 'bus_number') String? busNumber}) = _TransportBus;

  factory TransportBus.fromJson(Map<String, dynamic> json) => _$TransportBusFromJson(json);
}

@freezed
abstract class TransportDriver with _$TransportDriver {
  const factory TransportDriver({
    String? name,
    String? phone,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _TransportDriver;

  factory TransportDriver.fromJson(Map<String, dynamic> json) => _$TransportDriverFromJson(json);
}
