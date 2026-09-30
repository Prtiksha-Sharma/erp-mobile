import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';

part 'student_profile.freezed.dart';
part 'student_profile.g.dart';

/// GET /student/profile — shape from
/// edusoft_backend/src/features/admin/student/student.service.js (getStudentById,
/// reused by student/profile.controller.js). Only the fields the Profile
/// and Home screens actually render are modeled; the rest of the (large)
/// payload — status history, raw documents, audit timestamps — is ignored.
@freezed
abstract class StudentProfile with _$StudentProfile {
  const factory StudentProfile({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') required String admissionNo,
    @JsonKey(name: 'admission_date') DateTime? admissionDate,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'student_status') String? studentStatus,
    @JsonKey(name: 'institutions') InstitutionRef? institution,
    @JsonKey(name: 'current_class') ClassRef? currentClass,
    @JsonKey(name: 'current_section') SectionRef? currentSection,
    @JsonKey(name: 'applicants') ApplicantInfo? applicant,
    @JsonKey(name: 'admission_applications') AdmissionApplicationInfo? application,
    @JsonKey(name: 'student_addresses') @Default([]) List<StudentAddress> addresses,
    @JsonKey(name: 'student_id_cards') @Default([]) List<IdCardSummary> idCards,
    @JsonKey(name: 'student_enrollments') @Default([]) List<EnrollmentSummary> enrollments,
  }) = _StudentProfile;

  factory StudentProfile.fromJson(Map<String, dynamic> json) => _$StudentProfileFromJson(json);
}

extension StudentProfileDisplay on StudentProfile {
  /// First + middle + last, or null when the applicant has no name at all
  /// (web: studentMappers.fullName).
  String? get fullName => applicant?.fullName;

  String get displayName => fullName ?? admissionNo;

  String? get className => currentClass?.className;
  String? get sectionName => currentSection?.sectionName;
  String? get institutionName => institution?.institutionName;
  String? get sessionName => enrollments.isEmpty ? null : enrollments.first.session?.sessionName;
  IdCardSummary? get idCard => idCards.isEmpty ? null : idCards.first;
  List<ParentInfo> get parents => application?.parents ?? const [];
  List<PreviousSchool> get previousSchools => application?.previousSchools ?? const [];
}

@freezed
abstract class ApplicantInfo with _$ApplicantInfo {
  const factory ApplicantInfo({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'middle_name') String? middleName,
    @JsonKey(name: 'last_name') String? lastName,
    String? gender,
    DateTime? dob,
    @JsonKey(name: 'blood_group') String? bloodGroup,
    String? nationality,
    @JsonKey(name: 'contact_no') String? contactNo,
    @JsonKey(name: 'email_id') String? emailId,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'categories') CategoryRef? category,
    @JsonKey(name: 'religions') ReligionRef? religion,
  }) = _ApplicantInfo;

  factory ApplicantInfo.fromJson(Map<String, dynamic> json) => _$ApplicantInfoFromJson(json);
}

extension ApplicantInfoDisplay on ApplicantInfo {
  String? get fullName {
    final name = [firstName, middleName, lastName].whereType<String>().where((s) => s.trim().isNotEmpty).join(' ');
    return name.trim().isEmpty ? null : name.trim();
  }
}

@freezed
abstract class CategoryRef with _$CategoryRef {
  const factory CategoryRef({@JsonKey(name: 'category_name') String? categoryName}) = _CategoryRef;

  factory CategoryRef.fromJson(Map<String, dynamic> json) => _$CategoryRefFromJson(json);
}

@freezed
abstract class ReligionRef with _$ReligionRef {
  const factory ReligionRef({@JsonKey(name: 'religion_name') String? religionName}) = _ReligionRef;

  factory ReligionRef.fromJson(Map<String, dynamic> json) => _$ReligionRefFromJson(json);
}

/// `admission_applications` is a required relation on students, but only
/// its `parents` and `previous_schools` arrays are shown to the student.
@freezed
abstract class AdmissionApplicationInfo with _$AdmissionApplicationInfo {
  const factory AdmissionApplicationInfo({
    @Default([]) List<ParentInfo> parents,
    @JsonKey(name: 'previous_schools') @Default([]) List<PreviousSchool> previousSchools,
  }) = _AdmissionApplicationInfo;

  factory AdmissionApplicationInfo.fromJson(Map<String, dynamic> json) => _$AdmissionApplicationInfoFromJson(json);
}

/// `student_addresses` rows — note `address_line_1` (with underscore),
/// unlike the admission-application addresses' `address_line1`.
@freezed
abstract class StudentAddress with _$StudentAddress {
  const factory StudentAddress({
    @JsonKey(name: 'address_id') required String addressId,
    @JsonKey(name: 'address_type') String? addressType,
    @JsonKey(name: 'address_line_1') String? addressLine1,
    @JsonKey(name: 'address_line_2') String? addressLine2,
    String? landmark,
    String? city,
    String? state,
    @LooseStringConverter() String? pincode,
  }) = _StudentAddress;

  factory StudentAddress.fromJson(Map<String, dynamic> json) => _$StudentAddressFromJson(json);
}

@freezed
abstract class ParentInfo with _$ParentInfo {
  const factory ParentInfo({
    @JsonKey(name: 'parent_id') required String parentId,
    @JsonKey(name: 'relation_type') String? relationType,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
  }) = _ParentInfo;

  factory ParentInfo.fromJson(Map<String, dynamic> json) => _$ParentInfoFromJson(json);
}

@freezed
abstract class PreviousSchool with _$PreviousSchool {
  const factory PreviousSchool({
    @JsonKey(name: 'previous_school_id') required String previousSchoolId,
    @JsonKey(name: 'school_name') String? schoolName,
    @JsonKey(name: 'board_name') String? boardName,
    @JsonKey(name: 'class_last_attended') String? classLastAttended,
    // Prisma Decimal -> JSON string ("85.5"); display-only.
    @LooseStringConverter() String? percentage,
  }) = _PreviousSchool;

  factory PreviousSchool.fromJson(Map<String, dynamic> json) => _$PreviousSchoolFromJson(json);
}

@freezed
abstract class IdCardSummary with _$IdCardSummary {
  const factory IdCardSummary({
    @JsonKey(name: 'card_number') String? cardNumber,
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    @JsonKey(name: 'expiry_date') DateTime? expiryDate,
  }) = _IdCardSummary;

  factory IdCardSummary.fromJson(Map<String, dynamic> json) => _$IdCardSummaryFromJson(json);
}

@freezed
abstract class EnrollmentSummary with _$EnrollmentSummary {
  const factory EnrollmentSummary({
    @JsonKey(name: 'academic_sessions') SessionRef? session,
  }) = _EnrollmentSummary;

  factory EnrollmentSummary.fromJson(Map<String, dynamic> json) => _$EnrollmentSummaryFromJson(json);
}
