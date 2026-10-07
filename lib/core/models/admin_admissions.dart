import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';

part 'admin_admissions.freezed.dart';
part 'admin_admissions.g.dart';

/// The School Admin admissions pipeline (web features/admissions/) —
/// backend features/admin/admission/admission.service.js (the
/// `/admin/admission/*` router) plus the shared applicant-form routes in
/// features/admission/ (`/admission/applications/:id/*`,
/// `/admission/applicants/*`, `/admission/document-types`).
///
/// Every status stays a plain String (application_status / payment_status /
/// verification_status / presence_status are free VarChar columns —
/// e.g. verifyPayment writes 'Payment Verified', which no web map knows), so
/// an unknown value renders as a neutral pill instead of crashing.

/// `[first, middle, last]` joined, or null when all are blank — the web's
/// `fullName(person)` helper every admissions page repeats.
String? admissionFullName(String? first, String? middle, String? last) {
  final name = [first, middle, last].where((p) => p != null && p.trim().isNotEmpty).join(' ').trim();
  return name.isEmpty ? null : name;
}

// ── List rows ────────────────────────────────────────────────────────────

/// APPLICANT_SELECT (admission.service.js) / listApplications' inline
/// `applicants { select }` — identical field sets.
@freezed
abstract class AdmissionApplicantBrief with _$AdmissionApplicantBrief {
  const AdmissionApplicantBrief._();

  const factory AdmissionApplicantBrief({
    @JsonKey(name: 'applicant_id') String? applicantId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    DateTime? dob,
    @JsonKey(name: 'contact_no') String? contactNo,
    @JsonKey(name: 'email_id') String? emailId,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _AdmissionApplicantBrief;

  String? get fullName => admissionFullName(firstName, middleName, lastName);

  factory AdmissionApplicantBrief.fromJson(Map<String, dynamic> json) => _$AdmissionApplicantBriefFromJson(json);
}

/// PARENTS_SELECT (admission.service.js) — the list pages' parent columns.
@freezed
abstract class AdmissionParentBrief with _$AdmissionParentBrief {
  const AdmissionParentBrief._();

  const factory AdmissionParentBrief({
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'relation_type') String? relationType,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
  }) = _AdmissionParentBrief;

  String? get fullName => admissionFullName(firstName, null, lastName);

  factory AdmissionParentBrief.fromJson(Map<String, dynamic> json) => _$AdmissionParentBriefFromJson(json);
}

/// interview_schedules (`{ schedule_id, interview_date @db.Date,
/// interview_time @db.Time, scheduled_at }`) — the latest one, `take: 1`.
@freezed
abstract class AdmissionInterviewSchedule with _$AdmissionInterviewSchedule {
  const factory AdmissionInterviewSchedule({
    @JsonKey(name: 'schedule_id') String? scheduleId,
    @JsonKey(name: 'interview_date') DateTime? interviewDate,
    @JsonKey(name: 'interview_time') DateTime? interviewTime,
    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
  }) = _AdmissionInterviewSchedule;

  factory AdmissionInterviewSchedule.fromJson(Map<String, dynamic> json) =>
      _$AdmissionInterviewScheduleFromJson(json);
}

/// interview_attendance — `{ attendance_id, presence_status, marked_at }`
/// on the lists; the detail `include`s every column plus
/// `users { user_id, username, email }` (unused here).
@freezed
abstract class AdmissionInterviewAttendance with _$AdmissionInterviewAttendance {
  const factory AdmissionInterviewAttendance({
    @JsonKey(name: 'attendance_id') String? attendanceId,
    @JsonKey(name: 'presence_status') String? presenceStatus,
    @JsonKey(name: 'marked_at') DateTime? markedAt,
  }) = _AdmissionInterviewAttendance;

  factory AdmissionInterviewAttendance.fromJson(Map<String, dynamic> json) =>
      _$AdmissionInterviewAttendanceFromJson(json);
}

/// `users { user_id, username, email }` on an admission review.
@freezed
abstract class AdmissionReviewer with _$AdmissionReviewer {
  const factory AdmissionReviewer({
    @JsonKey(name: 'user_id') String? userId,
    String? username,
    String? email,
  }) = _AdmissionReviewer;

