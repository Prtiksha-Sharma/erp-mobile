import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'student_brief.dart';

part 'admin_management_reports.freezed.dart';
part 'admin_management_reports.g.dart';

/// School Admin student reports (web features/reports) — every shape here is
/// read from backend admin/student/reports.service.js (and
/// leaves.service.js#listLeaves / student.service.js#getStudentProfile for
/// the Leave and Student Profile reports).
///
/// `/reports/status` and `/reports/gender` are plain `{ key: count }` maps
/// (getStatusSummary / getGenderReport) — parsed straight into a
/// `Map<String, int>` by the service, so they have no model here.

/// GET /admin/students/reports/strength — getStrengthReport: one row per
/// `current_class_id` group. `class_id` is null for the "Unassigned" bucket.
@freezed
abstract class ClassStrengthRow with _$ClassStrengthRow {
  const factory ClassStrengthRow({
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'class_name') required String className,
    @Default(0) int total,
  }) = _ClassStrengthRow;

  factory ClassStrengthRow.fromJson(Map<String, dynamic> json) => _$ClassStrengthRowFromJson(json);
}

/// GET /admin/students/reports/promotion — getPromotionReport, already
/// flattened server-side into `student` / `from` / `to` objects.
@freezed
abstract class PromotionReportRow with _$PromotionReportRow {
  const factory PromotionReportRow({
    @JsonKey(name: 'promotion_id') required String promotionId,
    @JsonKey(name: 'promotion_status') String? promotionStatus,
    @JsonKey(name: 'promoted_at') DateTime? promotedAt,
    String? remarks,
    PromotionReportStudent? student,
    PromotionReportPlacement? from,
    PromotionReportPlacement? to,
    @JsonKey(name: 'promoted_by') String? promotedBy,
  }) = _PromotionReportRow;

  factory PromotionReportRow.fromJson(Map<String, dynamic> json) => _$PromotionReportRowFromJson(json);
}

@freezed
abstract class PromotionReportStudent with _$PromotionReportStudent {
  const factory PromotionReportStudent({
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    String? name,
  }) = _PromotionReportStudent;

  factory PromotionReportStudent.fromJson(Map<String, dynamic> json) => _$PromotionReportStudentFromJson(json);
}

/// `{ session, class, section }` — plain names, not relations.
@freezed
abstract class PromotionReportPlacement with _$PromotionReportPlacement {
  const factory PromotionReportPlacement({
    String? session,
    @JsonKey(name: 'class') String? className,
    String? section,
  }) = _PromotionReportPlacement;

  factory PromotionReportPlacement.fromJson(Map<String, dynamic> json) => _$PromotionReportPlacementFromJson(json);
}

/// GET /admin/students/reports/birthday?month=&day=&page=&limit= —
/// getBirthdays (`$queryRaw`: ACTIVE students only, ordered by day then
/// first name). No `total` is returned, so paging is "a full page means
/// there may be a next one" — same as the web.
@freezed
abstract class BirthdayReportPage with _$BirthdayReportPage {
  const factory BirthdayReportPage({
    required int month,
    int? day,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<BirthdayReportRow>[]) List<BirthdayReportRow> data,
  }) = _BirthdayReportPage;

  factory BirthdayReportPage.fromJson(Map<String, dynamic> json) => _$BirthdayReportPageFromJson(json);
}

@freezed
abstract class BirthdayReportRow with _$BirthdayReportRow {
  const factory BirthdayReportRow({
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    DateTime? dob,
    String? gender,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
  }) = _BirthdayReportRow;

  factory BirthdayReportRow.fromJson(Map<String, dynamic> json) => _$BirthdayReportRowFromJson(json);
}

extension BirthdayReportRowDisplay on BirthdayReportRow {
  /// First + middle + last, or null (web BirthdayReportPage fullName()).
  String? get fullName {
    final name = [firstName, middleName, lastName].whereType<String>().where((s) => s.trim().isNotEmpty).join(' ');
    return name.trim().isEmpty ? null : name.trim();
  }
}

/// GET /admin/students/reports/admission — getAdmissionReport: `{ total,
/// data }` with EVERY student of the institution (it reads only `from`/`to`;
/// `status`/`page`/`limit` are ignored server-side and no `limit` is echoed).
@freezed
abstract class AdmissionReportResult with _$AdmissionReportResult {
  const factory AdmissionReportResult({
    @Default(0) int total,
    @Default(<AdmissionReportRow>[]) List<AdmissionReportRow> data,
  }) = _AdmissionReportResult;

