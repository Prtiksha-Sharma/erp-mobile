import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'staff_profile.dart';
import 'subject_ref.dart';

part 'admin_staff.freezed.dart';
part 'admin_staff.g.dart';

/// One School-Admin-side staff record — GET /admin/staff (list rows) and
/// GET/PATCH /admin/staff/:staffId (detail). Both go through
/// admin/staff/staff.service.js#serializeStaff, which flattens the `users`
/// relation (user_id, username, email, mobile_no, account_status, roles)
/// onto the row. The list uses STAFF_LIST_SELECT; the detail adds
/// STAFF_DETAIL_SELECT's personal/employment fields, the reporting tree,
/// class-teacher/subject assignments and the staff_payroll_profile bank/
/// statutory columns — so every detail-only field here is nullable.
///
/// `user_id` (users.user_id) is the id every account-lifecycle call takes;
/// `staff_id` is the id for every profile/document/qualification call.
/// `mobile_no` is already `contact_number ?? users.mobile_no` server-side.
@freezed
abstract class StaffMember with _$StaffMember {
  const factory StaffMember({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'employee_code') String? employeeCode,
    @JsonKey(name: 'full_name') required String fullName,
    String? designation,
    String? department,
    @JsonKey(name: 'employee_type') String? employeeType,
    @JsonKey(name: 'date_of_joining') DateTime? dateOfJoining,
    @JsonKey(name: 'employment_status') String? employmentStatus,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? username,
    String? email,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    @JsonKey(name: 'account_status') String? accountStatus,
    @Default(<String>[]) List<String> roles,
    StaffBranchRef? branch,
    // ── Detail-only (STAFF_DETAIL_SELECT) ──
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    String? gender,
    String? address,
    String? qualification,
    @JsonKey(name: 'confirmation_date') DateTime? confirmationDate,
    @JsonKey(name: 'work_location') String? workLocation,
    @JsonKey(name: 'reports_to') StaffManagerRef? reportsTo,
    @JsonKey(name: 'direct_reports') @Default(<StaffManagerRef>[]) List<StaffManagerRef> directReports,
    @JsonKey(name: 'class_teacher_assignments')
    @Default(<ClassTeacherAssignment>[])
    List<ClassTeacherAssignment> classTeacherAssignments,
    @JsonKey(name: 'academic_subject_teachers')
    @Default(<SubjectTeachingAssignment>[])
    List<SubjectTeachingAssignment> subjectAssignments,
    // staff_payroll_profile — Decimal(4,1), display-only.
    @JsonKey(name: 'total_experience_years') @LooseStringConverter() String? totalExperienceYears,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'account_holder_name') String? accountHolderName,
    @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
    @JsonKey(name: 'ifsc_code') String? ifscCode,
    // Bank branch (staff_payroll_profile.branch_name), not the school branch.
    @JsonKey(name: 'branch_name') String? bankBranchName,
    @JsonKey(name: 'pan_number') String? panNumber,
    @JsonKey(name: 'aadhaar_number') String? aadhaarNumber,
    @JsonKey(name: 'pf_uan_number') String? pfUanNumber,
    @JsonKey(name: 'esi_number') String? esiNumber,
    @JsonKey(name: 'pf_applicable') bool? pfApplicable,
    @JsonKey(name: 'esi_applicable') bool? esiApplicable,
  }) = _StaffMember;

  factory StaffMember.fromJson(Map<String, dynamic> json) => _$StaffMemberFromJson(json);
}

/// `class_teacher_assignments` on the staff detail select.
@freezed
abstract class ClassTeacherAssignment with _$ClassTeacherAssignment {
  const factory ClassTeacherAssignment({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    ClassRef? classes,
    SectionRef? sections,
  }) = _ClassTeacherAssignment;

  factory ClassTeacherAssignment.fromJson(Map<String, dynamic> json) => _$ClassTeacherAssignmentFromJson(json);
}

/// `academic_subject_teachers` on the staff detail select.
@freezed
abstract class SubjectTeachingAssignment with _$SubjectTeachingAssignment {
  const factory SubjectTeachingAssignment({
    @JsonKey(name: 'subject_teacher_id') required String subjectTeacherId,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
    ClassRef? classes,
    SectionRef? sections,
  }) = _SubjectTeachingAssignment;