  factory AdmissionReviewer.fromJson(Map<String, dynamic> json) => _$AdmissionReviewerFromJson(json);
}

/// admission_reviews — `{ review_id, review_status, remarks, reviewed_at }`
/// on the Rejected list; the detail includes every column plus `users`.
/// (The web's ReviewCard reads `review.status` / `review.reviewer`, which
/// the backend never sends — mobile reads the real fields.)
@freezed
abstract class AdmissionReview with _$AdmissionReview {
  const factory AdmissionReview({
    @JsonKey(name: 'review_id') String? reviewId,
    @JsonKey(name: 'review_status') String? reviewStatus,
    String? remarks,
    @JsonKey(name: 'reviewed_at') DateTime? reviewedAt,
    @JsonKey(name: 'users') AdmissionReviewer? reviewer,
  }) = _AdmissionReview;

  factory AdmissionReview.fromJson(Map<String, dynamic> json) => _$AdmissionReviewFromJson(json);
}

/// One application on any admissions list. The union of every list
/// endpoint's `select` (all optional — each page reads its own subset):
/// - listApplications (GET /admin/admission/applications): status, payment,
///   registration_fee (Decimal), submitted_at, created_at, classes,
///   academic_sessions, institutions, applicants
/// - listIncompleteForms: + parents
/// - listInterviewScheduleList: called_for_interview_at, interview_schedules,
///   interview_attendance
/// - listPresentApplicants: is_qualified, parents, schedules, attendance
/// - listQualifiedApplicants / listFinalSelectedApplicants: is_qualified,
///   qualified_at, is_selected_final, selected_at, registered_at, parents
/// - listRejectedApplicants: updated_at, parents, admission_reviews (take 1)
@freezed
abstract class AdmissionApplicationRow with _$AdmissionApplicationRow {
  const factory AdmissionApplicationRow({
    @JsonKey(name: 'application_id') required String applicationId,
    @JsonKey(name: 'application_no') String? applicationNo,
    @JsonKey(name: 'application_status') String? applicationStatus,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'registration_fee') @NullableDecimalConverter() Decimal? registrationFee,
    @JsonKey(name: 'submitted_at') DateTime? submittedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'called_for_interview') bool? calledForInterview,
    @JsonKey(name: 'called_for_interview_at') DateTime? calledForInterviewAt,
    @JsonKey(name: 'is_qualified') bool? isQualified,
    @JsonKey(name: 'qualified_at') DateTime? qualifiedAt,
    @JsonKey(name: 'is_selected_final') bool? isSelectedFinal,
    @JsonKey(name: 'selected_at') DateTime? selectedAt,
    @JsonKey(name: 'registered_at') DateTime? registeredAt,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
    @JsonKey(name: 'institutions') InstitutionRef? institution,
    @JsonKey(name: 'applicants') AdmissionApplicantBrief? applicant,
    @Default(<AdmissionParentBrief>[]) List<AdmissionParentBrief> parents,
    @JsonKey(name: 'interview_schedules')
    @Default(<AdmissionInterviewSchedule>[])
    List<AdmissionInterviewSchedule> interviewSchedules,
    @JsonKey(name: 'interview_attendance')
    @Default(<AdmissionInterviewAttendance>[])
    List<AdmissionInterviewAttendance> interviewAttendance,
    @JsonKey(name: 'admission_reviews') @Default(<AdmissionReview>[]) List<AdmissionReview> reviews,
  }) = _AdmissionApplicationRow;

  factory AdmissionApplicationRow.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationRowFromJson(json);
}

/// `{ total, page, limit, data }` — every admissions list endpoint.
@freezed
abstract class AdmissionApplicationPage with _$AdmissionApplicationPage {
  const factory AdmissionApplicationPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<AdmissionApplicationRow>[]) List<AdmissionApplicationRow> data,
  }) = _AdmissionApplicationPage;

  factory AdmissionApplicationPage.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationPageFromJson(json);
}

