import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/api/dio_error_mapper.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_admissions.dart';
import '../../../core/storage/secure_storage.dart';
import 'staff_directory_service.dart' show UploadFile;

/// Every call the web's admissionsService.js / preRegistrationService.js
/// make for the School Admin admissions pipeline — backend
/// features/admin/admission/admission.router.js (`/admin/admission/*`,
/// School Admin + read-only Vice Principal) plus the shared applicant-form
/// routes in features/admission/ (`/admission/applications/:id/*`,
/// `/admission/applicants/*`, `/admission/document-types`), which accept any
/// staff member of the application's own institution.
///
/// Bulk routes take at most [maxBulkIds] application ids per request.
class AdmissionsService {
  /// admission.controller.js MAX_BULK_IDS.
  static const maxBulkIds = 200;

  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson) async {
    final res = await _dio.get(path);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  // ── Lists ──────────────────────────────────────────────────────────────

  /// One call for all eight list endpoints — each returns
  /// `{ total, page, limit, data }`; blank filters are omitted.
  Future<Result<AdmissionApplicationPage>> listApplications(AdmissionListRequest request) => guard(() async {
    final res = await _dio.get(request.kind.path, queryParameters: request.toParams());
    return AdmissionApplicationPage.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<AdmissionApplicationDetail>> getApplication(String applicationId) => guard(() async {
    final res = await _dio.get('/admin/admission/applications/$applicationId');
    return AdmissionApplicationDetail.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// GET /admission/applicants/:id — the applicant with its application
  /// nested (see [AdmissionApplicant.application]).
  Future<Result<AdmissionApplicant>> getApplicantProfile(String applicantId) => guard(() async {
    final res = await _dio.get('/admission/applicants/$applicantId');
    return AdmissionApplicant.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  // ── Single-application workflow (School Admin only) ────────────────────

  Future<Result<void>> verifyPayment(String applicationId, String remarks) => guard(
    () async => _dio.post('/admin/admission/applications/$applicationId/verify-payment', data: {'remarks': remarks}),
  );

  /// `date` is `YYYY-MM-DD`, `time` is `HH:MM` (the backend rejects any
  /// other time format).
  Future<Result<void>> scheduleInterview(String applicationId, String date, String time) => guard(
    () async => _dio.post(
      '/admin/admission/applications/$applicationId/schedule-interview',
      data: {'interview_date': date, 'interview_time': time},
    ),
  );

  /// `Present` or `Absent`.
  Future<Result<void>> markAttendance(String applicationId, String presenceStatus) => guard(
    () async => _dio.post(
      '/admin/admission/applications/$applicationId/mark-attendance',
      data: {'presence_status': presenceStatus},
    ),
  );

  Future<Result<void>> qualify(String applicationId, String remarks) =>
      guard(() async => _dio.post('/admin/admission/applications/$applicationId/qualify', data: {'remarks': remarks}));

  Future<Result<void>> finalSelect(String applicationId, String remarks) => guard(
    () async => _dio.post('/admin/admission/applications/$applicationId/final-select', data: {'remarks': remarks}),
  );

  /// Rejecting from the detail page is a review with `review_status:
  /// Rejected` (the web's useReviewApplication).
  Future<Result<void>> reject(String applicationId, String remarks) => guard(
    () async => _dio.post(
      '/admin/admission/applications/$applicationId/review',
      data: {'review_status': 'Rejected', 'remarks': remarks},
    ),
  );

  /// Creates the student + login; the generated password is in the result
  /// and is never shown again.
  Future<Result<AdmissionRegistrationResult>> register(
    String applicationId, {
    required String admissionDate,
    String? rollNo,
    String? remarks,
  }) => guard(() async {
    final res = await _dio.post(
      '/admin/admission/applications/$applicationId/register',
      data: {'admission_date': admissionDate, 'roll_no': ?rollNo, 'remarks': ?remarks},
    );
    return AdmissionRegistrationResult.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// `status` is Pending, Verified or Rejected.
  Future<Result<void>> verifyDocument(String documentId, String status, String remarks) => guard(
    () async => _dio.patch(
      '/admin/admission/documents/$documentId/verify',
      data: {'verification_status': status, 'remarks': remarks},
    ),
  );

  /// Draft → submitted, on the admin's behalf.
  Future<Result<void>> submit(String applicationId) =>
      guard(() async => _dio.patch('/admin/admission/applications/$applicationId/submit'));

  /// The web's useDeleteApplicant error copy: 409 = already enrolled as a
  /// student, 404 = already gone; anything else keeps the server message.
  Future<Result<void>> deleteApplicant(String applicationId) async {
    try {
      await _dio.delete('/admission/applicants/$applicationId');
      return const Ok(null);
    } on DioException catch (e) {
      return Err(switch (e.response?.statusCode) {
        409 => const Failure.validation('This applicant has already been enrolled as a student and cannot be deleted.'),
        404 => const Failure.validation('This application no longer exists.'),
        _ => mapDioError(e),
      });
    } catch (e) {
      return Err(Failure.unknown(e.toString()));
    }
  }

  // ── Bulk actions ───────────────────────────────────────────────────────

  Future<Result<AdmissionBulkResult>> _bulk(String path, Map<String, dynamic> body) => guard(() async {
    final res = await _dio.post(path, data: body);
    return AdmissionBulkResult.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<AdmissionBulkResult>> bulkSubmit(List<String> ids) =>
      _bulk('/admin/admission/applications/bulk-submit', {'application_ids': ids});

  Future<Result<AdmissionBulkResult>> bulkVerifyPayment(List<String> ids, {String? remarks}) =>
      _bulk('/admin/admission/applications/bulk-verify-payment', {'application_ids': ids, 'remarks': ?remarks});

  Future<Result<AdmissionBulkResult>> bulkScheduleInterview(List<String> ids, String date, String time) => _bulk(
    '/admin/admission/applications/bulk-schedule-interview',
    {'application_ids': ids, 'interview_date': date, 'interview_time': time},
  );

  Future<Result<AdmissionBulkResult>> bulkMarkAttendance(List<String> ids, String presenceStatus) => _bulk(
    '/admin/admission/applications/bulk-mark-attendance',
    {'application_ids': ids, 'presence_status': presenceStatus},
  );

  Future<Result<AdmissionBulkResult>> bulkQualify(List<String> ids, {String? remarks}) =>
      _bulk('/admin/admission/applications/bulk-qualify', {'application_ids': ids, 'remarks': ?remarks});

  Future<Result<AdmissionBulkResult>> bulkFinalSelect(List<String> ids, {String? remarks}) =>
      _bulk('/admin/admission/applications/bulk-final-select', {'application_ids': ids, 'remarks': ?remarks});

  Future<Result<AdmissionBulkResult>> bulkRegister(List<String> ids, {String? admissionDate}) =>
      _bulk('/admin/admission/applications/bulk-register', {'application_ids': ids, 'admission_date': ?admissionDate});

  Future<Result<AdmissionBulkResult>> bulkReject(List<String> ids, {String? remarks}) =>
      _bulk('/admin/admission/applications/bulk-reject', {'application_ids': ids, 'remarks': ?remarks});

  Future<Result<AdmissionBulkResult>> bulkDeleteApplicants(List<String> ids) =>
      _bulk('/admission/applicants/bulk-delete', {'application_ids': ids});

  // ── New Application / Continue form ────────────────────────────────────

  /// The web puts `institution_id` and `session_id` in the body from its
  /// Redux context. Mobile reads the institution from its own access
  /// token's `institutionId` claim and the session from the class-teacher
  /// overview (see [AdmissionActiveSession]).
  Future<Result<AdmissionStartedApplication>> startApplication({required String classId}) async {
    final institutionId = await _institutionIdFromToken();
    if (institutionId == null) {
      return const Err(Failure.validation('Your account is not linked to an institution.'));
    }
    final session = await getActiveSession();
    if (session case Err(:final failure)) return Err(failure);
    final sessionId = (session as Ok<AdmissionActiveSession>).value.sessionId;
    return guard(() async {
      final res = await _dio.post(
        '/admission/applications',
        data: {'institution_id': institutionId, 'session_id': sessionId, 'applied_class_id': classId},
      );
      return AdmissionStartedApplication.fromJson(res.data['data'] as Map<String, dynamic>);
    });
  }

  Future<Result<AdmissionActiveSession>> getActiveSession() => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/overview');
    return AdmissionActiveSession.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<void>> saveBasicDetails(String applicationId, Map<String, dynamic> payload) =>
      guard(() async => _dio.put('/admission/applications/$applicationId/basic-details', data: payload));

  Future<Result<void>> saveParents(String applicationId, List<Map<String, dynamic>> parents) =>
      guard(() async => _dio.post('/admission/applications/$applicationId/parents/bulk', data: parents));

  Future<Result<void>> saveSiblings(String applicationId, Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admission/applications/$applicationId/siblings', data: payload));

  Future<Result<void>> savePreviousSchool(String applicationId, Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admission/applications/$applicationId/previous-school', data: payload));

  Future<Result<List<AdmissionDocumentType>>> getDocumentTypes() =>
      guard(() => _list('/admission/document-types', AdmissionDocumentType.fromJson));

  Future<Result<List<AdmissionDocument>>> getDocuments(String applicationId) =>
      guard(() => _list('/admission/applications/$applicationId/documents', AdmissionDocument.fromJson));

  /// Multipart `file` + `document_type_id` (JPG/PNG/PDF, 500 KB).
  Future<Result<void>> uploadDocument(
    String applicationId, {
    required String documentTypeId,
    required UploadFile file,
  }) => guard(
    () async => _dio.post(
      '/admission/applications/$applicationId/documents/upload',
      data: FormData.fromMap({'document_type_id': documentTypeId, 'file': file.toMultipart()}),
    ),
  );

  Future<Result<void>> deleteDocument(String applicationId, String documentId) =>
      guard(() async => _dio.delete('/admission/applications/$applicationId/documents/$documentId'));

  // ── Registration Fee Settings ──────────────────────────────────────────

  Future<Result<void>> setClassRegistrationFee(String classId, num fee) =>
      guard(() async => _dio.patch('/admin/admission/classes/$classId/fee', data: {'registration_fee': fee}));

  /// The `institutionId` claim of the stored access token (the JWT payload
  /// carries `{ userId, username, roles, institutionId }`).
  Future<String?> _institutionIdFromToken() async {
    final token = await SecureStorage.instance.getAccessToken();
    final parts = token?.split('.');
    if (parts == null || parts.length != 3) return null;
    try {
      final payload = jsonDecode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1])))) as Map<String, dynamic>;
      final id = payload['institutionId'];
      return id is String && id.isNotEmpty ? id : null;
    } catch (_) {
      return null;
    }
  }
}

/// The eight admissions list endpoints. [path] is under `/api`.
enum AdmissionListKind {
  applications('/admin/admission/applications'),
  incomplete('/admin/admission/incomplete-forms'),
  interview('/admin/admission/interview-schedule-list'),
  present('/admin/admission/present-applicants'),
  qualified('/admin/admission/qualified-applicants'),
  finalSelected('/admin/admission/final-selected-applicants'),
  rejected('/admin/admission/rejected-applicants');

  const AdmissionListKind(this.path);

  final String path;
}

/// A list page's filters — the web's useApplications / useInterviewSchedule
/// / … state. Blank filters are omitted from the query string. Value-equal
/// so it keys the family provider.
class AdmissionListRequest {
  const AdmissionListRequest(
    this.kind, {
    this.search = '',
    this.status = '',
    this.paymentStatus = '',
    this.sort = '',
    this.excludeStatus = '',
    this.page = 1,
    this.limit = 20,
  });

  final AdmissionListKind kind;
  final String search;
  final String status;
  final String paymentStatus;

  /// `''` (newest first), `name` or `date` (oldest first).
  final String sort;
  final String excludeStatus;
  final int page;
  final int limit;

  Map<String, dynamic> toParams() => {
    'page': page,
    'limit': limit,
    if (search.isNotEmpty) 'search': search,
    if (status.isNotEmpty) 'status': status,
    if (paymentStatus.isNotEmpty) 'payment_status': paymentStatus,
    if (sort.isNotEmpty) 'sort': sort,
    if (excludeStatus.isNotEmpty) 'exclude_status': excludeStatus,
  };

  AdmissionListRequest copyWith({String? search, String? status, String? paymentStatus, String? sort, int? page}) =>
      AdmissionListRequest(
        kind,
        search: search ?? this.search,
        status: status ?? this.status,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        sort: sort ?? this.sort,
        excludeStatus: excludeStatus,
        page: page ?? this.page,
        limit: limit,
      );

  List<Object> get _props => [kind, search, status, paymentStatus, sort, excludeStatus, page, limit];

  @override
  bool operator ==(Object other) {
    if (other is! AdmissionListRequest) return false;
    final a = _props, b = other._props;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  @override
  int get hashCode => Object.hashAll(_props);
}
