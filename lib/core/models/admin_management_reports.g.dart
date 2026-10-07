// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_management_reports.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassStrengthRow _$ClassStrengthRowFromJson(Map<String, dynamic> json) =>
    _ClassStrengthRow(
      classId: json['class_id'] as String?,
      className: json['class_name'] as String,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ClassStrengthRowToJson(_ClassStrengthRow instance) =>
    <String, dynamic>{
      'class_id': instance.classId,
      'class_name': instance.className,
      'total': instance.total,
    };

_PromotionReportRow _$PromotionReportRowFromJson(
  Map<String, dynamic> json,
) => _PromotionReportRow(
  promotionId: json['promotion_id'] as String,
  promotionStatus: json['promotion_status'] as String?,
  promotedAt: json['promoted_at'] == null
      ? null
      : DateTime.parse(json['promoted_at'] as String),
  remarks: json['remarks'] as String?,
  student: json['student'] == null
      ? null
      : PromotionReportStudent.fromJson(
          json['student'] as Map<String, dynamic>,
        ),
  from: json['from'] == null
      ? null
      : PromotionReportPlacement.fromJson(json['from'] as Map<String, dynamic>),
  to: json['to'] == null
      ? null
      : PromotionReportPlacement.fromJson(json['to'] as Map<String, dynamic>),
  promotedBy: json['promoted_by'] as String?,
);

Map<String, dynamic> _$PromotionReportRowToJson(_PromotionReportRow instance) =>
    <String, dynamic>{
      'promotion_id': instance.promotionId,
      'promotion_status': instance.promotionStatus,
      'promoted_at': instance.promotedAt?.toIso8601String(),
      'remarks': instance.remarks,
      'student': instance.student,
      'from': instance.from,
      'to': instance.to,
      'promoted_by': instance.promotedBy,
    };

_PromotionReportStudent _$PromotionReportStudentFromJson(
  Map<String, dynamic> json,
) => _PromotionReportStudent(
  studentId: json['student_id'] as String?,
  admissionNo: json['admission_no'] as String?,
  name: json['name'] as String?,
);

Map<String, dynamic> _$PromotionReportStudentToJson(
  _PromotionReportStudent instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'admission_no': instance.admissionNo,
  'name': instance.name,
};

_PromotionReportPlacement _$PromotionReportPlacementFromJson(
  Map<String, dynamic> json,
) => _PromotionReportPlacement(
  session: json['session'] as String?,
  className: json['class'] as String?,
  section: json['section'] as String?,
);

Map<String, dynamic> _$PromotionReportPlacementToJson(
  _PromotionReportPlacement instance,
) => <String, dynamic>{
  'session': instance.session,
  'class': instance.className,
  'section': instance.section,
};

_BirthdayReportPage _$BirthdayReportPageFromJson(Map<String, dynamic> json) =>
    _BirthdayReportPage(
      month: (json['month'] as num).toInt(),
      day: (json['day'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => BirthdayReportRow.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <BirthdayReportRow>[],
    );

Map<String, dynamic> _$BirthdayReportPageToJson(_BirthdayReportPage instance) =>
    <String, dynamic>{
      'month': instance.month,
      'day': instance.day,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_BirthdayReportRow _$BirthdayReportRowFromJson(Map<String, dynamic> json) =>
    _BirthdayReportRow(
      studentId: json['student_id'] as String?,
      admissionNo: json['admission_no'] as String?,
      rollNo: const LooseStringConverter().fromJson(json['roll_no']),
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      gender: json['gender'] as String?,
      photoUrl: json['photo_url'] as String?,
      className: json['class_name'] as String?,
      sectionName: json['section_name'] as String?,
    );

Map<String, dynamic> _$BirthdayReportRowToJson(_BirthdayReportRow instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'roll_no': const LooseStringConverter().toJson(instance.rollNo),
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'dob': instance.dob?.toIso8601String(),
      'gender': instance.gender,
      'photo_url': instance.photoUrl,
      'class_name': instance.className,
      'section_name': instance.sectionName,
    };

_AdmissionReportResult _$AdmissionReportResultFromJson(
  Map<String, dynamic> json,
) => _AdmissionReportResult(
  total: (json['total'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => AdmissionReportRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionReportRow>[],
);

Map<String, dynamic> _$AdmissionReportResultToJson(
  _AdmissionReportResult instance,
) => <String, dynamic>{'total': instance.total, 'data': instance.data};

_AdmissionReportRow _$AdmissionReportRowFromJson(Map<String, dynamic> json) =>
    _AdmissionReportRow(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      admissionDate: json['admission_date'] == null
          ? null
          : DateTime.parse(json['admission_date'] as String),
      studentStatus: json['student_status'] as String?,
      currentClass: json['current_class'] == null
          ? null
          : ClassRef.fromJson(json['current_class'] as Map<String, dynamic>),
      applicant: json['applicants'] == null
          ? null
          : ReportApplicant.fromJson(
              json['applicants'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdmissionReportRowToJson(_AdmissionReportRow instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'admission_date': instance.admissionDate?.toIso8601String(),
      'student_status': instance.studentStatus,
      'current_class': instance.currentClass,
      'applicants': instance.applicant,
    };

_ReportApplicant _$ReportApplicantFromJson(Map<String, dynamic> json) =>
    _ReportApplicant(
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      bloodGroup: json['blood_group'] as String?,
      nationality: json['nationality'] as String?,
      aadhaarNo: json['aadhaar_no'] as String?,
      birthCertificateNo: json['birth_certificate_no'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$ReportApplicantToJson(_ReportApplicant instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'dob': instance.dob?.toIso8601String(),
      'blood_group': instance.bloodGroup,
      'nationality': instance.nationality,
      'aadhaar_no': instance.aadhaarNo,
      'birth_certificate_no': instance.birthCertificateNo,
      'photo_url': instance.photoUrl,
    };

_LeaveReportPage _$LeaveReportPageFromJson(Map<String, dynamic> json) =>
    _LeaveReportPage(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => LeaveReportRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <LeaveReportRow>[],
    );

Map<String, dynamic> _$LeaveReportPageToJson(_LeaveReportPage instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_LeaveReportRow _$LeaveReportRowFromJson(Map<String, dynamic> json) =>
    _LeaveReportRow(
      leaveId: json['leave_id'] as String,
      studentId: json['student_id'] as String?,
      leaveType: json['leave_type'] as String?,
      fromDate: json['from_date'] == null
          ? null
          : DateTime.parse(json['from_date'] as String),
      toDate: json['to_date'] == null
          ? null
          : DateTime.parse(json['to_date'] as String),
      totalDays: const LooseNumConverter().fromJson(json['total_days']),
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      approvedAt: json['approved_at'] == null
          ? null
          : DateTime.parse(json['approved_at'] as String),
      remarks: json['remarks'] as String?,
      student: json['students'] == null
          ? null
          : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeaveReportRowToJson(_LeaveReportRow instance) =>
    <String, dynamic>{
      'leave_id': instance.leaveId,
      'student_id': instance.studentId,
      'leave_type': instance.leaveType,
      'from_date': instance.fromDate?.toIso8601String(),
      'to_date': instance.toDate?.toIso8601String(),
      'total_days': const LooseNumConverter().toJson(instance.totalDays),
      'reason': instance.reason,
      'status': instance.status,
      'approved_at': instance.approvedAt?.toIso8601String(),
      'remarks': instance.remarks,
      'students': instance.student,
    };

_StudentProfileReport _$StudentProfileReportFromJson(
  Map<String, dynamic> json,
) => _StudentProfileReport(
  studentId: json['student_id'] as String,
  admissionNo: json['admission_no'] as String,
  rollNo: const LooseStringConverter().fromJson(json['roll_no']),
  admissionDate: json['admission_date'] == null
      ? null
      : DateTime.parse(json['admission_date'] as String),
  studentStatus: json['student_status'] as String?,
  remarks: json['remarks'] as String?,
  currentClass: json['current_class'] == null
      ? null
      : ClassRef.fromJson(json['current_class'] as Map<String, dynamic>),
  currentSection: json['current_section'] == null
      ? null
      : SectionRef.fromJson(json['current_section'] as Map<String, dynamic>),
  institution: json['institutions'] == null
      ? null
      : InstitutionRef.fromJson(json['institutions'] as Map<String, dynamic>),
  applicant: json['applicants'] == null
      ? null
      : ReportApplicant.fromJson(json['applicants'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StudentProfileReportToJson(
  _StudentProfileReport instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'admission_no': instance.admissionNo,
  'roll_no': const LooseStringConverter().toJson(instance.rollNo),
  'admission_date': instance.admissionDate?.toIso8601String(),
  'student_status': instance.studentStatus,
  'remarks': instance.remarks,
  'current_class': instance.currentClass,
  'current_section': instance.currentSection,
  'institutions': instance.institution,
  'applicants': instance.applicant,
};
