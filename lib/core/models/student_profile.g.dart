// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentProfile _$StudentProfileFromJson(
  Map<String, dynamic> json,
) => _StudentProfile(
  studentId: json['student_id'] as String,
  admissionNo: json['admission_no'] as String,
  admissionDate: json['admission_date'] == null
      ? null
      : DateTime.parse(json['admission_date'] as String),
  rollNo: const LooseStringConverter().fromJson(json['roll_no']),
  studentStatus: json['student_status'] as String?,
  institution: json['institutions'] == null
      ? null
      : InstitutionRef.fromJson(json['institutions'] as Map<String, dynamic>),
  currentClass: json['current_class'] == null
      ? null
      : ClassRef.fromJson(json['current_class'] as Map<String, dynamic>),
  currentSection: json['current_section'] == null
      ? null
      : SectionRef.fromJson(json['current_section'] as Map<String, dynamic>),
  applicant: json['applicants'] == null
      ? null
      : ApplicantInfo.fromJson(json['applicants'] as Map<String, dynamic>),
  application: json['admission_applications'] == null
      ? null
      : AdmissionApplicationInfo.fromJson(
          json['admission_applications'] as Map<String, dynamic>,
        ),
  addresses:
      (json['student_addresses'] as List<dynamic>?)
          ?.map((e) => StudentAddress.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  idCards:
      (json['student_id_cards'] as List<dynamic>?)
          ?.map((e) => IdCardSummary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  enrollments:
      (json['student_enrollments'] as List<dynamic>?)
          ?.map((e) => EnrollmentSummary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$StudentProfileToJson(_StudentProfile instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'admission_date': instance.admissionDate?.toIso8601String(),
      'roll_no': const LooseStringConverter().toJson(instance.rollNo),
      'student_status': instance.studentStatus,
      'institutions': instance.institution,
      'current_class': instance.currentClass,
      'current_section': instance.currentSection,
      'applicants': instance.applicant,
      'admission_applications': instance.application,
      'student_addresses': instance.addresses,
      'student_id_cards': instance.idCards,
      'student_enrollments': instance.enrollments,
    };

_ApplicantInfo _$ApplicantInfoFromJson(Map<String, dynamic> json) =>
    _ApplicantInfo(
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      bloodGroup: json['blood_group'] as String?,
      nationality: json['nationality'] as String?,
      contactNo: json['contact_no'] as String?,
      emailId: json['email_id'] as String?,
      photoUrl: json['photo_url'] as String?,
      category: json['categories'] == null
          ? null
          : CategoryRef.fromJson(json['categories'] as Map<String, dynamic>),
      religion: json['religions'] == null
          ? null
          : ReligionRef.fromJson(json['religions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicantInfoToJson(_ApplicantInfo instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'dob': instance.dob?.toIso8601String(),
      'blood_group': instance.bloodGroup,
      'nationality': instance.nationality,
      'contact_no': instance.contactNo,
      'email_id': instance.emailId,
      'photo_url': instance.photoUrl,
      'categories': instance.category,
      'religions': instance.religion,
    };

_CategoryRef _$CategoryRefFromJson(Map<String, dynamic> json) =>
    _CategoryRef(categoryName: json['category_name'] as String?);

Map<String, dynamic> _$CategoryRefToJson(_CategoryRef instance) =>
    <String, dynamic>{'category_name': instance.categoryName};

_ReligionRef _$ReligionRefFromJson(Map<String, dynamic> json) =>
    _ReligionRef(religionName: json['religion_name'] as String?);

Map<String, dynamic> _$ReligionRefToJson(_ReligionRef instance) =>
    <String, dynamic>{'religion_name': instance.religionName};

_AdmissionApplicationInfo _$AdmissionApplicationInfoFromJson(
  Map<String, dynamic> json,
) => _AdmissionApplicationInfo(
  parents:
      (json['parents'] as List<dynamic>?)
          ?.map((e) => ParentInfo.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  previousSchools:
      (json['previous_schools'] as List<dynamic>?)
          ?.map((e) => PreviousSchool.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AdmissionApplicationInfoToJson(
  _AdmissionApplicationInfo instance,
) => <String, dynamic>{
  'parents': instance.parents,
  'previous_schools': instance.previousSchools,
};

_StudentAddress _$StudentAddressFromJson(Map<String, dynamic> json) =>
    _StudentAddress(
      addressId: json['address_id'] as String,
      addressType: json['address_type'] as String?,
      addressLine1: json['address_line_1'] as String?,
      addressLine2: json['address_line_2'] as String?,
      landmark: json['landmark'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      pincode: const LooseStringConverter().fromJson(json['pincode']),
    );

Map<String, dynamic> _$StudentAddressToJson(_StudentAddress instance) =>
    <String, dynamic>{
      'address_id': instance.addressId,
      'address_type': instance.addressType,
      'address_line_1': instance.addressLine1,
      'address_line_2': instance.addressLine2,
      'landmark': instance.landmark,
      'city': instance.city,
      'state': instance.state,
      'pincode': const LooseStringConverter().toJson(instance.pincode),
    };

_ParentInfo _$ParentInfoFromJson(Map<String, dynamic> json) => _ParentInfo(
  parentId: json['parent_id'] as String,
  relationType: json['relation_type'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  mobileNo: json['mobile_no'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$ParentInfoToJson(_ParentInfo instance) =>
    <String, dynamic>{
      'parent_id': instance.parentId,
      'relation_type': instance.relationType,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_no': instance.mobileNo,
      'email': instance.email,
    };

_PreviousSchool _$PreviousSchoolFromJson(Map<String, dynamic> json) =>
    _PreviousSchool(
      previousSchoolId: json['previous_school_id'] as String,
      schoolName: json['school_name'] as String?,
      boardName: json['board_name'] as String?,
      classLastAttended: json['class_last_attended'] as String?,
      percentage: const LooseStringConverter().fromJson(json['percentage']),
    );

Map<String, dynamic> _$PreviousSchoolToJson(_PreviousSchool instance) =>
    <String, dynamic>{
      'previous_school_id': instance.previousSchoolId,
      'school_name': instance.schoolName,
      'board_name': instance.boardName,
      'class_last_attended': instance.classLastAttended,
      'percentage': const LooseStringConverter().toJson(instance.percentage),
    };

_IdCardSummary _$IdCardSummaryFromJson(Map<String, dynamic> json) =>
    _IdCardSummary(
      cardNumber: json['card_number'] as String?,
      issueDate: json['issue_date'] == null
          ? null
          : DateTime.parse(json['issue_date'] as String),
      expiryDate: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
    );

Map<String, dynamic> _$IdCardSummaryToJson(_IdCardSummary instance) =>
    <String, dynamic>{
      'card_number': instance.cardNumber,
      'issue_date': instance.issueDate?.toIso8601String(),
      'expiry_date': instance.expiryDate?.toIso8601String(),
    };

_EnrollmentSummary _$EnrollmentSummaryFromJson(Map<String, dynamic> json) =>
    _EnrollmentSummary(
      session: json['academic_sessions'] == null
          ? null
          : SessionRef.fromJson(
              json['academic_sessions'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$EnrollmentSummaryToJson(_EnrollmentSummary instance) =>
    <String, dynamic>{'academic_sessions': instance.session};
