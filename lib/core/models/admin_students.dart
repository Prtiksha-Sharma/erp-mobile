import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'student_profile.dart';

part 'admin_students.freezed.dart';
part 'admin_students.g.dart';

/// School Admin's student directory + profile — every model here is read
/// against edusoft_backend/src/features/admin/student/*.service.js (the
/// web's features/students/services/studentService.js calls the same
/// endpoints). Statuses stay Strings (mapped to a BadgeVariant on screen,
/// like the web's STATUS_MAP) so an unknown backend value never fails to
/// parse.

// ── List (GET /admin/students) ────────────────────────────────────────────

/// GET /admin/students — student.service.js#listStudents:
/// `{ total, page, limit, data: STUDENT_LIST_SELECT[] }`.
@freezed
abstract class AdminStudentPage with _$AdminStudentPage {
  const factory AdminStudentPage({
    @Default(0) int total,
    @Default(1) int page,
    @Default(20) int limit,
    @Default(<AdminStudentRow>[]) List<AdminStudentRow> data,
  }) = _AdminStudentPage;

  factory AdminStudentPage.fromJson(Map<String, dynamic> json) => _$AdminStudentPageFromJson(json);
}

/// One STUDENT_LIST_SELECT row (student.service.js): student_id,
/// admission_no, admission_date, student_status, roll_no, created_at,
/// current_class { class_id, class_name }, current_section { section_id,
/// section_name }, applicants { applicant_id, first/middle/last_name,
/// gender, dob, contact_no, email_id, photo_url }.
@freezed
abstract class AdminStudentRow with _$AdminStudentRow {
  const factory AdminStudentRow({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') required String admissionNo,
    @JsonKey(name: 'admission_date') DateTime? admissionDate,
    @JsonKey(name: 'student_status') String? studentStatus,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'current_class') ClassRef? currentClass,
    @JsonKey(name: 'current_section') SectionRef? currentSection,
    @JsonKey(name: 'applicants') AdminStudentApplicant? applicant,
  }) = _AdminStudentRow;

  factory AdminStudentRow.fromJson(Map<String, dynamic> json) => _$AdminStudentRowFromJson(json);
}

/// `applicants` — the list's select subset, or the profile's full row
/// (`include { categories { category_id, category_name }, religions {
/// religion_id, religion_name } }`, student.service.js#getStudentProfile).
@freezed
abstract class AdminStudentApplicant with _$AdminStudentApplicant {
  const factory AdminStudentApplicant({
    @JsonKey(name: 'applicant_id') String? applicantId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    DateTime? dob,
    @JsonKey(name: 'blood_group') String? bloodGroup,
    @JsonKey(name: 'religion_id') String? religionId,
    @JsonKey(name: 'category_id') String? categoryId,
    String? nationality,
    @JsonKey(name: 'aadhaar_no') String? aadhaarNo,
    @JsonKey(name: 'birth_certificate_no') String? birthCertificateNo,
    @JsonKey(name: 'mother_tongue') String? motherTongue,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? caste,
    @JsonKey(name: 'contact_no') String? contactNo,
    @JsonKey(name: 'email_id') String? emailId,
    @JsonKey(name: 'categories') CategoryRef? category,
    @JsonKey(name: 'religions') ReligionRef? religion,
  }) = _AdminStudentApplicant;

  factory AdminStudentApplicant.fromJson(Map<String, dynamic> json) => _$AdminStudentApplicantFromJson(json);
}

/// Web studentMappers.fullName: first + middle + last, or null.
String? adminStudentFullName(String? first, String? middle, String? last) {
  final name = [first, middle, last].whereType<String>().where((s) => s.trim().isNotEmpty).join(' ').trim();
  return name.isEmpty ? null : name;
}

extension AdminStudentApplicantName on AdminStudentApplicant {
  String? get fullName => adminStudentFullName(firstName, middleName, lastName);
}

// ── Profile (GET /admin/students/:id) ─────────────────────────────────────