  factory SubjectTeachingAssignment.fromJson(Map<String, dynamic> json) => _$SubjectTeachingAssignmentFromJson(json);
}

/// GET /admin/staff — `{ total, page, limit, data }` (staff.service.js#listStaff).
@freezed
abstract class StaffPage with _$StaffPage {
  const factory StaffPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<StaffMember>[]) List<StaffMember> data,
  }) = _StaffPage;

  factory StaffPage.fromJson(Map<String, dynamic> json) => _$StaffPageFromJson(json);
}

/// GET /admin/staff/summary (staff.service.js#getStaffSummary). Role
/// counts are per-role memberships, so they can sum past [total].
@freezed
abstract class StaffSummary with _$StaffSummary {
  const factory StaffSummary({
    @Default(0) int total,
    @Default(0) int unassigned,
    @Default(<StaffRoleCount>[]) List<StaffRoleCount> roles,
  }) = _StaffSummary;

  factory StaffSummary.fromJson(Map<String, dynamic> json) => _$StaffSummaryFromJson(json);
}

@freezed
abstract class StaffRoleCount with _$StaffRoleCount {
  const factory StaffRoleCount({
    @JsonKey(name: 'role_name') required String roleName,
    @Default(0) int count,
  }) = _StaffRoleCount;

  factory StaffRoleCount.fromJson(Map<String, dynamic> json) => _$StaffRoleCountFromJson(json);
}

/// POST /admin/staff — staff.service.js#createStaffAccount's return. The
/// generated [password] is shown once and never again.
@freezed
abstract class StaffCredentials with _$StaffCredentials {
  const factory StaffCredentials({
    @JsonKey(name: 'staff_id') String? staffId,
    required String username,
    required String password,
    @JsonKey(name: 'full_name') required String fullName,
  }) = _StaffCredentials;

  factory StaffCredentials.fromJson(Map<String, dynamic> json) => _$StaffCredentialsFromJson(json);
}

/// staff.staff_documents rows — GET /admin/staff/:staffId/documents returns
/// the full row (staff.service.js#listStaffDocuments, no `select`); the
/// upload/verify/reject routes return the same row (documents.service.js).
/// `file_size` is a BigInt and not shown anywhere, so it isn't modelled.
@freezed
abstract class StaffDocument with _$StaffDocument {
  const factory StaffDocument({
    @JsonKey(name: 'document_id') required String documentId,
    @JsonKey(name: 'document_name') required String documentName,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    String? remarks,
    @JsonKey(name: 'uploaded_at') DateTime? uploadedAt,
  }) = _StaffDocument;

  factory StaffDocument.fromJson(Map<String, dynamic> json) => _$StaffDocumentFromJson(json);
}

/// staff.staff_qualifications rows — full row, no `select`
/// (qualifications.service.js). percentage/cgpa are Prisma Decimals.
@freezed
abstract class StaffQualification with _$StaffQualification {
  const factory StaffQualification({
    @JsonKey(name: 'qualification_id') required String qualificationId,
    @JsonKey(name: 'qualification_name') required String qualificationName,
    String? specialization,
    @JsonKey(name: 'institution_name') String? institutionName,
    @JsonKey(name: 'university_board') String? universityBoard,
    @JsonKey(name: 'passing_year') int? passingYear,
    @LooseStringConverter() String? percentage,
    @LooseStringConverter() String? cgpa,
    String? grade,
    @JsonKey(name: 'start_year') int? startYear,
    @JsonKey(name: 'end_year') int? endYear,
    @JsonKey(name: 'certificate_url') String? certificateUrl,
    @JsonKey(name: 'certificate_file_name') String? certificateFileName,
  }) = _StaffQualification;

  factory StaffQualification.fromJson(Map<String, dynamic> json) => _$StaffQualificationFromJson(json);
}

/// staff.staff_experience rows — full row, no `select` (experience.service.js).
@freezed
abstract class StaffExperience with _$StaffExperience {
  const factory StaffExperience({
    @JsonKey(name: 'experience_id') required String experienceId,
    @JsonKey(name: 'organization_name') required String organizationName,
    String? designation,
    String? department,
    @JsonKey(name: 'employment_type') String? employmentType,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'is_current') @Default(false) bool isCurrent,
    String? responsibilities,
    String? description,
    @JsonKey(name: 'experience_letter_url') String? experienceLetterUrl,
    @JsonKey(name: 'experience_letter_file_name') String? experienceLetterFileName,
  }) = _StaffExperience;

  factory StaffExperience.fromJson(Map<String, dynamic> json) => _$StaffExperienceFromJson(json);
}

