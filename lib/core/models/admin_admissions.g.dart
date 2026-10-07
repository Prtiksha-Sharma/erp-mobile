// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_admissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdmissionApplicantBrief _$AdmissionApplicantBriefFromJson(
  Map<String, dynamic> json,
) => _AdmissionApplicantBrief(
  applicantId: json['applicant_id'] as String?,
  firstName: json['first_name'] as String?,
  middleName: json['middle_name'] as String?,
  lastName: json['last_name'] as String?,
  gender: json['gender'] as String?,
  dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
  contactNo: json['contact_no'] as String?,
  emailId: json['email_id'] as String?,
  photoUrl: json['photo_url'] as String?,
);

Map<String, dynamic> _$AdmissionApplicantBriefToJson(
  _AdmissionApplicantBrief instance,
) => <String, dynamic>{
  'applicant_id': instance.applicantId,
  'first_name': instance.firstName,
  'middle_name': instance.middleName,
  'last_name': instance.lastName,
  'gender': instance.gender,
  'dob': instance.dob?.toIso8601String(),
  'contact_no': instance.contactNo,
  'email_id': instance.emailId,
  'photo_url': instance.photoUrl,
};

_AdmissionParentBrief _$AdmissionParentBriefFromJson(
  Map<String, dynamic> json,
) => _AdmissionParentBrief(
  parentId: json['parent_id'] as String?,
  relationType: json['relation_type'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  mobileNo: json['mobile_no'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$AdmissionParentBriefToJson(
  _AdmissionParentBrief instance,
) => <String, dynamic>{
  'parent_id': instance.parentId,
  'relation_type': instance.relationType,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'mobile_no': instance.mobileNo,
  'email': instance.email,
};

_AdmissionInterviewSchedule _$AdmissionInterviewScheduleFromJson(
  Map<String, dynamic> json,
) => _AdmissionInterviewSchedule(
  scheduleId: json['schedule_id'] as String?,
  interviewDate: json['interview_date'] == null
      ? null
      : DateTime.parse(json['interview_date'] as String),
  interviewTime: json['interview_time'] == null
      ? null
      : DateTime.parse(json['interview_time'] as String),
  scheduledAt: json['scheduled_at'] == null
      ? null
      : DateTime.parse(json['scheduled_at'] as String),
);

Map<String, dynamic> _$AdmissionInterviewScheduleToJson(
  _AdmissionInterviewSchedule instance,
) => <String, dynamic>{
  'schedule_id': instance.scheduleId,
  'interview_date': instance.interviewDate?.toIso8601String(),
  'interview_time': instance.interviewTime?.toIso8601String(),
  'scheduled_at': instance.scheduledAt?.toIso8601String(),
};

_AdmissionInterviewAttendance _$AdmissionInterviewAttendanceFromJson(
  Map<String, dynamic> json,
) => _AdmissionInterviewAttendance(
  attendanceId: json['attendance_id'] as String?,
  presenceStatus: json['presence_status'] as String?,
  markedAt: json['marked_at'] == null
      ? null
      : DateTime.parse(json['marked_at'] as String),
);

Map<String, dynamic> _$AdmissionInterviewAttendanceToJson(
  _AdmissionInterviewAttendance instance,
) => <String, dynamic>{
  'attendance_id': instance.attendanceId,
  'presence_status': instance.presenceStatus,
  'marked_at': instance.markedAt?.toIso8601String(),
};

_AdmissionReviewer _$AdmissionReviewerFromJson(Map<String, dynamic> json) =>
    _AdmissionReviewer(
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$AdmissionReviewerToJson(_AdmissionReviewer instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'email': instance.email,
    };

_AdmissionReview _$AdmissionReviewFromJson(Map<String, dynamic> json) =>
    _AdmissionReview(
      reviewId: json['review_id'] as String?,
      reviewStatus: json['review_status'] as String?,
      remarks: json['remarks'] as String?,
      reviewedAt: json['reviewed_at'] == null
          ? null
          : DateTime.parse(json['reviewed_at'] as String),
      reviewer: json['users'] == null
          ? null
          : AdmissionReviewer.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdmissionReviewToJson(_AdmissionReview instance) =>
    <String, dynamic>{
      'review_id': instance.reviewId,
      'review_status': instance.reviewStatus,
      'remarks': instance.remarks,
      'reviewed_at': instance.reviewedAt?.toIso8601String(),
      'users': instance.reviewer,
    };

_AdmissionApplicationRow _$AdmissionApplicationRowFromJson(
  Map<String, dynamic> json,
) => _AdmissionApplicationRow(
  applicationId: json['application_id'] as String,
  applicationNo: json['application_no'] as String?,
  applicationStatus: json['application_status'] as String?,
  paymentStatus: json['payment_status'] as String?,
  registrationFee: const NullableDecimalConverter().fromJson(
    json['registration_fee'],
  ),
  submittedAt: json['submitted_at'] == null
      ? null
      : DateTime.parse(json['submitted_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  calledForInterview: json['called_for_interview'] as bool?,
  calledForInterviewAt: json['called_for_interview_at'] == null
      ? null
      : DateTime.parse(json['called_for_interview_at'] as String),
  isQualified: json['is_qualified'] as bool?,
  qualifiedAt: json['qualified_at'] == null
      ? null
      : DateTime.parse(json['qualified_at'] as String),
  isSelectedFinal: json['is_selected_final'] as bool?,
  selectedAt: json['selected_at'] == null
      ? null
      : DateTime.parse(json['selected_at'] as String),
  registeredAt: json['registered_at'] == null
      ? null
      : DateTime.parse(json['registered_at'] as String),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
  institution: json['institutions'] == null
      ? null
      : InstitutionRef.fromJson(json['institutions'] as Map<String, dynamic>),
  applicant: json['applicants'] == null
      ? null
      : AdmissionApplicantBrief.fromJson(
          json['applicants'] as Map<String, dynamic>,
        ),
  parents:
      (json['parents'] as List<dynamic>?)
          ?.map((e) => AdmissionParentBrief.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionParentBrief>[],
  interviewSchedules:
      (json['interview_schedules'] as List<dynamic>?)
          ?.map(
            (e) =>
                AdmissionInterviewSchedule.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdmissionInterviewSchedule>[],
  interviewAttendance:
      (json['interview_attendance'] as List<dynamic>?)
          ?.map(
            (e) => AdmissionInterviewAttendance.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <AdmissionInterviewAttendance>[],
  reviews:
      (json['admission_reviews'] as List<dynamic>?)
          ?.map((e) => AdmissionReview.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionReview>[],
);

Map<String, dynamic> _$AdmissionApplicationRowToJson(
  _AdmissionApplicationRow instance,
) => <String, dynamic>{
  'application_id': instance.applicationId,
  'application_no': instance.applicationNo,
  'application_status': instance.applicationStatus,
  'payment_status': instance.paymentStatus,
  'registration_fee': const NullableDecimalConverter().toJson(
    instance.registrationFee,
  ),
  'submitted_at': instance.submittedAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'called_for_interview': instance.calledForInterview,
  'called_for_interview_at': instance.calledForInterviewAt?.toIso8601String(),
  'is_qualified': instance.isQualified,
  'qualified_at': instance.qualifiedAt?.toIso8601String(),
  'is_selected_final': instance.isSelectedFinal,
  'selected_at': instance.selectedAt?.toIso8601String(),
  'registered_at': instance.registeredAt?.toIso8601String(),
  'classes': instance.classRef,
  'academic_sessions': instance.session,
  'institutions': instance.institution,
  'applicants': instance.applicant,
  'parents': instance.parents,
  'interview_schedules': instance.interviewSchedules,
  'interview_attendance': instance.interviewAttendance,
  'admission_reviews': instance.reviews,
};

_AdmissionApplicationPage _$AdmissionApplicationPageFromJson(
  Map<String, dynamic> json,
) => _AdmissionApplicationPage(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => AdmissionApplicationRow.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdmissionApplicationRow>[],
);

Map<String, dynamic> _$AdmissionApplicationPageToJson(
  _AdmissionApplicationPage instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};

_AdmissionCategoryRef _$AdmissionCategoryRefFromJson(
  Map<String, dynamic> json,
) => _AdmissionCategoryRef(
  categoryId: json['category_id'] as String?,
  categoryName: json['category_name'] as String?,
);

Map<String, dynamic> _$AdmissionCategoryRefToJson(
  _AdmissionCategoryRef instance,
) => <String, dynamic>{
  'category_id': instance.categoryId,
  'category_name': instance.categoryName,
};

_AdmissionReligionRef _$AdmissionReligionRefFromJson(
  Map<String, dynamic> json,
) => _AdmissionReligionRef(
  religionId: json['religion_id'] as String?,
  religionName: json['religion_name'] as String?,
);

Map<String, dynamic> _$AdmissionReligionRefToJson(
  _AdmissionReligionRef instance,
) => <String, dynamic>{
  'religion_id': instance.religionId,
  'religion_name': instance.religionName,
};

_AdmissionApplicant _$AdmissionApplicantFromJson(Map<String, dynamic> json) =>
    _AdmissionApplicant(
      applicantId: json['applicant_id'] as String?,
      applicationId: json['application_id'] as String?,
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      bloodGroup: json['blood_group'] as String?,
      nationality: json['nationality'] as String?,
      aadhaarNo: json['aadhaar_no'] as String?,
      birthCertificateNo: json['birth_certificate_no'] as String?,
      motherTongue: json['mother_tongue'] as String?,
      photoUrl: json['photo_url'] as String?,
      caste: json['caste'] as String?,
      contactNo: json['contact_no'] as String?,
      emailId: json['email_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      category: json['categories'] == null
          ? null
          : AdmissionCategoryRef.fromJson(
              json['categories'] as Map<String, dynamic>,
            ),
      religion: json['religions'] == null
          ? null
          : AdmissionReligionRef.fromJson(
              json['religions'] as Map<String, dynamic>,
            ),
      application: json['admission_applications'] == null
          ? null
          : AdmissionApplicationDetail.fromJson(
              json['admission_applications'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdmissionApplicantToJson(_AdmissionApplicant instance) =>
    <String, dynamic>{
      'applicant_id': instance.applicantId,
      'application_id': instance.applicationId,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'dob': instance.dob?.toIso8601String(),
      'blood_group': instance.bloodGroup,
      'nationality': instance.nationality,
      'aadhaar_no': instance.aadhaarNo,
      'birth_certificate_no': instance.birthCertificateNo,
      'mother_tongue': instance.motherTongue,
      'photo_url': instance.photoUrl,
      'caste': instance.caste,
      'contact_no': instance.contactNo,
      'email_id': instance.emailId,
      'created_at': instance.createdAt?.toIso8601String(),
      'categories': instance.category,
      'religions': instance.religion,
      'admission_applications': instance.application,
    };

_AdmissionParent _$AdmissionParentFromJson(Map<String, dynamic> json) =>
    _AdmissionParent(
      parentId: json['parent_id'] as String?,
      relationType: json['relation_type'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      occupation: json['occupation'] as String?,
      organization: json['organization'] as String?,
      annualIncome: const NullableDecimalConverter().fromJson(
        json['annual_income'],
      ),
      mobileNo: json['mobile_no'] as String?,
      email: json['email'] as String?,
      qualification: json['qualification'] as String?,
      aadhaarNo: json['aadhaar_no'] as String?,
      designation: json['designation'] as String?,
      officeAddress: json['office_address'] as String?,
      isAlumni: json['is_alumni'] as bool?,
    );

Map<String, dynamic> _$AdmissionParentToJson(_AdmissionParent instance) =>
    <String, dynamic>{
      'parent_id': instance.parentId,
      'relation_type': instance.relationType,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'occupation': instance.occupation,
      'organization': instance.organization,
      'annual_income': const NullableDecimalConverter().toJson(
        instance.annualIncome,
      ),
      'mobile_no': instance.mobileNo,
      'email': instance.email,
      'qualification': instance.qualification,
      'aadhaar_no': instance.aadhaarNo,
      'designation': instance.designation,
      'office_address': instance.officeAddress,
      'is_alumni': instance.isAlumni,
    };

_AdmissionSibling _$AdmissionSiblingFromJson(Map<String, dynamic> json) =>
    _AdmissionSibling(
      siblingId: json['sibling_id'] as String?,
      siblingName: json['sibling_name'] as String?,
      admissionNo: json['admission_no'] as String?,
      className: json['class_name'] as String?,
      institutionName: json['institution_name'] as String?,
      currentlyStudying: json['currently_studying'] as bool?,
      relationType: json['relation_type'] as String?,
    );

Map<String, dynamic> _$AdmissionSiblingToJson(_AdmissionSibling instance) =>
    <String, dynamic>{
      'sibling_id': instance.siblingId,
      'sibling_name': instance.siblingName,
      'admission_no': instance.admissionNo,
      'class_name': instance.className,
      'institution_name': instance.institutionName,
      'currently_studying': instance.currentlyStudying,
      'relation_type': instance.relationType,
    };

_AdmissionAddress _$AdmissionAddressFromJson(Map<String, dynamic> json) =>
    _AdmissionAddress(
      addressId: json['address_id'] as String?,
      addressType: json['address_type'] as String?,
      addressLine1: json['address_line1'] as String?,
      addressLine2: json['address_line2'] as String?,
      city: json['city'] as String?,
      district: json['district'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      pincode: const LooseStringConverter().fromJson(json['pincode']),
    );

Map<String, dynamic> _$AdmissionAddressToJson(_AdmissionAddress instance) =>
    <String, dynamic>{
      'address_id': instance.addressId,
      'address_type': instance.addressType,
      'address_line1': instance.addressLine1,
      'address_line2': instance.addressLine2,
      'city': instance.city,
      'district': instance.district,
      'state': instance.state,
      'country': instance.country,
      'pincode': const LooseStringConverter().toJson(instance.pincode),
    };

_AdmissionEmergencyContact _$AdmissionEmergencyContactFromJson(
  Map<String, dynamic> json,
) => _AdmissionEmergencyContact(
  contactId: json['contact_id'] as String?,
  contactName: json['contact_name'] as String?,
  relation: json['relation'] as String?,
  mobileNo: json['mobile_no'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$AdmissionEmergencyContactToJson(
  _AdmissionEmergencyContact instance,
) => <String, dynamic>{
  'contact_id': instance.contactId,
  'contact_name': instance.contactName,
  'relation': instance.relation,
  'mobile_no': instance.mobileNo,
  'email': instance.email,
};

_AdmissionPreviousSchool _$AdmissionPreviousSchoolFromJson(
  Map<String, dynamic> json,
) => _AdmissionPreviousSchool(
  previousSchoolId: json['previous_school_id'] as String?,
  schoolName: json['school_name'] as String?,
  boardName: json['board_name'] as String?,
  classLastAttended: json['class_last_attended'] as String?,
  percentage: const LooseStringConverter().fromJson(json['percentage']),
  passingYear: (json['passing_year'] as num?)?.toInt(),
  tcNumber: json['tc_number'] as String?,
  reasonForLeaving: json['reason_for_leaving'] as String?,
);

Map<String, dynamic> _$AdmissionPreviousSchoolToJson(
  _AdmissionPreviousSchool instance,
) => <String, dynamic>{
  'previous_school_id': instance.previousSchoolId,
  'school_name': instance.schoolName,
  'board_name': instance.boardName,
  'class_last_attended': instance.classLastAttended,
  'percentage': const LooseStringConverter().toJson(instance.percentage),
  'passing_year': instance.passingYear,
  'tc_number': instance.tcNumber,
  'reason_for_leaving': instance.reasonForLeaving,
};

_AdmissionDocumentType _$AdmissionDocumentTypeFromJson(
  Map<String, dynamic> json,
) => _AdmissionDocumentType(
  documentTypeId: json['document_type_id'] as String?,
  documentName: json['document_name'] as String?,
  isMandatory: json['is_mandatory'] as bool?,
);

Map<String, dynamic> _$AdmissionDocumentTypeToJson(
  _AdmissionDocumentType instance,
) => <String, dynamic>{
  'document_type_id': instance.documentTypeId,
  'document_name': instance.documentName,
  'is_mandatory': instance.isMandatory,
};

_AdmissionDocument _$AdmissionDocumentFromJson(Map<String, dynamic> json) =>
    _AdmissionDocument(
      documentId: json['document_id'] as String,
      documentTypeId: json['document_type_id'] as String?,
      fileName: json['file_name'] as String?,
      fileUrl: json['file_url'] as String?,
      fileSize: const LooseNumConverter().fromJson(json['file_size']),
      mimeType: json['mime_type'] as String?,
      verificationStatus: json['verification_status'] as String?,
      remarks: json['remarks'] as String?,
      uploadDate: json['upload_date'] == null
          ? null
          : DateTime.parse(json['upload_date'] as String),
      documentType: json['document_types'] == null
          ? null
          : AdmissionDocumentType.fromJson(
              json['document_types'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdmissionDocumentToJson(_AdmissionDocument instance) =>
    <String, dynamic>{
      'document_id': instance.documentId,
      'document_type_id': instance.documentTypeId,
      'file_name': instance.fileName,
      'file_url': instance.fileUrl,
      'file_size': const LooseNumConverter().toJson(instance.fileSize),
      'mime_type': instance.mimeType,
      'verification_status': instance.verificationStatus,
      'remarks': instance.remarks,
      'upload_date': instance.uploadDate?.toIso8601String(),
      'document_types': instance.documentType,
    };

_AdmissionEntranceTest _$AdmissionEntranceTestFromJson(
  Map<String, dynamic> json,
) => _AdmissionEntranceTest(
  testId: json['test_id'] as String?,
  testName: json['test_name'] as String?,
  testDate: json['test_date'] == null
      ? null
      : DateTime.parse(json['test_date'] as String),
  startTime: json['start_time'] == null
      ? null
      : DateTime.parse(json['start_time'] as String),
  endTime: json['end_time'] == null
      ? null
      : DateTime.parse(json['end_time'] as String),
  venue: json['venue'] as String?,
);

Map<String, dynamic> _$AdmissionEntranceTestToJson(
  _AdmissionEntranceTest instance,
) => <String, dynamic>{
  'test_id': instance.testId,
  'test_name': instance.testName,
  'test_date': instance.testDate?.toIso8601String(),
  'start_time': instance.startTime?.toIso8601String(),
  'end_time': instance.endTime?.toIso8601String(),
  'venue': instance.venue,
};

_AdmissionEntranceTestAssignment _$AdmissionEntranceTestAssignmentFromJson(
  Map<String, dynamic> json,
) => _AdmissionEntranceTestAssignment(
  assignmentId: json['assignment_id'] as String?,
  registrationNumber: json['registration_number'] as String?,
  seatNumber: json['seat_number'] as String?,
  assignedAt: json['assigned_at'] == null
      ? null
      : DateTime.parse(json['assigned_at'] as String),
  test: json['entrance_tests'] == null
      ? null
      : AdmissionEntranceTest.fromJson(
          json['entrance_tests'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AdmissionEntranceTestAssignmentToJson(
  _AdmissionEntranceTestAssignment instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'registration_number': instance.registrationNumber,
  'seat_number': instance.seatNumber,
  'assigned_at': instance.assignedAt?.toIso8601String(),
  'entrance_tests': instance.test,
};

_AdmissionApplicationDetail _$AdmissionApplicationDetailFromJson(
  Map<String, dynamic> json,
) => _AdmissionApplicationDetail(
  applicationId: json['application_id'] as String,
  applicationNo: json['application_no'] as String?,
  applicationStatus: json['application_status'] as String?,
  paymentStatus: json['payment_status'] as String?,
  registrationFee: const NullableDecimalConverter().fromJson(
    json['registration_fee'],
  ),
  submittedAt: json['submitted_at'] == null
      ? null
      : DateTime.parse(json['submitted_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  paymentRejectionReason: json['payment_rejection_reason'] as String?,
  calledForInterview: json['called_for_interview'] as bool?,
  calledForInterviewAt: json['called_for_interview_at'] == null
      ? null
      : DateTime.parse(json['called_for_interview_at'] as String),
  isQualified: json['is_qualified'] as bool?,
  qualifiedAt: json['qualified_at'] == null
      ? null
      : DateTime.parse(json['qualified_at'] as String),
  isSelectedFinal: json['is_selected_final'] as bool?,
  selectedAt: json['selected_at'] == null
      ? null
      : DateTime.parse(json['selected_at'] as String),
  registeredAt: json['registered_at'] == null
      ? null
      : DateTime.parse(json['registered_at'] as String),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
  institution: json['institutions'] == null
      ? null
      : InstitutionRef.fromJson(json['institutions'] as Map<String, dynamic>),
  applicant: json['applicants'] == null
      ? null
      : AdmissionApplicant.fromJson(json['applicants'] as Map<String, dynamic>),
  parents:
      (json['parents'] as List<dynamic>?)
          ?.map((e) => AdmissionParent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionParent>[],
  siblings:
      (json['siblings'] as List<dynamic>?)
          ?.map((e) => AdmissionSibling.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionSibling>[],
  addresses:
      (json['addresses'] as List<dynamic>?)
          ?.map((e) => AdmissionAddress.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionAddress>[],
  emergencyContacts:
      (json['emergency_contacts'] as List<dynamic>?)
          ?.map(
            (e) =>
                AdmissionEmergencyContact.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdmissionEmergencyContact>[],
  previousSchools:
      (json['previous_schools'] as List<dynamic>?)
          ?.map(
            (e) => AdmissionPreviousSchool.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdmissionPreviousSchool>[],
  documents:
      (json['applicant_documents'] as List<dynamic>?)
          ?.map((e) => AdmissionDocument.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionDocument>[],
  reviews:
      (json['admission_reviews'] as List<dynamic>?)
          ?.map((e) => AdmissionReview.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionReview>[],
  entranceTests:
      (json['entrance_test_assignments'] as List<dynamic>?)
          ?.map(
            (e) => AdmissionEntranceTestAssignment.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <AdmissionEntranceTestAssignment>[],
  interviewAttendance:
      (json['interview_attendance'] as List<dynamic>?)
          ?.map(
            (e) => AdmissionInterviewAttendance.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <AdmissionInterviewAttendance>[],
);

Map<String, dynamic> _$AdmissionApplicationDetailToJson(
  _AdmissionApplicationDetail instance,
) => <String, dynamic>{
  'application_id': instance.applicationId,
  'application_no': instance.applicationNo,
  'application_status': instance.applicationStatus,
  'payment_status': instance.paymentStatus,
  'registration_fee': const NullableDecimalConverter().toJson(
    instance.registrationFee,
  ),
  'submitted_at': instance.submittedAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'payment_rejection_reason': instance.paymentRejectionReason,
  'called_for_interview': instance.calledForInterview,
  'called_for_interview_at': instance.calledForInterviewAt?.toIso8601String(),
  'is_qualified': instance.isQualified,
  'qualified_at': instance.qualifiedAt?.toIso8601String(),
  'is_selected_final': instance.isSelectedFinal,
  'selected_at': instance.selectedAt?.toIso8601String(),
  'registered_at': instance.registeredAt?.toIso8601String(),
  'classes': instance.classRef,
  'academic_sessions': instance.session,
  'institutions': instance.institution,
  'applicants': instance.applicant,
  'parents': instance.parents,
  'siblings': instance.siblings,
  'addresses': instance.addresses,
  'emergency_contacts': instance.emergencyContacts,
  'previous_schools': instance.previousSchools,
  'applicant_documents': instance.documents,
  'admission_reviews': instance.reviews,
  'entrance_test_assignments': instance.entranceTests,
  'interview_attendance': instance.interviewAttendance,
};

_AdmissionBulkFailure _$AdmissionBulkFailureFromJson(
  Map<String, dynamic> json,
) => _AdmissionBulkFailure(
  applicationId: json['application_id'] as String?,
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$AdmissionBulkFailureToJson(
  _AdmissionBulkFailure instance,
) => <String, dynamic>{
  'application_id': instance.applicationId,
  'reason': instance.reason,
};

_AdmissionBulkResult _$AdmissionBulkResultFromJson(
  Map<String, dynamic> json,
) => _AdmissionBulkResult(
  succeeded:
      (json['succeeded'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  failed:
      (json['failed'] as List<dynamic>?)
          ?.map((e) => AdmissionBulkFailure.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdmissionBulkFailure>[],
);

Map<String, dynamic> _$AdmissionBulkResultToJson(
  _AdmissionBulkResult instance,
) => <String, dynamic>{
  'succeeded': instance.succeeded,
  'failed': instance.failed,
};

_AdmissionRegistrationResult _$AdmissionRegistrationResultFromJson(
  Map<String, dynamic> json,
) => _AdmissionRegistrationResult(
  studentId: json['student_id'] as String?,
  applicationId: json['application_id'] as String?,
  admissionNo: json['admission_no'] as String?,
  admissionDate: json['admission_date'] == null
      ? null
      : DateTime.parse(json['admission_date'] as String),
  username: json['username'] as String?,
  password: json['password'] as String?,
  documentsCarriedForward: (json['documents_carried_forward'] as num?)?.toInt(),
);

Map<String, dynamic> _$AdmissionRegistrationResultToJson(
  _AdmissionRegistrationResult instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'application_id': instance.applicationId,
  'admission_no': instance.admissionNo,
  'admission_date': instance.admissionDate?.toIso8601String(),
  'username': instance.username,
  'password': instance.password,
  'documents_carried_forward': instance.documentsCarriedForward,
};

_AdmissionStartedApplication _$AdmissionStartedApplicationFromJson(
  Map<String, dynamic> json,
) => _AdmissionStartedApplication(
  applicationId: json['application_id'] as String,
  applicationNo: json['application_no'] as String?,
);

Map<String, dynamic> _$AdmissionStartedApplicationToJson(
  _AdmissionStartedApplication instance,
) => <String, dynamic>{
  'application_id': instance.applicationId,
  'application_no': instance.applicationNo,
};

_AdmissionActiveSession _$AdmissionActiveSessionFromJson(
  Map<String, dynamic> json,
) => _AdmissionActiveSession(
  sessionId: json['session_id'] as String,
  sessionName: json['session_name'] as String?,
);

Map<String, dynamic> _$AdmissionActiveSessionToJson(
  _AdmissionActiveSession instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'session_name': instance.sessionName,
};
