import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/staff_profile.dart';
import '../../../core/models/vice_principal_dashboard.dart';

/// Every `/vice-principal/*` endpoint — mirrors the web's
/// vicePrincipalPortalService.js. Backend vice-principal/vice-principal
/// .router.js: `authorize('Vice Principal')` + `resolveStaffSelf()`, so the
/// vice principal is resolved from the JWT and no staffId is ever sent.
///
/// Unlike Principal's `/dashboard`, this one carries no extra permission
/// gate — only the role check.
class VicePrincipalPortalService {
  Dio get _dio => DioClient.instance.dio;

  StaffProfile _profileFrom(Response<dynamic> res) =>
      StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);

  // ── Profile ────────────────────────────────────────────────────────────
  Future<Result<StaffProfile>> getMyProfile() =>
      guard(() async => _profileFrom(await _dio.get('/vice-principal/profile')));

  /// Only contact_number / address / profile_photo_url are accepted
  /// (profile.service.js SELF_EDITABLE_FIELDS). An empty field is sent as
  /// null, same as the web's useEditProfileForm.
  Future<Result<StaffProfile>> updateMyProfile({String? contactNumber, String? address}) => guard(() async {
        final res = await _dio.patch('/vice-principal/profile', data: {
          'contact_number': _blankToNull(contactNumber),
          'address': _blankToNull(address),
        });
        return _profileFrom(res);
      });

  /// "Delete" on the web's photo editor — PATCH profile_photo_url: null.
  Future<Result<StaffProfile>> removeMyProfilePhoto() => guard(
      () async => _profileFrom(await _dio.patch('/vice-principal/profile', data: {'profile_photo_url': null})));

  /// Multipart field `photo` (staffPhotoUpload: JPG/PNG/WebP, 2 MB).
  Future<Result<StaffProfile>> uploadMyProfilePhoto(PhotoUpload photo) => guard(() async {
        final res = await _dio.post(
          '/vice-principal/profile/photo',
          data: FormData.fromMap({'photo': photo.toMultipart()}),
        );
        return _profileFrom(res);
      });

  // ── Dashboard ──────────────────────────────────────────────────────────
  Future<Result<VicePrincipalDashboard>> getDashboard() => guard(() async {
        final res = await _dio.get('/vice-principal/dashboard');
        return VicePrincipalDashboard.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  static String? _blankToNull(String? v) => (v == null || v.trim().isEmpty) ? null : v.trim();
}

/// A picked image ready for the multipart upload, already validated against
/// staffPhotoUpload's allow-list and size limit.
class PhotoUpload {
  const PhotoUpload({required this.name, required this.bytes, required this.mimeType});

  final String name;
  final List<int> bytes;
  final String mimeType;

  MultipartFile toMultipart() =>
      MultipartFile.fromBytes(bytes, filename: name, contentType: DioMediaType.parse(mimeType));
}
