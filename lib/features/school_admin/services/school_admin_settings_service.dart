import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/school_admin_settings.dart';
import 'staff_directory_service.dart' show UploadFile;

/// The web's school-admin/ services: rolePermissionsService.js,
/// settingsService.js (only the logo route is live on the backend — the
/// /school/profile and /school/sessions routes it also codes against don't
/// exist, which is why the web page only renders the logo control) and
/// subscriptionService.js. Every route is `authorize('School Admin')` and
/// scoped to the caller's institution from the JWT.
class SchoolAdminSettingsService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson) async {
    final res = await _dio.get(path);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  // ── Role permissions ───────────────────────────────────────────────────

  Future<Result<List<RoleRef>>> getRoles() => guard(() => _list('/admin/roles', RoleRef.fromJson));

  Future<Result<List<PermissionModule>>> getCatalog() =>
      guard(() => _list('/admin/role-permissions/catalog', PermissionModule.fromJson));

  Future<Result<RolePermissionGrants>> getRolePermissions(String roleId) => guard(() async {
    final res = await _dio.get('/admin/role-permissions/$roleId');
    return RolePermissionGrants.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// Replaces the role's whole grant set (deleteMany + createMany server-side).
  Future<Result<RolePermissionGrants>> saveRolePermissions(String roleId, List<String> permissionKeys) =>
      guard(() async {
        final res = await _dio.put('/admin/role-permissions/$roleId', data: {'permission_keys': permissionKeys});
        return RolePermissionGrants.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  // ── Settings / subscription ────────────────────────────────────────────

  /// Multipart field `logo` (lib/logoUpload.js: JPG/PNG/WebP, 2 MB).
  Future<Result<SchoolLogo>> uploadLogo(UploadFile logo) => guard(() async {
    final res = await _dio.post('/admin/settings/logo', data: FormData.fromMap({'logo': logo.toMultipart()}));
    return SchoolLogo.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<SchoolSubscription>> getSubscription() => guard(() async {
    final res = await _dio.get('/admin/settings/subscription');
    return SchoolSubscription.fromJson(res.data['data'] as Map<String, dynamic>);
  });
}