  factory AdmissionReportResult.fromJson(Map<String, dynamic> json) => _$AdmissionReportResultFromJson(json);
}

@freezed
abstract class AdmissionReportRow with _$AdmissionReportRow {
  const factory AdmissionReportRow({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'admission_date') DateTime? admissionDate,
    @JsonKey(name: 'student_status') String? studentStatus,
    @JsonKey(name: 'current_class') ClassRef? currentClass,
    @JsonKey(name: 'applicants') ReportApplicant? applicant,
  }) = _AdmissionReportRow;

  factory AdmissionReportRow.fromJson(Map<String, dynamic> json) => _$AdmissionReportRowFromJson(json);
}

/// The `applicants` relation as the report endpoints select it — the
/// admission report picks `{ first_name, last_name, gender }`; the profile
/// report (getStudentProfile `include: { applicants }`) returns every
/// applicant column, of which the web's Student Profile Report reads these.
@freezed
abstract class ReportApplicant with _$ReportApplicant {
  const factory ReportApplicant({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    DateTime? dob,
    @JsonKey(name: 'blood_group') String? bloodGroup,
    String? nationality,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _ReportApplicant;

  factory ReportApplicant.fromJson(Map<String, dynamic> json) => _$ReportApplicantFromJson(json);
}

extension ReportApplicantDisplay on ReportApplicant {
  /// `first last` (the admission table's name — no middle name).
  String? get shortName {
    final name = [firstName, lastName].whereType<String>().where((s) => s.trim().isNotEmpty).join(' ');
    return name.isEmpty ? null : name;
  }

  /// `first middle last` (the profile report's name).
  String? get fullName {
    final name = [firstName, middleName, lastName].whereType<String>().where((s) => s.trim().isNotEmpty).join(' ');
    return name.trim().isEmpty ? null : name.trim();
  }
}

/// GET /admin/students/leaves?status=&leave_type=&page=&limit= —
/// admin/student/leaves.service.js#listLeaves (`{ total, page, limit,
/// data }`; each row is the whole student_leaves row + `students { student_id,
/// admission_no, applicants { first_name, last_name } }`).
@freezed
abstract class LeaveReportPage with _$LeaveReportPage {
  const factory LeaveReportPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<LeaveReportRow>[]) List<LeaveReportRow> data,
  }) = _LeaveReportPage;

  factory LeaveReportPage.fromJson(Map<String, dynamic> json) => _$LeaveReportPageFromJson(json);
}

@freezed
abstract class LeaveReportRow with _$LeaveReportRow {
  const factory LeaveReportRow({
    @JsonKey(name: 'leave_id') required String leaveId,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'leave_type') String? leaveType,
    @JsonKey(name: 'from_date') DateTime? fromDate,
    @JsonKey(name: 'to_date') DateTime? toDate,
    // Decimal(5,2) — a day count, display-only.
    @JsonKey(name: 'total_days') @LooseNumConverter() num? totalDays,
    String? reason,
    String? status,
    @JsonKey(name: 'approved_at') DateTime? approvedAt,
    String? remarks,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _LeaveReportRow;

  factory LeaveReportRow.fromJson(Map<String, dynamic> json) => _$LeaveReportRowFromJson(json);
}

/// GET /admin/students/reports/profile/:studentId — student.service.js
/// #getStudentProfile (the full student row + includes); only what the
/// web's StudentProfileReportPage reads is modelled.
@freezed
abstract class StudentProfileReport with _$StudentProfileReport {
  const factory StudentProfileReport({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') required String admissionNo,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'admission_date') DateTime? admissionDate,
    @JsonKey(name: 'student_status') String? studentStatus,
    String? remarks,
    @JsonKey(name: 'current_class') ClassRef? currentClass,
    @JsonKey(name: 'current_section') SectionRef? currentSection,
    @JsonKey(name: 'institutions') InstitutionRef? institution,
    @JsonKey(name: 'applicants') ReportApplicant? applicant,
  }) = _StudentProfileReport;

  factory StudentProfileReport.fromJson(Map<String, dynamic> json) => _$StudentProfileReportFromJson(json);
}
