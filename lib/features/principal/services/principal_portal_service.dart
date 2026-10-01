import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/principal_dashboard.dart';
import '../../../core/models/staff_profile.dart';

/// Every `/principal/*` endpoint — mirrors the web's principalPortalService.js.
/// Backend principal/principal.router.js: `authorize('Principal')` +
/// `resolveStaffSelf()`, so the principal is resolved from the JWT and no
/// staffId is ever sent.
///
/// `/dashboard` additionally needs the `principal.dashboard.view` grant on
/// the Principal role (requirePermission); until School Admin grants it the
/// route answers 403, which the screen shows with Retry — same as the web.
class PrincipalPortalService {
  Dio get _dio => DioClient.instance.dio;

  StaffProfile _profileFrom(Response<dynamic> res) =>
      StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);

  // ── Profile ────────────────────────────────────────────────────────────
  Future<Result<StaffProfile>> getMyProfile() =>
      guard(() async => _profileFrom(await _dio.get('/principal/profile')));

  /// Only contact_number / address / profile_photo_url are accepted
  /// (profile.service.js SELF_EDITABLE_FIELDS). An empty field is sent as
  /// null, same as the web's useEditProfileForm.
  Future<Result<StaffProfile>> updateMyProfile({String? contactNumber, String? address}) => guard(() async {
        final res = await _dio.patch('/principal/profile', data: {
          'contact_number': _blankToNull(contactNumber),
          'address': _blankToNull(address),
        });
        return _profileFrom(res);
      });

  /// "Delete" on the web's photo editor — PATCH profile_photo_url: null.
  Future<Result<StaffProfile>> removeMyProfilePhoto() =>
      guard(() async => _profileFrom(await _dio.patch('/principal/profile', data: {'profile_photo_url': null})));

  /// Multipart field `photo` (staffPhotoUpload: JPG/PNG/WebP, 2 MB).
  Future<Result<StaffProfile>> uploadMyProfilePhoto(PhotoUpload photo) => guard(() async {
        final res = await _dio.post('/principal/profile/photo', data: FormData.fromMap({'photo': photo.toMultipart()}));
        return _profileFrom(res);
      });

  // ── Dashboard ──────────────────────────────────────────────────────────
  Future<Result<PrincipalDashboard>> getDashboard() => guard(() async {
        final res = await _dio.get('/principal/dashboard');
        return PrincipalDashboard.fromJson(res.data['data'] as Map<String, dynamic>);
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