// ── Application detail ───────────────────────────────────────────────────

/// `categories { category_id, category_name }`.
@freezed
abstract class AdmissionCategoryRef with _$AdmissionCategoryRef {
  const factory AdmissionCategoryRef({
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'category_name') String? categoryName,
  }) = _AdmissionCategoryRef;

  factory AdmissionCategoryRef.fromJson(Map<String, dynamic> json) => _$AdmissionCategoryRefFromJson(json);
}

/// `religions { religion_id, religion_name }`.
@freezed
abstract class AdmissionReligionRef with _$AdmissionReligionRef {
  const factory AdmissionReligionRef({
    @JsonKey(name: 'religion_id') String? religionId,
    @JsonKey(name: 'religion_name') String? religionName,
  }) = _AdmissionReligionRef;

  factory AdmissionReligionRef.fromJson(Map<String, dynamic> json) => _$AdmissionReligionRefFromJson(json);
}

/// A full `admission.applicants` row (+ categories/religions) — the
/// application detail's `applicants` include, GET/PUT
/// `/admission/applications/:id/basic-details` (applicants.service.js
/// #getBasicDetails / #upsertBasicDetails) and GET
/// `/admission/applicants/:id` (#getApplicantProfile), which additionally
/// nests its one `admission_applications` row with that row's relations.
/// (The web's ApplicantProfilePage reads `date_of_birth`, `profile_photo`,
/// `parents`, `applications` … at the top level — none exist; mobile reads
/// `dob`, `photo_url` and `admission_applications`.)
@freezed
abstract class AdmissionApplicant with _$AdmissionApplicant {
  const AdmissionApplicant._();

  const factory AdmissionApplicant({
    @JsonKey(name: 'applicant_id') String? applicantId,
    @JsonKey(name: 'application_id') String? applicationId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    DateTime? dob,
    @JsonKey(name: 'blood_group') String? bloodGroup,
    String? nationality,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,
    @JsonKey(name: 'mother_tongue') String? motherTongue,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? caste,
    @JsonKey(name: 'contact_no') String? contactNo,
    @JsonKey(name: 'email_id') String? emailId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'categories') AdmissionCategoryRef? category,
    @JsonKey(name: 'religions') AdmissionReligionRef? religion,
    @JsonKey(name: 'admission_applications') AdmissionApplicationDetail? application,
  }) = _AdmissionApplicant;

  String? get fullName => admissionFullName(firstName, middleName, lastName);

  factory AdmissionApplicant.fromJson(Map<String, dynamic> json) => _$AdmissionApplicantFromJson(json);
}

/// A full `admission.parents` row (annual_income is Decimal(12,2)).
@freezed
abstract class AdmissionParent with _$AdmissionParent {
  const AdmissionParent._();

  const factory AdmissionParent({
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'relation_type') String? relationType,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? occupation,
    String? organization,
    @JsonKey(name: 'annual_income') @NullableDecimalConverter() Decimal? annualIncome,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
    String? qualification,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    String? designation,
    @JsonKey(name: 'office_address') String? officeAddress,
    @JsonKey(name: 'is_alumni') bool? isAlumni,
  }) = _AdmissionParent;

  String? get fullName => admissionFullName(firstName, null, lastName);

  factory AdmissionParent.fromJson(Map<String, dynamic> json) => _$AdmissionParentFromJson(json);
}

/// A full `admission.siblings` row.
@freezed
abstract class AdmissionSibling with _$AdmissionSibling {
  const factory AdmissionSibling({
    @JsonKey(name: 'sibling_id') String? siblingId,
    @JsonKey(name: 'sibling_name') String? siblingName,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'institution_name') String? institutionName,
    @JsonKey(name: 'currently_studying') bool? currentlyStudying,
    @JsonKey(name: 'relation_type') String? relationType,
  }) = _AdmissionSibling;

  factory AdmissionSibling.fromJson(Map<String, dynamic> json) => _$AdmissionSiblingFromJson(json);
}