/// GET /admin/students/:studentId — student.service.js#getStudentProfile
/// (`include` institutions, current_class, current_section, applicants
/// (+categories, religions), admission_applications (+parents, siblings,
/// addresses, emergency_contacts, previous_schools), student_profile,
/// student_addresses, student_documents, student_enrollments (+session,
/// class, section), student_status_history (take 20), student_id_cards
/// (take 1), student_accounts { user_id }). Only what the web's
/// StudentProfilePage renders is modeled; documents come from their own
/// endpoint, exactly like the web.
@freezed
abstract class AdminStudentDetail with _$AdminStudentDetail {
  const factory AdminStudentDetail({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'application_id') String? applicationId,
    @JsonKey(name: 'admission_no') required String admissionNo,
    @JsonKey(name: 'admission_date') DateTime? admissionDate,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'student_status') String? studentStatus,
    String? remarks,
    @JsonKey(name: 'institutions') InstitutionRef? institution,
    @JsonKey(name: 'current_class') ClassRef? currentClass,
    @JsonKey(name: 'current_section') SectionRef? currentSection,
    @JsonKey(name: 'applicants') AdminStudentApplicant? applicant,
    @JsonKey(name: 'admission_applications') AdminStudentApplication? application,
    @JsonKey(name: 'student_profile') AdminStudentProfileRow? studentProfile,
    @JsonKey(name: 'student_addresses') @Default(<StudentAddress>[]) List<StudentAddress> addresses,
    @JsonKey(name: 'student_enrollments') @Default(<AdminStudentEnrollment>[]) List<AdminStudentEnrollment> enrollments,
    @JsonKey(name: 'student_status_history')
    @Default(<AdminStudentStatusChange>[])
    List<AdminStudentStatusChange> statusHistory,
    @JsonKey(name: 'student_id_cards') @Default(<IdCardSummary>[]) List<IdCardSummary> idCards,
    @JsonKey(name: 'student_accounts') @Default(<AdminStudentAccountRef>[]) List<AdminStudentAccountRef> accounts,
  }) = _AdminStudentDetail;

  factory AdminStudentDetail.fromJson(Map<String, dynamic> json) => _$AdminStudentDetailFromJson(json);
}

extension AdminStudentDetailX on AdminStudentDetail {
  String? get fullName => applicant?.fullName;
  String get displayName => fullName ?? admissionNo;

  /// useStudentDetail's `accountUserId` — the student's portal login.
  String? get accountUserId => accounts.isEmpty ? null : accounts.first.userId;

  /// useStudentDetail's `previousSchool` — the application's first row.
  AdminPreviousSchool? get previousSchool {
    final rows = application?.previousSchools ?? const <AdminPreviousSchool>[];
    return rows.isEmpty ? null : rows.first;
  }

  IdCardSummary? get idCard => idCards.isEmpty ? null : idCards.first;
}

/// `admission_applications` — only `previous_schools` is read (the web's
/// Parent/Guardian section uses GET .../parents instead).
@freezed
abstract class AdminStudentApplication with _$AdminStudentApplication {
  const factory AdminStudentApplication({
    @JsonKey(name: 'previous_schools') @Default(<AdminPreviousSchool>[]) List<AdminPreviousSchool> previousSchools,
  }) = _AdminStudentApplication;

  factory AdminStudentApplication.fromJson(Map<String, dynamic> json) => _$AdminStudentApplicationFromJson(json);
}

/// admission.previous_schools — percentage / max_marks / marks_obtained are
/// Prisma Decimals (JSON strings), passing_year an Int; all display-only.
@freezed
abstract class AdminPreviousSchool with _$AdminPreviousSchool {
  const factory AdminPreviousSchool({
    @JsonKey(name: 'previous_school_id') String? previousSchoolId,
    @JsonKey(name: 'school_name') String? schoolName,
    @JsonKey(name: 'board_name') String? boardName,
    @JsonKey(name: 'class_last_attended') String? classLastAttended,
    @LooseStringConverter() String? percentage,
    @JsonKey(name: 'passing_year') @LooseStringConverter() String? passingYear,
    @JsonKey(name: 'tc_number') String? tcNumber,
    @JsonKey(name: 'reason_for_leaving') String? reasonForLeaving,
    @JsonKey(name: 'max_marks') @LooseStringConverter() String? maxMarks,
    @JsonKey(name: 'marks_obtained') @LooseStringConverter() String? marksObtained,
  }) = _AdminPreviousSchool;

  factory AdminPreviousSchool.fromJson(Map<String, dynamic> json) => _$AdminPreviousSchoolFromJson(json);
}

/// `student_profile` (nullable 1:1) — only the fee category is read.
@freezed
abstract class AdminStudentProfileRow with _$AdminStudentProfileRow {
  const factory AdminStudentProfileRow({@JsonKey(name: 'fee_category_id') String? feeCategoryId}) =
      _AdminStudentProfileRow;

  factory AdminStudentProfileRow.fromJson(Map<String, dynamic> json) => _$AdminStudentProfileRowFromJson(json);
}