/// GET /admin/staff/:staffId/principal-remarks — principalRemarks.service.js
/// REMARK_SELECT. Read-only for School Admin (POST is Principal-only).
@freezed
abstract class StaffPrincipalRemark with _$StaffPrincipalRemark {
  const factory StaffPrincipalRemark({
    @JsonKey(name: 'remark_id') required String remarkId,
    @JsonKey(name: 'remark_text') required String remarkText,
    @JsonKey(name: 'remark_type') String? remarkType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _StaffPrincipalRemark;

  factory StaffPrincipalRemark.fromJson(Map<String, dynamic> json) => _$StaffPrincipalRemarkFromJson(json);
}

/// GET/PATCH /admin/staff/:staffId/salary-structure — the
/// staff_salary_structure row with its template + components included,
/// plus salaryStructure.service.js's computed `computed_amount` per
/// component and `take_home_estimate`. GET returns `data: null` until one
/// is assigned. ctc_amount / percentage_of_ctc are Prisma Decimal strings;
/// the computed amounts are plain JSON numbers.
@freezed
abstract class SalaryStructureAssignment with _$SalaryStructureAssignment {
  const factory SalaryStructureAssignment({
    @JsonKey(name: 'template_id') required String templateId,
    @JsonKey(name: 'ctc_amount') @DecimalConverter() required Decimal ctcAmount,
    @JsonKey(name: 'effective_from') DateTime? effectiveFrom,
    required SalaryTemplate template,
    @JsonKey(name: 'take_home_estimate') TakeHomeEstimate? takeHomeEstimate,
  }) = _SalaryStructureAssignment;

  factory SalaryStructureAssignment.fromJson(Map<String, dynamic> json) => _$SalaryStructureAssignmentFromJson(json);
}

/// staff.payroll_salary_templates with `components` — also the GET
/// /admin/payroll/templates list rows (templates.service.js#listTemplates).
@freezed
abstract class SalaryTemplate with _$SalaryTemplate {
  const factory SalaryTemplate({
    @JsonKey(name: 'template_id') required String templateId,
    @JsonKey(name: 'template_name') required String templateName,
    @Default(<SalaryComponent>[]) List<SalaryComponent> components,
  }) = _SalaryTemplate;

  factory SalaryTemplate.fromJson(Map<String, dynamic> json) => _$SalaryTemplateFromJson(json);
}

@freezed
abstract class SalaryComponent with _$SalaryComponent {
  const factory SalaryComponent({
    @JsonKey(name: 'component_id') required String componentId,
    @JsonKey(name: 'component_name') required String componentName,
    @JsonKey(name: 'percentage_of_ctc') @DecimalConverter() required Decimal percentageOfCtc,
    // Only on the salary-structure response (annual rupee amount).
    @JsonKey(name: 'computed_amount') @NullableDecimalConverter() Decimal? computedAmount,
  }) = _SalaryComponent;

  factory SalaryComponent.fromJson(Map<String, dynamic> json) => _$SalaryComponentFromJson(json);
}

/// Monthly figures from salaryStructure.service.js#withTakeHomeEstimate.
@freezed
abstract class TakeHomeEstimate with _$TakeHomeEstimate {
  const factory TakeHomeEstimate({
    @JsonKey(name: 'monthly_gross') @DecimalConverter() required Decimal monthlyGross,
    @JsonKey(name: 'pf_amount') @DecimalConverter() required Decimal pfAmount,
    @JsonKey(name: 'esi_amount') @DecimalConverter() required Decimal esiAmount,
    @JsonKey(name: 'pt_amount') @DecimalConverter() required Decimal ptAmount,
    @JsonKey(name: 'tds_amount') @DecimalConverter() required Decimal tdsAmount,
    @JsonKey(name: 'take_home_salary') @DecimalConverter() required Decimal takeHomeSalary,
  }) = _TakeHomeEstimate;

  factory TakeHomeEstimate.fromJson(Map<String, dynamic> json) => _$TakeHomeEstimateFromJson(json);
}
