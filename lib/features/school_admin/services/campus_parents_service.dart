import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_campus_parents.dart';
import '../../../core/models/student_brief.dart';
import 'staff_directory_service.dart' show UploadFile;

/// Parent Management — every call the web's parentDirectoryService.js
/// makes (backend admin/parents/parents.router.js, School Admin only), plus
/// the student-side "create portal login" (POST /admin/students/:studentId/
/// parents/:parentId/account) and the student search the Add Parent / Link
/// Child pickers use (GET /admin/students?search=&limit=20).
class AdminParentsService {
  Dio get _dio => DioClient.instance.dio;

  Future<Result<ParentAccountPage>> list(ParentQuery query) => guard(() async {
    final res = await _dio.get('/admin/parents', queryParameters: query.toParams());
    return ParentAccountPage.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<ParentAccount>> detail(String parentAccountId) => guard(() async {
    final res = await _dio.get('/admin/parents/$parentAccountId');
    return ParentAccount.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// Creates the bio row for one student's application; returns its
  /// `parent_id` (the raw `parents` row comes back). Never creates a login.
  Future<Result<String>> create(Map<String, dynamic> payload) => guard(() async {
    final res = await _dio.post('/admin/parents', data: payload);
    return (res.data['data'] as Map<String, dynamic>)['parent_id'] as String;
  });

  /// Only changed fields; the backend syncs them across every linked child.
  Future<Result<void>> update(String parentAccountId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/parents/$parentAccountId', data: payload));

  Future<Result<void>> activate(String id) => guard(() async => _dio.patch('/admin/parents/$id/activate'));

  Future<Result<void>> deactivate(String id) => guard(() async => _dio.patch('/admin/parents/$id/deactivate'));

  Future<Result<void>> unlock(String id) => guard(() async => _dio.patch('/admin/parents/$id/unlock'));

  /// Server-generated password, shown once.
  Future<Result<String?>> resetPassword(String id) => guard(() async {
    final res = await _dio.patch('/admin/parents/$id/reset-password');
    return (res.data['data'] as Map<String, dynamic>?)?['password'] as String?;
  });

  Future<Result<void>> linkChild(String id, {required String studentId, required String relationType}) => guard(
    () async =>
        _dio.post('/admin/parents/$id/children', data: {'student_id': studentId, 'relation_type': relationType}),
  );

  Future<Result<void>> unlinkChild(String id, String studentId) =>
      guard(() async => _dio.delete('/admin/parents/$id/children/$studentId'));

  /// Multipart `photo` (JPG/PNG/WebP, 2 MB). 503 until the backend's
  /// pending photo_url migration is applied.
  Future<Result<void>> uploadPhoto(String id, UploadFile file) =>
      guard(() async => _dio.post('/admin/parents/$id/photo', data: FormData.fromMap({'photo': file.toMultipart()})));

  Future<Result<void>> removePhoto(String id) => guard(() async => _dio.delete('/admin/parents/$id/photo'));

  Future<Result<ParentLoginResult>> createLogin({required String studentId, required String parentId}) =>
      guard(() async {
        final res = await _dio.post('/admin/students/$studentId/parents/$parentId/account');
        return ParentLoginResult.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// The Add Parent / Link Child student picker — GET /admin/students
  /// (STUDENT_LIST_SELECT), first 20 matches.
  Future<Result<List<StudentBrief>>> searchStudents(String search) => guard(() async {
    final res = await _dio.get('/admin/students', queryParameters: {'search': search, 'limit': 20});
    final data = (res.data['data'] as Map<String, dynamic>?)?['data'] as List? ?? const [];
    return data.map((e) => StudentBrief.fromJson(e as Map<String, dynamic>)).toList();
  });
}

/// The Parents list filters (web useParentList) — value-equal so it can key
/// a family provider. Blank filters are omitted from the query.
class ParentQuery {
  const ParentQuery({
    this.search = '',
    this.page = 1,
    this.limit = 20,
    this.classId = '',
    this.sectionId = '',
    this.accountStatus = '',
  });

  final String search;
  final int page;
  final int limit;
  final String classId;
  final String sectionId;
  final String accountStatus;

  ParentQuery copyWith({
    String? search,
    int? page,
    int? limit,
    String? classId,
    String? sectionId,
    String? accountStatus,
  }) => ParentQuery(
    search: search ?? this.search,
    page: page ?? this.page,
    limit: limit ?? this.limit,
    classId: classId ?? this.classId,
    sectionId: sectionId ?? this.sectionId,
    accountStatus: accountStatus ?? this.accountStatus,
  );

  Map<String, dynamic> toParams() => {
    'search': search,
    'page': page,
    'limit': limit,
    if (classId.isNotEmpty) 'class_id': classId,
    if (sectionId.isNotEmpty) 'section_id': sectionId,
    if (accountStatus.isNotEmpty) 'account_status': accountStatus,
  };

  bool get hasFilters => search.isNotEmpty || classId.isNotEmpty || sectionId.isNotEmpty || accountStatus.isNotEmpty;

  @override
  bool operator ==(Object other) =>
      other is ParentQuery &&
      other.search == search &&
      other.page == page &&
      other.limit == limit &&
      other.classId == classId &&
      other.sectionId == sectionId &&
      other.accountStatus == accountStatus;

  @override
  int get hashCode => Object.hash(search, page, limit, classId, sectionId, accountStatus);
}
