import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_summary.freezed.dart';
part 'teacher_summary.g.dart';

/// List-context shape — matches GET /parent/children/:studentId/teachers,
/// verified live. Deliberately a separate type from teacher_profile.dart's
/// TeacherProfile (the detail-context shape) rather than one shared model:
/// the two endpoints return genuinely different field sets (this one has
/// no department/qualification/email), same reasoning as TeacherRef vs
/// TeacherNameRef in the Homework/Timetable slices.
@freezed
abstract class TeacherSummary with _$TeacherSummary {
  const factory TeacherSummary({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
    @JsonKey(name: 'contact_number') String? contactNumber,
    @JsonKey(name: 'profile_photo_url') String? profilePhotoUrl,
  }) = _TeacherSummary;

  factory TeacherSummary.fromJson(Map<String, dynamic> json) => _$TeacherSummaryFromJson(json);
}

/// class_teacher is nullable (no class teacher assigned yet is a real
/// state, not an error) and subject_teachers is genuinely empty in live
/// test data — confirmed live, both must render sensibly, not blank.
@freezed
abstract class ChildTeachers with _$ChildTeachers {
  const factory ChildTeachers({
    @JsonKey(name: 'class_teacher') TeacherSummary? classTeacher,
    @JsonKey(name: 'subject_teachers') required List<TeacherSummary> subjectTeachers,
  }) = _ChildTeachers;

  factory ChildTeachers.fromJson(Map<String, dynamic> json) => _$ChildTeachersFromJson(json);
}