/// A full `admission.addresses` row.
@freezed
abstract class AdmissionAddress with _$AdmissionAddress {
  const AdmissionAddress._();

  const factory AdmissionAddress({
    @JsonKey(name: 'address_id') String? addressId,
    @JsonKey(name: 'address_type') String? addressType,
    @JsonKey(name: 'address_line1') String? addressLine1,
    @JsonKey(name: 'address_line2') String? addressLine2,
    String? city,
    String? district,
    String? state,
    String? country,
    @LooseStringConverter() String? pincode,
  }) = _AdmissionAddress;

  /// The web's AddressCard line (district isn't part of it).
  String get line => [
    addressLine1,
    addressLine2,
    city,
    state,
    pincode,
    country,
  ].where((p) => p != null && p.trim().isNotEmpty).join(', ');

  factory AdmissionAddress.fromJson(Map<String, dynamic> json) => _$AdmissionAddressFromJson(json);
}

/// A full `admission.emergency_contacts` row.
@freezed
abstract class AdmissionEmergencyContact with _$AdmissionEmergencyContact {
  const factory AdmissionEmergencyContact({
    @JsonKey(name: 'contact_id') String? contactId,
    @JsonKey(name: 'contact_name') String? contactName,
    String? relation,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
  }) = _AdmissionEmergencyContact;

  factory AdmissionEmergencyContact.fromJson(Map<String, dynamic> json) => _$AdmissionEmergencyContactFromJson(json);
}

/// A full `admission.previous_schools` row — percentage is Decimal(5,2),
/// display-only.
@freezed
abstract class AdmissionPreviousSchool with _$AdmissionPreviousSchool {
  const factory AdmissionPreviousSchool({
    @JsonKey(name: 'previous_school_id') String? previousSchoolId,
    @JsonKey(name: 'school_name') String? schoolName,
    @JsonKey(name: 'board_name') String? boardName,
    @JsonKey(name: 'class_last_attended') String? classLastAttended,
    @LooseStringConverter() String? percentage,
    @JsonKey(name: 'passing_year') int? passingYear,
    @JsonKey(name: 'tc_number') String? tcNumber,
    @JsonKey(name: 'reason_for_leaving') String? reasonForLeaving,
  }) = _AdmissionPreviousSchool;

  factory AdmissionPreviousSchool.fromJson(Map<String, dynamic> json) => _$AdmissionPreviousSchoolFromJson(json);
}

/// GET /admission/document-types — documents.service.js#getDocumentTypes
/// (every column, ordered by name); also the `document_types` include on a
/// document.
@freezed
abstract class AdmissionDocumentType with _$AdmissionDocumentType {
  const factory AdmissionDocumentType({
    @JsonKey(name: 'document_type_id') String? documentTypeId,
    @JsonKey(name: 'document_name') String? documentName,
    @JsonKey(name: 'is_mandatory') bool? isMandatory,
  }) = _AdmissionDocumentType;

  factory AdmissionDocumentType.fromJson(Map<String, dynamic> json) => _$AdmissionDocumentTypeFromJson(json);
}

/// An `admission.applicant_documents` row — GET
/// `/admission/applications/:id/documents` (documents.service.js
/// #serializeDoc: file_size BigInt → number) and the detail's
/// `applicant_documents` include (file_size BigInt → string). `file_url`
/// is the full Cloudinary URL (upload.js stores `file.path`) — the web's
/// `VITE_BASE_URL + file_url` prefix is a web bug.
@freezed
abstract class AdmissionDocument with _$AdmissionDocument {
  const factory AdmissionDocument({
    @JsonKey(name: 'document_id') required String documentId,
    @JsonKey(name: 'document_type_id') String? documentTypeId,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'file_size') @LooseNumConverter() num? fileSize,
    @JsonKey(name: 'mime_type') String? mimeType,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    String? remarks,
    @JsonKey(name: 'upload_date') DateTime? uploadDate,
    @JsonKey(name: 'document_types') AdmissionDocumentType? documentType,
  }) = _AdmissionDocument;

  factory AdmissionDocument.fromJson(Map<String, dynamic> json) => _$AdmissionDocumentFromJson(json);
}

