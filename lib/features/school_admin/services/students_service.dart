import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_staff.dart' show StaffPrincipalRemark;
import '../../../core/models/admin_students.dart';
import '../../../core/models/student_fees.dart' show FeeReceipt, FeeSummary, PendingDues;
import '../../../core/models/student_records.dart' show DisciplineRecord, MedicalInfo, StudentDocument;
import 'staff_directory_service.dart' show UploadFile;

/// Every call the web's features/students/services/studentService.js makes
/// (backend features/admin/student/student.router.js, plus the per-student
/// fee concession routes of admin/fees/fees.router.js, the master pickers
/// of master/master.router.js and the admission documents route the web
/// borrows from admissions). Mutations are School-Admin-only server-side.
class AdminStudentsService {
  Dio get _dio => DioClient.instance.dio;

  static const _base = '/admin/students';

  Future<List<T>> _list<T>(
    String path,
    T Function(Map<String, dynamic>) fromJson, {
    Map<String, dynamic>? query,
  }) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  // ── Directory ──────────────────────────────────────────────────────────

  Future<Result<AdminStudentPage>> listStudents(StudentsQuery query) => guard(() async {
    final res = await _dio.get(_base, queryParameters: query.toParams());
    return AdminStudentPage.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<AdminStudentDetail>> getStudent(String studentId) => guard(() async {
    final res = await _dio.get('$_base/$studentId');
    return AdminStudentDetail.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// The active session (see [AdminStudentActiveSession]); null when the
  /// school has none — the backend answers 400 "No active academic session
  /// found for your institution" in that case.
  Future<Result<AdminStudentActiveSession?>> getActiveSession() => guard(() async {
    try {
      final res = await _dio.get('/admin/staff/class-teacher/overview');
      final data = res.data['data'] as Map<String, dynamic>?;
      if (data == null || data['session_id'] == null) return null;
      return AdminStudentActiveSession.fromJson(data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) return null;
      rethrow;
    }
  });

  // ── Header actions ─────────────────────────────────────────────────────

  /// `remarks` only when non-blank (useStudentActions).
  Future<Result<void>> updateStatus(String studentId, {required String status, String? remarks}) =>
      guard(() async => _dio.patch('$_base/$studentId/status', data: {'status': status, 'remarks': ?remarks}));

  Future<Result<void>> enroll(String studentId, {required String sessionId, required String classId}) =>
      guard(() async => _dio.post('$_base/$studentId/enroll', data: {'session_id': sessionId, 'class_id': classId}));

  /// Returns the new generated password (accounts.service.js#resetPassword).
  Future<Result<String?>> resetPassword(String userId) => guard(() async {
    final res = await _dio.patch('$_base/accounts/$userId/reset-password');
    return (res.data['data'] as Map<String, dynamic>?)?['password'] as String?;
  });

  // ── Bulk ───────────────────────────────────────────────────────────────

  Future<Result<AdminStudentBulkResult>> _bulk(String method, String path, Map<String, dynamic> body) =>
      guard(() async {
        final res = method == 'POST'
            ? await _dio.post('$_base/bulk/$path', data: body)
            : await _dio.patch('$_base/bulk/$path', data: body);
        return AdminStudentBulkResult.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<AdminStudentBulkResult>> bulkAssignClass(List<String> ids, String classId) =>
      _bulk('PATCH', 'class', {'student_ids': ids, 'class_id': classId});

  Future<Result<AdminStudentBulkResult>> bulkAssignSection(List<String> ids, String sectionId) =>
      _bulk('PATCH', 'section', {'student_ids': ids, 'section_id': sectionId});

  Future<Result<AdminStudentBulkResult>> bulkPromote(
    List<String> ids, {
    required String sessionId,
    required String classId,
    String? sectionId,
  }) => _bulk('POST', 'promote', {
    'student_ids': ids,
    'to_session_id': sessionId,
    'to_class_id': classId,
    'to_section_id': ?sectionId,
  });

  Future<Result<AdminStudentBulkResult>> bulkDeactivate(List<String> ids) =>
      _bulk('PATCH', 'deactivate', {'student_ids': ids});

  Future<Result<AdminStudentBulkResult>> bulkGenerateIdCards(List<String> ids) =>
      _bulk('POST', 'id-cards', {'student_ids': ids});

  Future<Result<AdminStudentBulkResult>> bulkGenerateCertificates(List<String> ids, String type) =>
      _bulk('POST', 'certificates', {'student_ids': ids, 'type': type});

  // ── Profile edits ──────────────────────────────────────────────────────

  Future<Result<void>> updatePersonalInfo(String studentId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('$_base/$studentId/personal', data: payload));

  Future<Result<void>> updateContactInfo(String studentId, {String? contactNo, String? emailId}) =>
      guard(() async => _dio.patch('$_base/$studentId/contact', data: {'contact_no': contactNo, 'email_id': emailId}));

  Future<Result<void>> updateRemarks(String studentId, String remarks) =>
      guard(() async => _dio.patch('$_base/$studentId/remarks', data: {'remarks': remarks}));

  Future<Result<void>> assignClass(String studentId, String classId) =>
      guard(() async => _dio.patch('$_base/$studentId/class', data: {'class_id': classId}));

  Future<Result<void>> assignSection(String studentId, String sectionId) =>
      guard(() async => _dio.patch('$_base/$studentId/section', data: {'section_id': sectionId}));

  Future<Result<void>> assignRollNo(String studentId, String rollNo) =>
      guard(() async => _dio.patch('$_base/$studentId/roll-no', data: {'roll_no': rollNo}));

  Future<Result<void>> updatePreviousSchool(String studentId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('$_base/$studentId/previous-school', data: payload));

  /// `data: null` when nothing has been recorded yet.
  Future<Result<MedicalInfo?>> getMedicalInfo(String studentId) => guard(() async {
    final res = await _dio.get('$_base/$studentId/medical');
    final data = res.data['data'];
    return data == null ? null : MedicalInfo.fromJson(data as Map<String, dynamic>);
  });

  Future<Result<void>> updateMedicalInfo(String studentId, Map<String, dynamic> payload) =>
      guard(() async => _dio.put('$_base/$studentId/medical', data: payload));

  // ── Parents ────────────────────────────────────────────────────────────

  Future<Result<List<AdminStudentParent>>> getParents(String studentId) =>
      guard(() => _list('$_base/$studentId/parents', AdminStudentParent.fromJson));

  Future<Result<void>> deleteParent(String studentId, String parentId) =>
      guard(() async => _dio.delete('$_base/$studentId/parents/$parentId'));

  // ── Documents & history ────────────────────────────────────────────────

  Future<Result<List<StudentDocument>>> getDocuments(String studentId) =>
      guard(() => _list('$_base/$studentId/documents', StudentDocument.fromJson));

  /// Multipart `file` + `document_name` — auto-VERIFIED server-side.
  Future<Result<void>> uploadDocument(String studentId, {required String documentName, required UploadFile file}) =>
      guard(
        () async => _dio.post(
          '$_base/$studentId/documents',
          data: FormData.fromMap({'file': file.toMultipart(), 'document_name': documentName}),
        ),
      );

  Future<Result<void>> replaceDocument(String studentId, String documentId, UploadFile file) => guard(
    () async =>
        _dio.put('$_base/$studentId/documents/$documentId', data: FormData.fromMap({'file': file.toMultipart()})),
  );

  Future<Result<void>> deleteDocument(String studentId, String documentId) =>
      guard(() async => _dio.delete('$_base/$studentId/documents/$documentId'));

  Future<Result<List<AdminStudentAuditEntry>>> getDocumentHistory(String studentId) =>
      guard(() => _list('$_base/$studentId/audit/document-history', AdminStudentAuditEntry.fromJson));

  Future<Result<List<AdminStudentAuditEntry>>> getProfileHistory(String studentId) =>
      guard(() => _list('$_base/$studentId/audit/profile-history', AdminStudentAuditEntry.fromJson));

  /// The original admission documents (admission router; staff of the same
  /// institution pass requireApplicationOwner).
  Future<Result<List<AdminStudentAdmissionDocument>>> getAdmissionDocuments(String applicationId) =>
      guard(() => _list('/admission/applications/$applicationId/documents', AdminStudentAdmissionDocument.fromJson));

  // ── Discipline / remarks / TC ──────────────────────────────────────────

  Future<Result<List<DisciplineRecord>>> getDisciplineRecords(String studentId) =>
      guard(() => _list('$_base/$studentId/discipline', DisciplineRecord.fromJson));

  Future<Result<void>> createDisciplineRecord(String studentId, Map<String, dynamic> payload) =>
      guard(() async => _dio.post('$_base/$studentId/discipline', data: payload));

  Future<Result<void>> resolveDisciplineRecord(String disciplineId, {String? remarks}) => guard(
    () async => _dio.patch('$_base/discipline/$disciplineId', data: {'status': 'RESOLVED', 'remarks': ?remarks}),
  );

  /// Read-only for a School Admin (POST is Principal-only).
  Future<Result<List<StaffPrincipalRemark>>> getPrincipalRemarks(String studentId) =>
      guard(() => _list('$_base/$studentId/principal-remarks', StaffPrincipalRemark.fromJson));

  Future<Result<List<StudentTransferCertificate>>> getTransferCertificates(String studentId) =>
      guard(() => _list('$_base/$studentId/certificates/transfer', StudentTransferCertificate.fromJson));

  /// Without [force] the backend returns the existing certificate instead
  /// of creating one when the student already has a TC.
  Future<Result<StudentTransferCertificate>> issueTransferCertificate(
    String studentId,
    Map<String, dynamic> payload, {
    bool force = false,
  }) => guard(() async {
    final res = await _dio.post(
      '$_base/$studentId/certificates/transfer',
      data: payload,
      queryParameters: force ? {'force': true} : null,
    );
    return StudentTransferCertificate.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  // ── Fees ───────────────────────────────────────────────────────────────

  Future<Result<FeeSummary>> getFeeSummary(String studentId) => guard(() async {
    final res = await _dio.get('$_base/$studentId/fees/summary');
    return FeeSummary.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<List<FeeReceipt>>> getFeeReceipts(String studentId) =>
      guard(() => _list('$_base/$studentId/fees/receipts', FeeReceipt.fromJson));

  Future<Result<PendingDues>> getPendingDues(String studentId) => guard(() async {
    final res = await _dio.get('$_base/$studentId/fees/pending-dues');
    return PendingDues.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// An empty id clears the category ("Default").
  Future<Result<void>> setFeeCategory(String studentId, String feeCategoryId) =>
      guard(() async => _dio.patch('$_base/$studentId/fees/fee-category', data: {'fee_category_id': feeCategoryId}));

  Future<Result<List<AdminStudentConcession>>> getConcessions(String studentId) =>
      guard(() => _list('/admin/fees/students/$studentId/concessions', AdminStudentConcession.fromJson));

  Future<Result<void>> assignConcession(String studentId, Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admin/fees/students/$studentId/concessions', data: payload));

  /// Soft-expire (valid_to = today), never a hard delete.
  Future<Result<void>> revokeConcession(String studentConcessionId) =>
      guard(() async => _dio.delete('/admin/fees/concessions/assignments/$studentConcessionId'));

  Future<Result<List<AdminStudentFeeCategoryOption>>> getFeeCategoryOptions() =>
      guard(() => _list('/admin/fees/categories', AdminStudentFeeCategoryOption.fromJson, query: {'is_active': true}));

  Future<Result<List<AdminStudentFeeHeadOption>>> getFeeHeadOptions() =>
      guard(() => _list('/admin/fees/heads', AdminStudentFeeHeadOption.fromJson, query: {'is_active': true}));

  Future<Result<List<AdminStudentConcessionOption>>> getConcessionOptions() =>
      guard(() => _list('/admin/fees/concessions', AdminStudentConcessionOption.fromJson, query: {'is_active': true}));

  // ── Master pickers (Personal Info form) ────────────────────────────────

  Future<Result<List<AdminStudentMasterOption>>> getReligions() =>
      guard(() => _list('/master/religions', AdminStudentMasterOption.religion));

  Future<Result<List<AdminStudentMasterOption>>> getCategories() =>
      guard(() => _list('/master/categories', AdminStudentMasterOption.category));
}

/// GET /admin/students filters — the web's useStudentList (20 per page;
/// blank filters omitted).
class StudentsQuery {
  const StudentsQuery({this.search = '', this.page = 1, this.limit = 20, this.classId = '', this.status = ''});

  final String search;
  final int page;
  final int limit;
  final String classId;
  final String status;

  Map<String, dynamic> toParams() => {
    'page': page,
    'limit': limit,
    if (search.isNotEmpty) 'search': search,
    if (classId.isNotEmpty) 'class_id': classId,
    if (status.isNotEmpty) 'status': status,
  };

  StudentsQuery copyWith({String? search, int? page, String? classId, String? status}) => StudentsQuery(
    search: search ?? this.search,
    page: page ?? this.page,
    limit: limit,
    classId: classId ?? this.classId,
    status: status ?? this.status,
  );

  @override
  bool operator ==(Object other) =>
      other is StudentsQuery &&
      other.search == search &&
      other.page == page &&
      other.limit == limit &&
      other.classId == classId &&
      other.status == status;

  @override
  int get hashCode => Object.hash(search, page, limit, classId, status);
}
