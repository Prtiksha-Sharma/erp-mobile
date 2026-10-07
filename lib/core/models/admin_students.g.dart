// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_students.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminStudentPage _$AdminStudentPageFromJson(Map<String, dynamic> json) =>
    _AdminStudentPage(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => AdminStudentRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AdminStudentRow>[],
    );

Map<String, dynamic> _$AdminStudentPageToJson(_AdminStudentPage instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_AdminStudentRow _$AdminStudentRowFromJson(Map<String, dynamic> json) =>
    _AdminStudentRow(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String,
      admissionDate: json['admission_date'] == null
          ? null
          : DateTime.parse(json['admission_date'] as String),
      studentStatus: json['student_status'] as String?,
      rollNo: const LooseStringConverter().fromJson(json['roll_no']),
      currentClass: json['current_class'] == null
          ? null
          : ClassRef.fromJson(json['current_class'] as Map<String, dynamic>),
      currentSection: json['current_section'] == null
          ? null
          : SectionRef.fromJson(
              json['current_section'] as Map<String, dynamic>,
            ),
      applicant: json['applicants'] == null
          ? null
          : AdminStudentApplicant.fromJson(
              json['applicants'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdminStudentRowToJson(_AdminStudentRow instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'admission_date': instance.admissionDate?.toIso8601String(),
      'student_status': instance.studentStatus,
      'roll_no': const LooseStringConverter().toJson(instance.rollNo),
      'current_class': instance.currentClass,
      'current_section': instance.currentSection,
      'applicants': instance.applicant,
    };

_AdminStudentApplicant _$AdminStudentApplicantFromJson(
  Map<String, dynamic> json,
) => _AdminStudentApplicant(
  applicantId: json['applicant_id'] as String?,
  firstName: json['first_name'] as String?,
  middleName: json['middle_name'] as String?,
  lastName: json['last_name'] as String?,
  gender: json['gender'] as String?,
  dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
  bloodGroup: json['blood_group'] as String?,
  religionId: json['religion_id'] as String?,
  categoryId: json['category_id'] as String?,
  nationality: json['nationality'] as String?,
  aadhaarNo: json['aadhaar_no'] as String?,
  birthCertificateNo: json['birth_certificate_no'] as String?,
  motherTongue: json['mother_tongue'] as String?,
  photoUrl: json['photo_url'] as String?,
  caste: json['caste'] as String?,
  contactNo: json['contact_no'] as String?,
  emailId: json['email_id'] as String?,
  category: json['categories'] == null
      ? null
      : CategoryRef.fromJson(json['categories'] as Map<String, dynamic>),
  religion: json['religions'] == null
      ? null
      : ReligionRef.fromJson(json['religions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminStudentApplicantToJson(
  _AdminStudentApplicant instance,
) => <String, dynamic>{
  'applicant_id': instance.applicantId,
  'first_name': instance.firstName,
  'middle_name': instance.middleName,
  'last_name': instance.lastName,
  'gender': instance.gender,
  'dob': instance.dob?.toIso8601String(),
  'blood_group': instance.bloodGroup,
  'religion_id': instance.religionId,
  'category_id': instance.categoryId,
  'nationality': instance.nationality,
  'aadhaar_no': instance.aadhaarNo,
  'birth_certificate_no': instance.birthCertificateNo,
  'mother_tongue': instance.motherTongue,
  'photo_url': instance.photoUrl,
  'caste': instance.caste,
  'contact_no': instance.contactNo,
  'email_id': instance.emailId,
  'categories': instance.category,
  'religions': instance.religion,
};

_AdminStudentDetail _$AdminStudentDetailFromJson(
  Map<String, dynamic> json,
) => _AdminStudentDetail(
  studentId: json['student_id'] as String,
  applicationId: json['application_id'] as String?,
  admissionNo: json['admission_no'] as String,
  admissionDate: json['admission_date'] == null
      ? null
      : DateTime.parse(json['admission_date'] as String),
  rollNo: const LooseStringConverter().fromJson(json['roll_no']),
  studentStatus: json['student_status'] as String?,
  remarks: json['remarks'] as String?,
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
      : AdminStudentApplicant.fromJson(
          json['applicants'] as Map<String, dynamic>,
        ),
  application: json['admission_applications'] == null
      ? null
      : AdminStudentApplication.fromJson(
          json['admission_applications'] as Map<String, dynamic>,
        ),
  studentProfile: json['student_profile'] == null
      ? null
      : AdminStudentProfileRow.fromJson(
          json['student_profile'] as Map<String, dynamic>,
        ),
  addresses:
      (json['student_addresses'] as List<dynamic>?)
          ?.map((e) => StudentAddress.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <StudentAddress>[],
  enrollments:
      (json['student_enrollments'] as List<dynamic>?)
          ?.map(
            (e) => AdminStudentEnrollment.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdminStudentEnrollment>[],
  statusHistory:
      (json['student_status_history'] as List<dynamic>?)
          ?.map(
            (e) => AdminStudentStatusChange.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdminStudentStatusChange>[],
  idCards:
      (json['student_id_cards'] as List<dynamic>?)
          ?.map((e) => IdCardSummary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <IdCardSummary>[],
  accounts:
      (json['student_accounts'] as List<dynamic>?)
          ?.map(
            (e) => AdminStudentAccountRef.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdminStudentAccountRef>[],
);

Map<String, dynamic> _$AdminStudentDetailToJson(_AdminStudentDetail instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'application_id': instance.applicationId,
      'admission_no': instance.admissionNo,
      'admission_date': instance.admissionDate?.toIso8601String(),
      'roll_no': const LooseStringConverter().toJson(instance.rollNo),
      'student_status': instance.studentStatus,
      'remarks': instance.remarks,
      'institutions': instance.institution,
      'current_class': instance.currentClass,
      'current_section': instance.currentSection,
      'applicants': instance.applicant,
      'admission_applications': instance.application,
      'student_profile': instance.studentProfile,
      'student_addresses': instance.addresses,
      'student_enrollments': instance.enrollments,
      'student_status_history': instance.statusHistory,
      'student_id_cards': instance.idCards,
      'student_accounts': instance.accounts,
    };

_AdminStudentApplication _$AdminStudentApplicationFromJson(
  Map<String, dynamic> json,
) => _AdminStudentApplication(
  previousSchools:
      (json['previous_schools'] as List<dynamic>?)
          ?.map((e) => AdminPreviousSchool.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdminPreviousSchool>[],
);

Map<String, dynamic> _$AdminStudentApplicationToJson(
  _AdminStudentApplication instance,
) => <String, dynamic>{'previous_schools': instance.previousSchools};

_AdminPreviousSchool _$AdminPreviousSchoolFromJson(Map<String, dynamic> json) =>
    _AdminPreviousSchool(
      previousSchoolId: json['previous_school_id'] as String?,
      schoolName: json['school_name'] as String?,
      boardName: json['board_name'] as String?,
      classLastAttended: json['class_last_attended'] as String?,
      percentage: const LooseStringConverter().fromJson(json['percentage']),
      passingYear: const LooseStringConverter().fromJson(json['passing_year']),
      tcNumber: json['tc_number'] as String?,
      reasonForLeaving: json['reason_for_leaving'] as String?,
      maxMarks: const LooseStringConverter().fromJson(json['max_marks']),
      marksObtained: const LooseStringConverter().fromJson(
        json['marks_obtained'],
      ),
    );

Map<String, dynamic> _$AdminPreviousSchoolToJson(
  _AdminPreviousSchool instance,
) => <String, dynamic>{
  'previous_school_id': instance.previousSchoolId,
  'school_name': instance.schoolName,
  'board_name': instance.boardName,
  'class_last_attended': instance.classLastAttended,
  'percentage': const LooseStringConverter().toJson(instance.percentage),
  'passing_year': const LooseStringConverter().toJson(instance.passingYear),
  'tc_number': instance.tcNumber,
  'reason_for_leaving': instance.reasonForLeaving,
  'max_marks': const LooseStringConverter().toJson(instance.maxMarks),
  'marks_obtained': const LooseStringConverter().toJson(instance.marksObtained),
};

_AdminStudentProfileRow _$AdminStudentProfileRowFromJson(
  Map<String, dynamic> json,
) => _AdminStudentProfileRow(feeCategoryId: json['fee_category_id'] as String?);

Map<String, dynamic> _$AdminStudentProfileRowToJson(
  _AdminStudentProfileRow instance,
) => <String, dynamic>{'fee_category_id': instance.feeCategoryId};

_AdminStudentEnrollment _$AdminStudentEnrollmentFromJson(
  Map<String, dynamic> json,
) => _AdminStudentEnrollment(
  enrollmentId: json['enrollment_id'] as String?,
  rollNo: const LooseStringConverter().fromJson(json['roll_no']),
  enrollmentStatus: json['enrollment_status'] as String?,
  enrolledAt: json['enrolled_at'] == null
      ? null
      : DateTime.parse(json['enrolled_at'] as String),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminStudentEnrollmentToJson(
  _AdminStudentEnrollment instance,
) => <String, dynamic>{
  'enrollment_id': instance.enrollmentId,
  'roll_no': const LooseStringConverter().toJson(instance.rollNo),
  'enrollment_status': instance.enrollmentStatus,
  'enrolled_at': instance.enrolledAt?.toIso8601String(),
  'academic_sessions': instance.session,
  'classes': instance.classRef,
  'sections': instance.sectionRef,
};

_AdminStudentStatusChange _$AdminStudentStatusChangeFromJson(
  Map<String, dynamic> json,
) => _AdminStudentStatusChange(
  statusHistoryId: json['status_history_id'] as String?,
  oldStatus: json['old_status'] as String?,
  newStatus: json['new_status'] as String?,
  remarks: json['remarks'] as String?,
  changedAt: json['changed_at'] == null
      ? null
      : DateTime.parse(json['changed_at'] as String),
);

Map<String, dynamic> _$AdminStudentStatusChangeToJson(
  _AdminStudentStatusChange instance,
) => <String, dynamic>{
  'status_history_id': instance.statusHistoryId,
  'old_status': instance.oldStatus,
  'new_status': instance.newStatus,
  'remarks': instance.remarks,
  'changed_at': instance.changedAt?.toIso8601String(),
};

_AdminStudentAccountRef _$AdminStudentAccountRefFromJson(
  Map<String, dynamic> json,
) => _AdminStudentAccountRef(userId: json['user_id'] as String);

Map<String, dynamic> _$AdminStudentAccountRefToJson(
  _AdminStudentAccountRef instance,
) => <String, dynamic>{'user_id': instance.userId};

_AdminStudentParent _$AdminStudentParentFromJson(Map<String, dynamic> json) =>
    _AdminStudentParent(
      parentId: json['parent_id'] as String,
      relationType: json['relation_type'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      email: json['email'] as String?,
      parentAccountId: json['parent_account_id'] as String?,
      username: json['username'] as String?,
      accountStatus: json['account_status'] as String?,
    );

Map<String, dynamic> _$AdminStudentParentToJson(_AdminStudentParent instance) =>
    <String, dynamic>{
      'parent_id': instance.parentId,
      'relation_type': instance.relationType,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_no': instance.mobileNo,
      'email': instance.email,
      'parent_account_id': instance.parentAccountId,
      'username': instance.username,
      'account_status': instance.accountStatus,
    };

_AdminStudentAdmissionDocument _$AdminStudentAdmissionDocumentFromJson(
  Map<String, dynamic> json,
) => _AdminStudentAdmissionDocument(
  documentId: json['document_id'] as String,
  fileName: json['file_name'] as String?,
  fileUrl: json['file_url'] as String?,
  verificationStatus: json['verification_status'] as String?,
  uploadDate: json['upload_date'] == null
      ? null
      : DateTime.parse(json['upload_date'] as String),
  documentType: json['document_types'] == null
      ? null
      : AdminStudentDocumentType.fromJson(
          json['document_types'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AdminStudentAdmissionDocumentToJson(
  _AdminStudentAdmissionDocument instance,
) => <String, dynamic>{
  'document_id': instance.documentId,
  'file_name': instance.fileName,
  'file_url': instance.fileUrl,
  'verification_status': instance.verificationStatus,
  'upload_date': instance.uploadDate?.toIso8601String(),
  'document_types': instance.documentType,
};

_AdminStudentDocumentType _$AdminStudentDocumentTypeFromJson(
  Map<String, dynamic> json,
) => _AdminStudentDocumentType(
  documentTypeId: json['document_type_id'] as String?,
  documentName: json['document_name'] as String?,
);

Map<String, dynamic> _$AdminStudentDocumentTypeToJson(
  _AdminStudentDocumentType instance,
) => <String, dynamic>{
  'document_type_id': instance.documentTypeId,
  'document_name': instance.documentName,
};

_AdminStudentAuditEntry _$AdminStudentAuditEntryFromJson(
  Map<String, dynamic> json,
) => _AdminStudentAuditEntry(
  logId: json['log_id'] as String,
  moduleName: json['module_name'] as String?,
  actionType: json['action_type'] as String?,
  oldData: json['old_data'],
  newData: json['new_data'],
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$AdminStudentAuditEntryToJson(
  _AdminStudentAuditEntry instance,
) => <String, dynamic>{
  'log_id': instance.logId,
  'module_name': instance.moduleName,
  'action_type': instance.actionType,
  'old_data': instance.oldData,
  'new_data': instance.newData,
  'created_at': instance.createdAt?.toIso8601String(),
};

_StudentTransferCertificate _$StudentTransferCertificateFromJson(
  Map<String, dynamic> json,
) => _StudentTransferCertificate(
  tcId: json['tc_id'] as String,
  tcNumber: json['tc_number'] as String,
  issueDate: json['issue_date'] == null
      ? null
      : DateTime.parse(json['issue_date'] as String),
  reason: json['reason'] as String?,
  duesCleared: json['dues_cleared'] as bool? ?? false,
  conductRemark: json['conduct_remark'] as String?,
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$StudentTransferCertificateToJson(
  _StudentTransferCertificate instance,
) => <String, dynamic>{
  'tc_id': instance.tcId,
  'tc_number': instance.tcNumber,
  'issue_date': instance.issueDate?.toIso8601String(),
  'reason': instance.reason,
  'dues_cleared': instance.duesCleared,
  'conduct_remark': instance.conductRemark,
  'remarks': instance.remarks,
};

_AdminStudentConcession _$AdminStudentConcessionFromJson(
  Map<String, dynamic> json,
) => _AdminStudentConcession(
  studentConcessionId: json['student_concession_id'] as String,
  validFrom: json['valid_from'] == null
      ? null
      : DateTime.parse(json['valid_from'] as String),
  validTo: json['valid_to'] == null
      ? null
      : DateTime.parse(json['valid_to'] as String),
  status: json['status'] as String?,
  remarks: json['remarks'] as String?,
  concession: json['fee_concessions'] == null
      ? null
      : AdminStudentConcessionOption.fromJson(
          json['fee_concessions'] as Map<String, dynamic>,
        ),
  feeHead: json['fee_heads'] == null
      ? null
      : AdminStudentFeeHeadOption.fromJson(
          json['fee_heads'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AdminStudentConcessionToJson(
  _AdminStudentConcession instance,
) => <String, dynamic>{
  'student_concession_id': instance.studentConcessionId,
  'valid_from': instance.validFrom?.toIso8601String(),
  'valid_to': instance.validTo?.toIso8601String(),
  'status': instance.status,
  'remarks': instance.remarks,
  'fee_concessions': instance.concession,
  'fee_heads': instance.feeHead,
};

_AdminStudentConcessionOption _$AdminStudentConcessionOptionFromJson(
  Map<String, dynamic> json,
) => _AdminStudentConcessionOption(
  concessionId: json['concession_id'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$AdminStudentConcessionOptionToJson(
  _AdminStudentConcessionOption instance,
) => <String, dynamic>{
  'concession_id': instance.concessionId,
  'name': instance.name,
};

_AdminStudentFeeHeadOption _$AdminStudentFeeHeadOptionFromJson(
  Map<String, dynamic> json,
) => _AdminStudentFeeHeadOption(
  feeHeadId: json['fee_head_id'] as String,
  feeHeadName: json['fee_head_name'] as String,
);

Map<String, dynamic> _$AdminStudentFeeHeadOptionToJson(
  _AdminStudentFeeHeadOption instance,
) => <String, dynamic>{
  'fee_head_id': instance.feeHeadId,
  'fee_head_name': instance.feeHeadName,
};

_AdminStudentFeeCategoryOption _$AdminStudentFeeCategoryOptionFromJson(
  Map<String, dynamic> json,
) => _AdminStudentFeeCategoryOption(
  feeCategoryId: json['fee_category_id'] as String,
  categoryName: json['category_name'] as String,
);

Map<String, dynamic> _$AdminStudentFeeCategoryOptionToJson(
  _AdminStudentFeeCategoryOption instance,
) => <String, dynamic>{
  'fee_category_id': instance.feeCategoryId,
  'category_name': instance.categoryName,
};

_AdminStudentBulkResult _$AdminStudentBulkResultFromJson(
  Map<String, dynamic> json,
) => _AdminStudentBulkResult(
  succeeded: (json['succeeded'] as num?)?.toInt() ?? 0,
  promoted: (json['promoted'] as num?)?.toInt() ?? 0,
  failed: (json['failed'] as num?)?.toInt() ?? 0,
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => AdminStudentBulkItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdminStudentBulkItem>[],
  errors:
      (json['errors'] as List<dynamic>?)
          ?.map(
            (e) => AdminStudentBulkError.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdminStudentBulkError>[],
);

Map<String, dynamic> _$AdminStudentBulkResultToJson(
  _AdminStudentBulkResult instance,
) => <String, dynamic>{
  'succeeded': instance.succeeded,
  'promoted': instance.promoted,
  'failed': instance.failed,
  'results': instance.results,
  'errors': instance.errors,
};

_AdminStudentBulkItem _$AdminStudentBulkItemFromJson(
  Map<String, dynamic> json,
) => _AdminStudentBulkItem(
  studentId: json['student_id'] as String?,
  result: json['result'] == null
      ? null
      : AdminStudentBulkPayload.fromJson(
          json['result'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AdminStudentBulkItemToJson(
  _AdminStudentBulkItem instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'result': instance.result,
};

_AdminStudentBulkPayload _$AdminStudentBulkPayloadFromJson(
  Map<String, dynamic> json,
) => _AdminStudentBulkPayload(
  studentName: json['student_name'] as String?,
  cardNumber: json['card_number'] as String?,
  expiryDate: json['expiry_date'] == null
      ? null
      : DateTime.parse(json['expiry_date'] as String),
  student: json['student'] == null
      ? null
      : AdminStudentCertificateStudent.fromJson(
          json['student'] as Map<String, dynamic>,
        ),
  content: json['content'] as String?,
);

Map<String, dynamic> _$AdminStudentBulkPayloadToJson(
  _AdminStudentBulkPayload instance,
) => <String, dynamic>{
  'student_name': instance.studentName,
  'card_number': instance.cardNumber,
  'expiry_date': instance.expiryDate?.toIso8601String(),
  'student': instance.student,
  'content': instance.content,
};

_AdminStudentCertificateStudent _$AdminStudentCertificateStudentFromJson(
  Map<String, dynamic> json,
) => _AdminStudentCertificateStudent(
  name: json['name'] as String?,
  admissionNo: json['admission_no'] as String?,
  className: json['class_name'] as String?,
  sectionName: json['section_name'] as String?,
);

Map<String, dynamic> _$AdminStudentCertificateStudentToJson(
  _AdminStudentCertificateStudent instance,
) => <String, dynamic>{
  'name': instance.name,
  'admission_no': instance.admissionNo,
  'class_name': instance.className,
  'section_name': instance.sectionName,
};

_AdminStudentBulkError _$AdminStudentBulkErrorFromJson(
  Map<String, dynamic> json,
) => _AdminStudentBulkError(
  studentId: const LooseStringConverter().fromJson(json['student_id']),
  error: const LooseStringConverter().fromJson(json['error']),
);

Map<String, dynamic> _$AdminStudentBulkErrorToJson(
  _AdminStudentBulkError instance,
) => <String, dynamic>{
  'student_id': const LooseStringConverter().toJson(instance.studentId),
  'error': const LooseStringConverter().toJson(instance.error),
};

_AdminStudentActiveSession _$AdminStudentActiveSessionFromJson(
  Map<String, dynamic> json,
) => _AdminStudentActiveSession(
  sessionId: json['session_id'] as String,
  sessionName: json['session_name'] as String?,
);

Map<String, dynamic> _$AdminStudentActiveSessionToJson(
  _AdminStudentActiveSession instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'session_name': instance.sessionName,
};
