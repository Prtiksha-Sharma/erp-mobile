// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StaffMember _$StaffMemberFromJson(Map<String, dynamic> json) => _StaffMember(
  staffId: json['staff_id'] as String,
  userId: json['user_id'] as String?,
  employeeCode: json['employee_code'] as String?,
  fullName: json['full_name'] as String,
  designation: json['designation'] as String?,
  department: json['department'] as String?,
  employeeType: json['employee_type'] as String?,
  dateOfJoining: json['date_of_joining'] == null
      ? null
      : DateTime.parse(json['date_of_joining'] as String),
  employmentStatus: json['employment_status'] as String?,
  profilePhotoUrl: json['profile_photo_url'] as String?,
  contactNumber: json['contact_number'] as String?,
  username: json['username'] as String?,
  email: json['email'] as String?,
  mobileNo: json['mobile_no'] as String?,
  accountStatus: json['account_status'] as String?,
  roles:
      (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  branch: json['branch'] == null
      ? null
      : StaffBranchRef.fromJson(json['branch'] as Map<String, dynamic>),
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  gender: json['gender'] as String?,
  address: json['address'] as String?,
  qualification: json['qualification'] as String?,
  confirmationDate: json['confirmation_date'] == null
      ? null
      : DateTime.parse(json['confirmation_date'] as String),
  workLocation: json['work_location'] as String?,
  reportsTo: json['reports_to'] == null
      ? null
      : StaffManagerRef.fromJson(json['reports_to'] as Map<String, dynamic>),
  directReports:
      (json['direct_reports'] as List<dynamic>?)
          ?.map((e) => StaffManagerRef.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <StaffManagerRef>[],
  classTeacherAssignments:
      (json['class_teacher_assignments'] as List<dynamic>?)
          ?.map(
            (e) => ClassTeacherAssignment.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ClassTeacherAssignment>[],
  subjectAssignments:
      (json['academic_subject_teachers'] as List<dynamic>?)
          ?.map(
            (e) =>
                SubjectTeachingAssignment.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <SubjectTeachingAssignment>[],
  totalExperienceYears: const LooseStringConverter().fromJson(
    json['total_experience_years'],
  ),
  bankName: json['bank_name'] as String?,
  accountHolderName: json['account_holder_name'] as String?,
  bankAccountNumber: json['bank_account_number'] as String?,
  ifscCode: json['ifsc_code'] as String?,
  bankBranchName: json['branch_name'] as String?,
  panNumber: json['pan_number'] as String?,
  aadhaarNumber: json['aadhaar_number'] as String?,
  pfUanNumber: json['pf_uan_number'] as String?,
  esiNumber: json['esi_number'] as String?,
  pfApplicable: json['pf_applicable'] as bool?,
  esiApplicable: json['esi_applicable'] as bool?,
);

Map<String, dynamic> _$StaffMemberToJson(_StaffMember instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'user_id': instance.userId,
      'employee_code': instance.employeeCode,
      'full_name': instance.fullName,
      'designation': instance.designation,
      'department': instance.department,
      'employee_type': instance.employeeType,
      'date_of_joining': instance.dateOfJoining?.toIso8601String(),
      'employment_status': instance.employmentStatus,
      'profile_photo_url': instance.profilePhotoUrl,
      'contact_number': instance.contactNumber,
      'username': instance.username,
      'email': instance.email,
      'mobile_no': instance.mobileNo,
      'account_status': instance.accountStatus,
      'roles': instance.roles,
      'branch': instance.branch,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'gender': instance.gender,
      'address': instance.address,
      'qualification': instance.qualification,
      'confirmation_date': instance.confirmationDate?.toIso8601String(),
      'work_location': instance.workLocation,
      'reports_to': instance.reportsTo,
      'direct_reports': instance.directReports,
      'class_teacher_assignments': instance.classTeacherAssignments,
      'academic_subject_teachers': instance.subjectAssignments,
      'total_experience_years': const LooseStringConverter().toJson(
        instance.totalExperienceYears,
      ),
      'bank_name': instance.bankName,
      'account_holder_name': instance.accountHolderName,
      'bank_account_number': instance.bankAccountNumber,
      'ifsc_code': instance.ifscCode,
      'branch_name': instance.bankBranchName,
      'pan_number': instance.panNumber,
      'aadhaar_number': instance.aadhaarNumber,
      'pf_uan_number': instance.pfUanNumber,
      'esi_number': instance.esiNumber,
      'pf_applicable': instance.pfApplicable,
      'esi_applicable': instance.esiApplicable,
    };

_ClassTeacherAssignment _$ClassTeacherAssignmentFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherAssignment(
  assignmentId: json['assignment_id'] as String,
  classes: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sections: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClassTeacherAssignmentToJson(
  _ClassTeacherAssignment instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'classes': instance.classes,
  'sections': instance.sections,
};

_SubjectTeachingAssignment _$SubjectTeachingAssignmentFromJson(
  Map<String, dynamic> json,
) => _SubjectTeachingAssignment(
  subjectTeacherId: json['subject_teacher_id'] as String,
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
  classes: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sections: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubjectTeachingAssignmentToJson(
  _SubjectTeachingAssignment instance,
) => <String, dynamic>{
  'subject_teacher_id': instance.subjectTeacherId,
  'academic_subjects': instance.subject,
  'classes': instance.classes,
  'sections': instance.sections,
};

_StaffPage _$StaffPageFromJson(Map<String, dynamic> json) => _StaffPage(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => StaffMember.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <StaffMember>[],
);

Map<String, dynamic> _$StaffPageToJson(_StaffPage instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_StaffSummary _$StaffSummaryFromJson(Map<String, dynamic> json) =>
    _StaffSummary(
      total: (json['total'] as num?)?.toInt() ?? 0,
      unassigned: (json['unassigned'] as num?)?.toInt() ?? 0,
      roles:
          (json['roles'] as List<dynamic>?)
              ?.map((e) => StaffRoleCount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <StaffRoleCount>[],
    );

Map<String, dynamic> _$StaffSummaryToJson(_StaffSummary instance) =>
    <String, dynamic>{
      'total': instance.total,
      'unassigned': instance.unassigned,
      'roles': instance.roles,
    };

_StaffRoleCount _$StaffRoleCountFromJson(Map<String, dynamic> json) =>
    _StaffRoleCount(
      roleName: json['role_name'] as String,
      count: (json['count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StaffRoleCountToJson(_StaffRoleCount instance) =>
    <String, dynamic>{'role_name': instance.roleName, 'count': instance.count};

_StaffCredentials _$StaffCredentialsFromJson(Map<String, dynamic> json) =>
    _StaffCredentials(
      staffId: json['staff_id'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$StaffCredentialsToJson(_StaffCredentials instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'username': instance.username,
      'password': instance.password,
      'full_name': instance.fullName,
    };

_StaffDocument _$StaffDocumentFromJson(Map<String, dynamic> json) =>
    _StaffDocument(
      documentId: json['document_id'] as String,
      documentName: json['document_name'] as String,
      fileName: json['file_name'] as String?,
      fileUrl: json['file_url'] as String?,
      verificationStatus: json['verification_status'] as String?,
      remarks: json['remarks'] as String?,
      uploadedAt: json['uploaded_at'] == null
          ? null
          : DateTime.parse(json['uploaded_at'] as String),
    );

Map<String, dynamic> _$StaffDocumentToJson(_StaffDocument instance) =>
    <String, dynamic>{
      'document_id': instance.documentId,
      'document_name': instance.documentName,
      'file_name': instance.fileName,
      'file_url': instance.fileUrl,
      'verification_status': instance.verificationStatus,
      'remarks': instance.remarks,
      'uploaded_at': instance.uploadedAt?.toIso8601String(),
    };

_StaffQualification _$StaffQualificationFromJson(Map<String, dynamic> json) =>
    _StaffQualification(
      qualificationId: json['qualification_id'] as String,
      qualificationName: json['qualification_name'] as String,
      specialization: json['specialization'] as String?,
      institutionName: json['institution_name'] as String?,
      universityBoard: json['university_board'] as String?,
      passingYear: (json['passing_year'] as num?)?.toInt(),
      percentage: const LooseStringConverter().fromJson(json['percentage']),
      cgpa: const LooseStringConverter().fromJson(json['cgpa']),
      grade: json['grade'] as String?,
      startYear: (json['start_year'] as num?)?.toInt(),
      endYear: (json['end_year'] as num?)?.toInt(),
      certificateUrl: json['certificate_url'] as String?,
      certificateFileName: json['certificate_file_name'] as String?,
    );

Map<String, dynamic> _$StaffQualificationToJson(_StaffQualification instance) =>
    <String, dynamic>{
      'qualification_id': instance.qualificationId,
      'qualification_name': instance.qualificationName,
      'specialization': instance.specialization,
      'institution_name': instance.institutionName,
      'university_board': instance.universityBoard,
      'passing_year': instance.passingYear,
      'percentage': const LooseStringConverter().toJson(instance.percentage),
      'cgpa': const LooseStringConverter().toJson(instance.cgpa),
      'grade': instance.grade,
      'start_year': instance.startYear,
      'end_year': instance.endYear,
      'certificate_url': instance.certificateUrl,
      'certificate_file_name': instance.certificateFileName,
    };

_StaffExperience _$StaffExperienceFromJson(Map<String, dynamic> json) =>
    _StaffExperience(
      experienceId: json['experience_id'] as String,
      organizationName: json['organization_name'] as String,
      designation: json['designation'] as String?,
      department: json['department'] as String?,
      employmentType: json['employment_type'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      isCurrent: json['is_current'] as bool? ?? false,
      responsibilities: json['responsibilities'] as String?,
      description: json['description'] as String?,
      experienceLetterUrl: json['experience_letter_url'] as String?,
      experienceLetterFileName: json['experience_letter_file_name'] as String?,
    );

Map<String, dynamic> _$StaffExperienceToJson(_StaffExperience instance) =>
    <String, dynamic>{
      'experience_id': instance.experienceId,
      'organization_name': instance.organizationName,
      'designation': instance.designation,
      'department': instance.department,
      'employment_type': instance.employmentType,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'is_current': instance.isCurrent,
      'responsibilities': instance.responsibilities,
      'description': instance.description,
      'experience_letter_url': instance.experienceLetterUrl,
      'experience_letter_file_name': instance.experienceLetterFileName,
    };

_StaffPrincipalRemark _$StaffPrincipalRemarkFromJson(
  Map<String, dynamic> json,
) => _StaffPrincipalRemark(
  remarkId: json['remark_id'] as String,
  remarkText: json['remark_text'] as String,
  remarkType: json['remark_type'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$StaffPrincipalRemarkToJson(
  _StaffPrincipalRemark instance,
) => <String, dynamic>{
  'remark_id': instance.remarkId,
  'remark_text': instance.remarkText,
  'remark_type': instance.remarkType,
  'created_at': instance.createdAt?.toIso8601String(),
};

_SalaryStructureAssignment _$SalaryStructureAssignmentFromJson(
  Map<String, dynamic> json,
) => _SalaryStructureAssignment(
  templateId: json['template_id'] as String,
  ctcAmount: const DecimalConverter().fromJson(json['ctc_amount']),
  effectiveFrom: json['effective_from'] == null
      ? null
      : DateTime.parse(json['effective_from'] as String),
  template: SalaryTemplate.fromJson(json['template'] as Map<String, dynamic>),
  takeHomeEstimate: json['take_home_estimate'] == null
      ? null
      : TakeHomeEstimate.fromJson(
          json['take_home_estimate'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$SalaryStructureAssignmentToJson(
  _SalaryStructureAssignment instance,
) => <String, dynamic>{
  'template_id': instance.templateId,
  'ctc_amount': const DecimalConverter().toJson(instance.ctcAmount),
  'effective_from': instance.effectiveFrom?.toIso8601String(),
  'template': instance.template,
  'take_home_estimate': instance.takeHomeEstimate,
};

_SalaryTemplate _$SalaryTemplateFromJson(Map<String, dynamic> json) =>
    _SalaryTemplate(
      templateId: json['template_id'] as String,
      templateName: json['template_name'] as String,
      components:
          (json['components'] as List<dynamic>?)
              ?.map((e) => SalaryComponent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SalaryComponent>[],
    );

Map<String, dynamic> _$SalaryTemplateToJson(_SalaryTemplate instance) =>
    <String, dynamic>{
      'template_id': instance.templateId,
      'template_name': instance.templateName,
      'components': instance.components,
    };

_SalaryComponent _$SalaryComponentFromJson(Map<String, dynamic> json) =>
    _SalaryComponent(
      componentId: json['component_id'] as String,
      componentName: json['component_name'] as String,
      percentageOfCtc: const DecimalConverter().fromJson(
        json['percentage_of_ctc'],
      ),
      computedAmount: const NullableDecimalConverter().fromJson(
        json['computed_amount'],
      ),
    );

Map<String, dynamic> _$SalaryComponentToJson(_SalaryComponent instance) =>
    <String, dynamic>{
      'component_id': instance.componentId,
      'component_name': instance.componentName,
      'percentage_of_ctc': const DecimalConverter().toJson(
        instance.percentageOfCtc,
      ),
      'computed_amount': const NullableDecimalConverter().toJson(
        instance.computedAmount,
      ),
    };

_TakeHomeEstimate _$TakeHomeEstimateFromJson(Map<String, dynamic> json) =>
    _TakeHomeEstimate(
      monthlyGross: const DecimalConverter().fromJson(json['monthly_gross']),
      pfAmount: const DecimalConverter().fromJson(json['pf_amount']),
      esiAmount: const DecimalConverter().fromJson(json['esi_amount']),
      ptAmount: const DecimalConverter().fromJson(json['pt_amount']),
      tdsAmount: const DecimalConverter().fromJson(json['tds_amount']),
      takeHomeSalary: const DecimalConverter().fromJson(
        json['take_home_salary'],
      ),
    );

Map<String, dynamic> _$TakeHomeEstimateToJson(
  _TakeHomeEstimate instance,
) => <String, dynamic>{
  'monthly_gross': const DecimalConverter().toJson(instance.monthlyGross),
  'pf_amount': const DecimalConverter().toJson(instance.pfAmount),
  'esi_amount': const DecimalConverter().toJson(instance.esiAmount),
  'pt_amount': const DecimalConverter().toJson(instance.ptAmount),
  'tds_amount': const DecimalConverter().toJson(instance.tdsAmount),
  'take_home_salary': const DecimalConverter().toJson(instance.takeHomeSalary),
};