/// `student_enrollments` with academic_sessions / classes / sections.
@freezed
abstract class AdminStudentEnrollment with _$AdminStudentEnrollment {
  const factory AdminStudentEnrollment({
    @JsonKey(name: 'enrollment_id') String? enrollmentId,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'enrollment_status') String? enrollmentStatus,
    @JsonKey(name: 'enrolled_at') DateTime? enrolledAt,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
  }) = _AdminStudentEnrollment;

  factory AdminStudentEnrollment.fromJson(Map<String, dynamic> json) => _$AdminStudentEnrollmentFromJson(json);
}

/// `student_status_history` (newest first, max 20).
@freezed
abstract class AdminStudentStatusChange with _$AdminStudentStatusChange {
  const factory AdminStudentStatusChange({
    @JsonKey(name: 'status_history_id') String? statusHistoryId,
    @JsonKey(name: 'old_status') String? oldStatus,
    @JsonKey(name: 'new_status') String? newStatus,
    String? remarks,
    @JsonKey(name: 'changed_at') DateTime? changedAt,
  }) = _AdminStudentStatusChange;

  factory AdminStudentStatusChange.fromJson(Map<String, dynamic> json) => _$AdminStudentStatusChangeFromJson(json);
}

/// `student_accounts { user_id }`.
@freezed
abstract class AdminStudentAccountRef with _$AdminStudentAccountRef {
  const factory AdminStudentAccountRef({@JsonKey(name: 'user_id') required String userId}) = _AdminStudentAccountRef;

  factory AdminStudentAccountRef.fromJson(Map<String, dynamic> json) => _$AdminStudentAccountRefFromJson(json);
}

// ── Profile sub-resources ────────────────────────────────────────────────

/// GET /admin/students/:id/parents — parents.service.js#getParents: the
/// admission.parents row plus parent_account_id / username /
/// account_status (null when that guardian has no portal login for this
/// student).
@freezed
abstract class AdminStudentParent with _$AdminStudentParent {
  const factory AdminStudentParent({
    @JsonKey(name: 'parent_id') required String parentId,
    @JsonKey(name: 'relation_type') String? relationType,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
    @JsonKey(name: 'parent_account_id') String? parentAccountId,
    String? username,
    @JsonKey(name: 'account_status') String? accountStatus,
  }) = _AdminStudentParent;

  factory AdminStudentParent.fromJson(Map<String, dynamic> json) => _$AdminStudentParentFromJson(json);
}

/// GET /admission/applications/:applicationId/documents —
/// admission/documents.service.js#getDocuments (applicant_documents +
/// `document_types { document_type_id, document_name, is_mandatory }`).
/// verification_status is Title-case here ("Pending"/"Verified"/"Rejected").
@freezed
abstract class AdminStudentAdmissionDocument with _$AdminStudentAdmissionDocument {
  const factory AdminStudentAdmissionDocument({
    @JsonKey(name: 'document_id') required String documentId,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    @JsonKey(name: 'upload_date') DateTime? uploadDate,
    @JsonKey(name: 'document_types') AdminStudentDocumentType? documentType,
  }) = _AdminStudentAdmissionDocument;

  factory AdminStudentAdmissionDocument.fromJson(Map<String, dynamic> json) =>
      _$AdminStudentAdmissionDocumentFromJson(json);
}

@freezed
abstract class AdminStudentDocumentType with _$AdminStudentDocumentType {
  const factory AdminStudentDocumentType({
    @JsonKey(name: 'document_type_id') String? documentTypeId,
    @JsonKey(name: 'document_name') String? documentName,
  }) = _AdminStudentDocumentType;

  factory AdminStudentDocumentType.fromJson(Map<String, dynamic> json) => _$AdminStudentDocumentTypeFromJson(json);
}

extension AdminStudentAdmissionDocumentName on AdminStudentAdmissionDocument {
  String? get displayName => documentType?.documentName ?? fileName;
}