/// `entrance_tests` (every column). start/end are `@db.Time`.
@freezed
abstract class AdmissionEntranceTest with _$AdmissionEntranceTest {
  const factory AdmissionEntranceTest({
    @JsonKey(name: 'test_id') String? testId,
    @JsonKey(name: 'test_name') String? testName,
    @JsonKey(name: 'test_date') DateTime? testDate,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    String? venue,
  }) = _AdmissionEntranceTest;

  factory AdmissionEntranceTest.fromJson(Map<String, dynamic> json) => _$AdmissionEntranceTestFromJson(json);
}

/// `entrance_test_assignments { …, entrance_tests: true }`. (The web's
/// EntranceTestCard reads marks_scored / total_marks / pass_marks /
/// duration / is_qualified — no such columns exist.)
@freezed
abstract class AdmissionEntranceTestAssignment with _$AdmissionEntranceTestAssignment {
  const factory AdmissionEntranceTestAssignment({
    @JsonKey(name: 'assignment_id') String? assignmentId,
    @JsonKey(name: 'registration_number') String? registrationNumber,
    @JsonKey(name: 'seat_number') String? seatNumber,
    @JsonKey(name: 'assigned_at') DateTime? assignedAt,
    @JsonKey(name: 'entrance_tests') AdmissionEntranceTest? test,
  }) = _AdmissionEntranceTestAssignment;

  factory AdmissionEntranceTestAssignment.fromJson(Map<String, dynamic> json) =>
      _$AdmissionEntranceTestAssignmentFromJson(json);
}

/// GET /admin/admission/applications/:id — admission.service.js
/// #getApplicationDetail: every admission_applications column plus the
/// `include` relations. Also the `admission_applications` object nested in
/// GET /admission/applicants/:id (#getApplicantProfile), whose include set is
/// a subset (no applicants/entrance tests/attendance; reviews take 5).
/// Note it has no `interview_schedules`.
@freezed
abstract class AdmissionApplicationDetail with _$AdmissionApplicationDetail {
  const factory AdmissionApplicationDetail({
    @JsonKey(name: 'application_id') required String applicationId,
    @JsonKey(name: 'application_no') String? applicationNo,
    @JsonKey(name: 'application_status') String? applicationStatus,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'registration_fee') @NullableDecimalConverter() Decimal? registrationFee,
    @JsonKey(name: 'submitted_at') DateTime? submittedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'payment_rejection_reason') String? paymentRejectionReason,
    @JsonKey(name: 'called_for_interview') bool? calledForInterview,
    @JsonKey(name: 'called_for_interview_at') DateTime? calledForInterviewAt,
    @JsonKey(name: 'is_qualified') bool? isQualified,
    @JsonKey(name: 'qualified_at') DateTime? qualifiedAt,
    @JsonKey(name: 'is_selected_final') bool? isSelectedFinal,
    @JsonKey(name: 'selected_at') DateTime? selectedAt,
    @JsonKey(name: 'registered_at') DateTime? registeredAt,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
    @JsonKey(name: 'institutions') InstitutionRef? institution,
    @JsonKey(name: 'applicants') AdmissionApplicant? applicant,
    @Default(<AdmissionParent>[]) List<AdmissionParent> parents,
    @Default(<AdmissionSibling>[]) List<AdmissionSibling> siblings,
    @Default(<AdmissionAddress>[]) List<AdmissionAddress> addresses,
    @JsonKey(name: 'emergency_contacts')
    @Default(<AdmissionEmergencyContact>[])
    List<AdmissionEmergencyContact> emergencyContacts,
    @JsonKey(name: 'previous_schools') @Default(<AdmissionPreviousSchool>[]) List<AdmissionPreviousSchool> previousSchools,
    @JsonKey(name: 'applicant_documents') @Default(<AdmissionDocument>[]) List<AdmissionDocument> documents,
    @JsonKey(name: 'admission_reviews') @Default(<AdmissionReview>[]) List<AdmissionReview> reviews,
    @JsonKey(name: 'entrance_test_assignments')
    @Default(<AdmissionEntranceTestAssignment>[])
    List<AdmissionEntranceTestAssignment> entranceTests,
    @JsonKey(name: 'interview_attendance')
    @Default(<AdmissionInterviewAttendance>[])
    List<AdmissionInterviewAttendance> interviewAttendance,
  }) = _AdmissionApplicationDetail;

  factory AdmissionApplicationDetail.fromJson(Map<String, dynamic> json) =>
      _$AdmissionApplicationDetailFromJson(json);
}

