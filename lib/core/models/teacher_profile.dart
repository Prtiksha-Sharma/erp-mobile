import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_profile.freezed.dart';
part 'teacher_profile.g.dart';

@freezed
abstract class TeacherEmailRef with _$TeacherEmailRef {
  const factory TeacherEmailRef({required String email}) = _TeacherEmailRef;

  factory TeacherEmailRef.fromJson(Map<String, dynamic> json) => _$TeacherEmailRefFromJson(json);
}

/// Detail-context shape — matches GET /parent/teachers/:staffId, verified
/// live. Richer than teacher_summary.dart's TeacherSummary (adds
/// department, qualification, date_of_joining, gender, email) — see that
/// file's own comment on why these stay two separate types.
@freezed
abstract class TeacherProfile with _$TeacherProfile {
  const factory TeacherProfile({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') required String fullName,
    String? designation,
    String? department,
    @JsonKey(name: 'contact_number') String? contactNumber,
    String? qualification,
    @JsonKey(name: 'date_of_joining') DateTime? dateOfJoining,
    String? gender,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
    @JsonKey(name: 'users') TeacherEmailRef? emailRef,
  }) = _TeacherProfile;

  factory TeacherProfile.fromJson(Map<String, dynamic> json) => _$TeacherProfileFromJson(json);
}