/// GET /admin/students/:id/audit/{profile,document}-history — raw
/// audit.audit_logs rows (audit.service.js). old_data / new_data are free
/// JSON objects.
@freezed
abstract class AdminStudentAuditEntry with _$AdminStudentAuditEntry {
  const factory AdminStudentAuditEntry({
    @JsonKey(name: 'log_id') required String logId,
    @JsonKey(name: 'module_name') String? moduleName,
    @JsonKey(name: 'action_type') String? actionType,
    // Free JSON — normally an object, but never trusted to be one.
    @JsonKey(name: 'old_data') Object? oldData,
    @JsonKey(name: 'new_data') Object? newData,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _AdminStudentAuditEntry;

  factory AdminStudentAuditEntry.fromJson(Map<String, dynamic> json) => _$AdminStudentAuditEntryFromJson(json);
}

extension AdminStudentAuditEntryX on AdminStudentAuditEntry {
  Map<String, dynamic>? get _new => newData is Map<String, dynamic> ? newData as Map<String, dynamic> : null;
  Map<String, dynamic>? get _old => oldData is Map<String, dynamic> ? oldData as Map<String, dynamic> : null;

  String? _pick(String key) => (_new?[key] ?? _old?[key])?.toString();

  /// useDocumentHistory's docId / docName / docType.
  String? get docId => _pick('document_id');
  String? get docName => _pick('document_name');
  String? get docType => _pick('document_type');

  /// useProfileHistory's summary: the first three changed keys, `_` → space,
  /// plus " +N more".
  String get changeSummary {
    final keys = _new?.keys.toList() ?? const <String>[];
    if (keys.isEmpty) return '';
    final head = keys.take(3).map((k) => k.replaceAll('_', ' ')).join(', ');
    return keys.length > 3 ? '$head +${keys.length - 3} more' : head;
  }
}

/// GET /admin/students/:id/certificates/transfer —
/// certificates.service.js#getTransferCertificates (student_transfer_certificates
/// rows), and the POST's response (same row + student_name/admission_no).
@freezed
abstract class StudentTransferCertificate with _$StudentTransferCertificate {
  const factory StudentTransferCertificate({
    @JsonKey(name: 'tc_id') required String tcId,
    @JsonKey(name: 'tc_number') required String tcNumber,
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    String? reason,
    @JsonKey(name: 'dues_cleared') @Default(false) bool duesCleared,
    @JsonKey(name: 'conduct_remark') String? conductRemark,
    String? remarks,
  }) = _StudentTransferCertificate;

  factory StudentTransferCertificate.fromJson(Map<String, dynamic> json) => _$StudentTransferCertificateFromJson(json);
}

/// GET /admin/fees/students/:id/concessions —
/// admin/fees/studentConcessions.service.js#listStudentConcessions (with a
/// computed `status`: ACTIVE | EXPIRED).
@freezed
abstract class AdminStudentConcession with _$AdminStudentConcession {
  const factory AdminStudentConcession({
    @JsonKey(name: 'student_concession_id') required String studentConcessionId,
    @JsonKey(name: 'valid_from') DateTime? validFrom,
    @JsonKey(name: 'valid_to') DateTime? validTo,
    String? status,
    String? remarks,
    @JsonKey(name: 'fee_concessions') AdminStudentConcessionOption? concession,
    @JsonKey(name: 'fee_heads') AdminStudentFeeHeadOption? feeHead,
  }) = _AdminStudentConcession;

  factory AdminStudentConcession.fromJson(Map<String, dynamic> json) => _$AdminStudentConcessionFromJson(json);
}

/// GET /admin/fees/concessions?is_active=true (fee_concessions rows) —
/// only id + name are used by the Assign Concession picker.
@freezed
abstract class AdminStudentConcessionOption with _$AdminStudentConcessionOption {
  const factory AdminStudentConcessionOption({
    @JsonKey(name: 'concession_id') required String concessionId,
    required String name,
  }) = _AdminStudentConcessionOption;

  factory AdminStudentConcessionOption.fromJson(Map<String, dynamic> json) =>
      _$AdminStudentConcessionOptionFromJson(json);
}

/// GET /admin/fees/heads?is_active=true (fee_heads rows).
@freezed
abstract class AdminStudentFeeHeadOption with _$AdminStudentFeeHeadOption {
  const factory AdminStudentFeeHeadOption({
    @JsonKey(name: 'fee_head_id') required String feeHeadId,
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
  }) = _AdminStudentFeeHeadOption;

  factory AdminStudentFeeHeadOption.fromJson(Map<String, dynamic> json) => _$AdminStudentFeeHeadOptionFromJson(json);
}

/// GET /admin/fees/categories?is_active=true (fee_categories rows).
@freezed
abstract class AdminStudentFeeCategoryOption with _$AdminStudentFeeCategoryOption {
  const factory AdminStudentFeeCategoryOption({
    @JsonKey(name: 'fee_category_id') required String feeCategoryId,
    @JsonKey(name: 'category_name') required String categoryName,
  }) = _AdminStudentFeeCategoryOption;

  factory AdminStudentFeeCategoryOption.fromJson(Map<String, dynamic> json) =>
      _$AdminStudentFeeCategoryOptionFromJson(json);
}

/// GET /master/religions and /master/categories (master.service.js —
/// plain `findMany` on religions / categories). One shape for both
/// pickers: `{ religion_id, religion_name }` or `{ category_id,
/// category_name }` are read via the two factories below.
@freezed
abstract class AdminStudentMasterOption with _$AdminStudentMasterOption {
  const factory AdminStudentMasterOption({required String id, required String name}) = _AdminStudentMasterOption;

  factory AdminStudentMasterOption.religion(Map<String, dynamic> json) => AdminStudentMasterOption(
    id: json['religion_id'] as String,
    name: (json['religion_name'] as String?) ?? '',
  );

  factory AdminStudentMasterOption.category(Map<String, dynamic> json) => AdminStudentMasterOption(
    id: json['category_id'] as String,
    name: (json['category_name'] as String?) ?? '',
  );
}

// ── Bulk operations ──────────────────────────────────────────────────────

/// Every /admin/students/bulk/* mutation — bulk.service.js#runBulk:
/// `{ succeeded, failed, results: [{ student_id, result }], errors:
/// [{ student_id, error }] }`; bulk promote (promotion.service.js#bulkPromote)
/// reports `promoted` instead of `succeeded` and `results: [{ student_id,
/// promotion_id }]`.
@freezed
abstract class AdminStudentBulkResult with _$AdminStudentBulkResult {
  const factory AdminStudentBulkResult({
    @Default(0) int succeeded,
    @Default(0) int promoted,
    @Default(0) int failed,
    @Default(<AdminStudentBulkItem>[]) List<AdminStudentBulkItem> results,
    @Default(<AdminStudentBulkError>[]) List<AdminStudentBulkError> errors,
  }) = _AdminStudentBulkResult;

  factory AdminStudentBulkResult.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkResultFromJson(json);
}

@freezed
abstract class AdminStudentBulkItem with _$AdminStudentBulkItem {
  const factory AdminStudentBulkItem({
    @JsonKey(name: 'student_id') String? studentId,
    AdminStudentBulkPayload? result,
  }) = _AdminStudentBulkItem;

  factory AdminStudentBulkItem.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkItemFromJson(json);
}

/// The per-student `result`: an ID card (certificates.service.js
/// #generateIdCard — student_name, card_number, expiry_date …) or a
/// certificate (#generateCertificate — student { name, admission_no,
/// class_name, section_name }, content). Class/section assignment returns
/// the updated students row, of which nothing is shown.
@freezed
abstract class AdminStudentBulkPayload with _$AdminStudentBulkPayload {
  const factory AdminStudentBulkPayload({
    @JsonKey(name: 'student_name') String? studentName,
    @JsonKey(name: 'card_number') String? cardNumber,
    @JsonKey(name: 'expiry_date') DateTime? expiryDate,
    AdminStudentCertificateStudent? student,
    String? content,
  }) = _AdminStudentBulkPayload;

  factory AdminStudentBulkPayload.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkPayloadFromJson(json);
}

@freezed
abstract class AdminStudentCertificateStudent with _$AdminStudentCertificateStudent {
  const factory AdminStudentCertificateStudent({
    String? name,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
  }) = _AdminStudentCertificateStudent;

  factory AdminStudentCertificateStudent.fromJson(Map<String, dynamic> json) =>
      _$AdminStudentCertificateStudentFromJson(json);
}

@freezed
abstract class AdminStudentBulkError with _$AdminStudentBulkError {
  const factory AdminStudentBulkError({
    @JsonKey(name: 'student_id') @LooseStringConverter() String? studentId,
    @LooseStringConverter() String? error,
  }) = _AdminStudentBulkError;

  factory AdminStudentBulkError.fromJson(Map<String, dynamic> json) => _$AdminStudentBulkErrorFromJson(json);
}

/// The institution's active academic session — read from GET
/// /admin/staff/class-teacher/overview (classTeacherInsights.service.js
/// #getOverview returns `session_id` / `session_name` of the active
/// session). The web takes it from /schools/by-slug, which needs the web's
/// subdomain and isn't reachable from the app.
@freezed
abstract class AdminStudentActiveSession with _$AdminStudentActiveSession {
  const factory AdminStudentActiveSession({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'session_name') String? sessionName,
  }) = _AdminStudentActiveSession;

  factory AdminStudentActiveSession.fromJson(Map<String, dynamic> json) => _$AdminStudentActiveSessionFromJson(json);
}