// ── Mutation results ─────────────────────────────────────────────────────

/// One `{ application_id, reason }` entry of a bulk result.
@freezed
abstract class AdmissionBulkFailure with _$AdmissionBulkFailure {
  const factory AdmissionBulkFailure({
    @JsonKey(name: 'application_id') String? applicationId,
    String? reason,
  }) = _AdmissionBulkFailure;

  factory AdmissionBulkFailure.fromJson(Map<String, dynamic> json) => _$AdmissionBulkFailureFromJson(json);
}

/// `{ succeeded: string[], failed: [{ application_id, reason }] }` —
/// admission.service.js#bulkApply (every bulk-* route) and
/// applicants.service.js#bulkDeleteApplicants.
@freezed
abstract class AdmissionBulkResult with _$AdmissionBulkResult {
  const factory AdmissionBulkResult({
    @Default(<String>[]) List<String> succeeded,
    @Default(<AdmissionBulkFailure>[]) List<AdmissionBulkFailure> failed,
  }) = _AdmissionBulkResult;

  factory AdmissionBulkResult.fromJson(Map<String, dynamic> json) => _$AdmissionBulkResultFromJson(json);
}

/// POST /admin/admission/applications/:id/register —
/// admission.service.js#registerApplication's return object. The password
/// is shown once (the web's CredentialsModal; see the screen).
@freezed
abstract class AdmissionRegistrationResult with _$AdmissionRegistrationResult {
  const factory AdmissionRegistrationResult({
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'application_id') String? applicationId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'admission_date') DateTime? admissionDate,
    String? username,
    String? password,
    @JsonKey(name: 'documents_carried_forward') int? documentsCarriedForward,
  }) = _AdmissionRegistrationResult;

  factory AdmissionRegistrationResult.fromJson(Map<String, dynamic> json) =>
      _$AdmissionRegistrationResultFromJson(json);
}

/// POST /admission/applications — applicants.service.js#startApplication's
/// `select { application_id, application_no, application_status,
/// payment_status, created_at }`.
@freezed
abstract class AdmissionStartedApplication with _$AdmissionStartedApplication {
  const factory AdmissionStartedApplication({
    @JsonKey(name: 'application_id') required String applicationId,
    @JsonKey(name: 'application_no') String? applicationNo,
  }) = _AdmissionStartedApplication;

  factory AdmissionStartedApplication.fromJson(Map<String, dynamic> json) =>
      _$AdmissionStartedApplicationFromJson(json);
}

/// The active academic session (`is_active`, newest first — the same rule as
/// /schools/by-slug, where the web gets its Redux `sessionId`), read from
/// GET /admin/staff/class-teacher/overview (classTeacherInsights.service.js
/// #getOverview returns `{ session_id, session_name, … }`) — the only
/// School-Admin endpoint that exposes it. New Application needs it for
/// POST /admission/applications.
@freezed
abstract class AdmissionActiveSession with _$AdmissionActiveSession {
  const factory AdmissionActiveSession({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'session_name') String? sessionName,
  }) = _AdmissionActiveSession;

  factory AdmissionActiveSession.fromJson(Map<String, dynamic> json) => _$AdmissionActiveSessionFromJson(json);
}
