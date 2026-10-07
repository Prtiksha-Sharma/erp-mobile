import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_staff.dart';
import '../../../core/models/school_admin_settings.dart';

/// Every `/admin/staff/*` call the web's staffDirectoryService.js makes
/// (backend features/admin/staff/staff.router.js), plus the two lookups
/// the staff forms need: `/admin/roles` (Add Staff's role checkboxes) and
/// `/school/branches` (branch pickers) — duplicated here rather than
/// imported from the settings service, same as the web does.
///
/// Account lifecycle (activate/deactivate/unlock/reset/delete) is keyed by
/// the account's `user_id`; everything else by `staff_id`.
class StaffDirectoryService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson) async {
    final res = await _dio.get(path);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  // ── Roster ─────────────────────────────────────────────────────────────

  /// Optional filters are omitted when blank, same as the web's useStaffList.
  Future<Result<StaffPage>> listStaff(StaffQuery query) => guard(() async {
    final res = await _dio.get('/admin/staff', queryParameters: query.toParams());
    return StaffPage.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<StaffSummary>> getSummary() => guard(() async {
    final res = await _dio.get('/admin/staff/summary');
    return StaffSummary.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<StaffMember>> getStaff(String staffId) => guard(() async {
    final res = await _dio.get('/admin/staff/$staffId');
    return StaffMember.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<StaffCredentials>> createStaff(Map<String, dynamic> payload) => guard(() async {
    final res = await _dio.post('/admin/staff', data: payload);
    return StaffCredentials.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<StaffMember>> updateStaff(String staffId, Map<String, dynamic> payload) => guard(() async {
    final res = await _dio.patch('/admin/staff/$staffId', data: payload);
    return StaffMember.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  // ── Account lifecycle (users.user_id) ──────────────────────────────────

  Future<Result<void>> activate(String userId) =>
      guard(() async => _dio.patch('/admin/staff/accounts/$userId/activate'));

  Future<Result<void>> deactivate(String userId) =>
      guard(() async => _dio.patch('/admin/staff/accounts/$userId/deactivate'));

  Future<Result<void>> unlock(String userId) => guard(() async => _dio.patch('/admin/staff/accounts/$userId/unlock'));

  /// The admin types the new password (accounts.service.js#resetPassword,
  /// min 8 chars); it also deletes every refresh token for the account.
  Future<Result<void>> resetPassword(String userId, String newPassword) => guard(
    () async => _dio.patch('/admin/staff/accounts/$userId/reset-password', data: {'new_password': newPassword}),
  );

  /// Soft delete: login deleted + SUSPENDED, staff row TERMINATED.
  Future<Result<void>> softDelete(String userId) => guard(() async => _dio.delete('/admin/staff/accounts/$userId'));

  // ── Employee detail tabs ───────────────────────────────────────────────

  Future<Result<List<StaffDocument>>> getDocuments(String staffId) =>
      guard(() => _list('/admin/staff/$staffId/documents', StaffDocument.fromJson));

  /// Multipart `document` + `document_name` — auto-VERIFIED server-side.
  Future<Result<void>> uploadDocument(String staffId, {required String documentName, required UploadFile file}) =>
      guard(
        () async => _dio.post(
          '/admin/staff/$staffId/documents',
          data: FormData.fromMap({'document_name': documentName, 'document': file.toMultipart()}),
        ),
      );

  Future<Result<void>> verifyDocument(String staffId, String documentId) =>
      guard(() async => _dio.patch('/admin/staff/$staffId/documents/$documentId/verify'));

  Future<Result<void>> rejectDocument(String staffId, String documentId, String remarks) =>
      guard(() async => _dio.patch('/admin/staff/$staffId/documents/$documentId/reject', data: {'remarks': remarks}));

  Future<Result<void>> deleteDocument(String staffId, String documentId) =>
      guard(() async => _dio.delete('/admin/staff/$staffId/documents/$documentId'));

  Future<Result<List<StaffQualification>>> getQualifications(String staffId) =>
      guard(() => _list('/admin/staff/$staffId/qualifications', StaffQualification.fromJson));

  /// [fields] are sent only when non-blank (the web appends non-empty
  /// FormData entries only); the optional `certificate` file rides along.
  Future<Result<void>> saveQualification(
    String staffId, {
    String? qualificationId,
    required Map<String, String> fields,
    UploadFile? certificate,
  }) => guard(() async {
    final form = FormData.fromMap({
      for (final e in fields.entries)
        if (e.value.trim().isNotEmpty) e.key: e.value.trim(),
      'certificate': ?certificate?.toMultipart(),
    });
    final path = '/admin/staff/$staffId/qualifications';
    if (qualificationId == null) {
      await _dio.post(path, data: form);
    } else {
      await _dio.patch('$path/$qualificationId', data: form);
    }
  });

  Future<Result<void>> deleteQualification(String staffId, String qualificationId) =>
      guard(() async => _dio.delete('/admin/staff/$staffId/qualifications/$qualificationId'));

  Future<Result<List<StaffExperience>>> getExperience(String staffId) =>
      guard(() => _list('/admin/staff/$staffId/experience', StaffExperience.fromJson));

  /// Same FormData the web's AddExperienceModal builds: organization_name,
  /// start_date and is_current always; end_date only when not current; the
  /// other text fields only when filled.
  Future<Result<void>> saveExperience(
    String staffId, {
    String? experienceId,
    required Map<String, String> fields,
    UploadFile? letter,
  }) => guard(() async {
    final form = FormData.fromMap({...fields, 'experience_letter': ?letter?.toMultipart()});
    final path = '/admin/staff/$staffId/experience';
    if (experienceId == null) {
      await _dio.post(path, data: form);
    } else {
      await _dio.patch('$path/$experienceId', data: form);
    }
  });

  Future<Result<void>> deleteExperience(String staffId, String experienceId) =>
      guard(() async => _dio.delete('/admin/staff/$staffId/experience/$experienceId'));

  /// `data: null` until a structure has been assigned.
  Future<Result<SalaryStructureAssignment?>> getSalaryStructure(String staffId) => guard(() async {
    final res = await _dio.get('/admin/staff/$staffId/salary-structure');
    final data = res.data['data'];
    return data == null ? null : SalaryStructureAssignment.fromJson(data as Map<String, dynamic>);
  });

  Future<Result<void>> assignSalaryStructure(
    String staffId, {
    required String templateId,
    required num ctcAmount,
    String? effectiveFrom,
  }) => guard(
    () async => _dio.patch(
      '/admin/staff/$staffId/salary-structure',
      data: {'template_id': templateId, 'ctc_amount': ctcAmount, 'effective_from': ?effectiveFrom},
    ),
  );

  Future<Result<List<StaffPrincipalRemark>>> getPrincipalRemarks(String staffId) =>
      guard(() => _list('/admin/staff/$staffId/principal-remarks', StaffPrincipalRemark.fromJson));

  // ── Lookups ────────────────────────────────────────────────────────────

  Future<Result<List<SalaryTemplate>>> getSalaryTemplates() =>
      guard(() => _list('/admin/payroll/templates', SalaryTemplate.fromJson));

  Future<Result<List<RoleRef>>> getRoles() => guard(() => _list('/admin/roles', RoleRef.fromJson));

  Future<Result<List<SchoolBranch>>> getBranches() => guard(() => _list('/school/branches', SchoolBranch.fromJson));
}

/// GET /admin/staff filters — the web's useStaffList arguments. Blank
/// filters are omitted from the query string.
class StaffQuery {
  const StaffQuery({
    this.search = '',
    this.page = 1,
    this.limit = 10,
    this.role = '',
    this.employmentStatus = '',
    this.department = '',
    this.designation = '',
    this.employeeType = '',
    this.branchId = '',
    this.joiningFrom = '',
    this.joiningTo = '',
  });

  final String search;
  final int page;
  final int limit;
  final String role;
  final String employmentStatus;
  final String department;
  final String designation;
  final String employeeType;
  final String branchId;

  /// `YYYY-MM-DD`.
  final String joiningFrom;
  final String joiningTo;

  Map<String, dynamic> toParams() => {
    'search': search,
    'page': page,
    'limit': limit,
    if (role.isNotEmpty) 'role': role,
    if (employmentStatus.isNotEmpty) 'employment_status': employmentStatus,
    if (department.isNotEmpty) 'department': department,
    if (designation.isNotEmpty) 'designation': designation,
    if (employeeType.isNotEmpty) 'employee_type': employeeType,
    if (branchId.isNotEmpty) 'branch_id': branchId,
    if (joiningFrom.isNotEmpty) 'joining_date_from': joiningFrom,
    if (joiningTo.isNotEmpty) 'joining_date_to': joiningTo,
  };

  StaffQuery copyWith({
    String? search,
    int? page,
    String? role,
    String? employmentStatus,
    String? department,
    String? designation,
    String? employeeType,
    String? branchId,
    String? joiningFrom,
    String? joiningTo,
  }) => StaffQuery(
    search: search ?? this.search,
    page: page ?? this.page,
    limit: limit,
    role: role ?? this.role,
    employmentStatus: employmentStatus ?? this.employmentStatus,
    department: department ?? this.department,
    designation: designation ?? this.designation,
    employeeType: employeeType ?? this.employeeType,
    branchId: branchId ?? this.branchId,
    joiningFrom: joiningFrom ?? this.joiningFrom,
    joiningTo: joiningTo ?? this.joiningTo,
  );

  // Value equality so it can key a FutureProvider.family.
  List<Object> get _props => [
    search, page, limit, role, employmentStatus, department, designation, employeeType, branchId, //
    joiningFrom, joiningTo,
  ];

  @override
  bool operator ==(Object other) {
    if (other is! StaffQuery) return false;
    final a = _props, b = other._props;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  @override
  int get hashCode => Object.hashAll(_props);
}

/// A picked file ready for a multipart upload, already validated against
/// the backend's multer limits (duplicated from the teacher feature's
/// UploadFile, not imported — each role owns its own service file).
class UploadFile {
  const UploadFile({required this.name, required this.bytes, required this.mimeType});

  final String name;
  final List<int> bytes;
  final String mimeType;

  MultipartFile toMultipart() =>
      MultipartFile.fromBytes(bytes, filename: name, contentType: DioMediaType.parse(mimeType));
}

/// `YYYY-MM-DD`, what the web's `<input type="date">` sends.
String isoDate(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
