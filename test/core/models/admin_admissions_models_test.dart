// Parse tests for the admissions models, using payloads shaped exactly like
// the backend (edusoft_backend/src/features/admin/admission/admission.service.js
// and features/admission/*.service.js) — see each model's doc comment.

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/admin_admissions.dart';

const _applicant = {
  'applicant_id': 'ap1',
  'first_name': 'Aishwarya',
  'middle_name': 'Lakshmi',
  'last_name': 'Venkataraman-Subramanian',
  'gender': 'Female',
  'dob': '2014-03-09T00:00:00.000Z',
  'contact_no': '9876543210',
  'email_id': 'aishwarya.parent@example.com',
  'photo_url': null,
};

const _father = {
  'parent_id': 'pf1',
  'relation_type': 'FATHER',
  'first_name': 'Venkataraman',
  'last_name': 'Subramanian',
  'mobile_no': '9876500001',
  'email': null,
};

/// listApplications (GET /admin/admission/applications).
const admissionRowJson = {
  'application_id': 'app1',
  'application_no': 'APP-2026-0001',
  'application_status': 'Submitted',
  'payment_status': 'Pending',
  'registration_fee': '1500',
  'submitted_at': '2026-09-20T09:30:00.000Z',
  'created_at': '2026-09-19T10:00:00.000Z',
  'classes': {'class_id': 'c5', 'class_name': 'Class 5'},
  'academic_sessions': {'session_id': 'ses1', 'session_name': '2026-27'},
  'institutions': {'institution_id': 'inst1', 'institution_name': 'Green Hills Public School'},
  'applicants': _applicant,
};

/// listPresentApplicants — schedules, attendance, parents, qualification.
const admissionPresentRowJson = {
  'application_id': 'app2',
  'application_no': 'APP-2026-0002',
  'application_status': 'Called For Interview',
  'is_qualified': false,
  'classes': {'class_id': 'c5', 'class_name': 'Class 5'},
  'applicants': _applicant,
  'parents': [_father],
  'interview_schedules': [
    {
      'schedule_id': 's1',
      'interview_date': '2026-10-12T00:00:00.000Z',
      'interview_time': '1970-01-01T09:30:00.000Z',
      'scheduled_at': '2026-10-01T08:00:00.000Z',
    },
  ],
  'interview_attendance': [
    {'attendance_id': 'ia1', 'presence_status': 'Present', 'marked_at': '2026-10-12T09:40:00.000Z'},
  ],
};

/// listRejectedApplicants — admission_reviews take 1.
const admissionRejectedRowJson = {
  'application_id': 'app3',
  'application_no': 'APP-2026-0003',
  'application_status': 'Rejected',
  'updated_at': '2026-10-02T12:00:00.000Z',
  'classes': {'class_id': 'c6', 'class_name': 'Class 6'},
  'applicants': _applicant,
  'parents': [_father],
  'admission_reviews': [
    {
      'review_id': 'r1',
      'review_status': 'Rejected',
      'remarks': 'Does not meet eligibility criteria',
      'reviewed_at': '2026-10-02T12:00:00.000Z',
    },
  ],
};

/// getApplicationDetail — every relation.
const admissionDetailJson = {
  'application_id': 'app1',
  'application_no': 'APP-2026-0001',
  'application_status': 'Final Selected',
  'payment_status': 'Verified',
  'registration_fee': '1500.00',
  'submitted_at': '2026-09-20T09:30:00.000Z',
  'created_at': '2026-09-19T10:00:00.000Z',
  'updated_at': '2026-10-05T10:00:00.000Z',
  'payment_rejection_reason': null,
  'called_for_interview': true,
  'called_for_interview_at': '2026-10-01T08:00:00.000Z',
  'is_qualified': true,
  'qualified_at': '2026-10-13T08:00:00.000Z',
  'is_selected_final': true,
  'selected_at': '2026-10-14T08:00:00.000Z',
  'registered_at': null,
  'classes': {'class_id': 'c5', 'class_name': 'Class 5'},
  'academic_sessions': {'session_id': 'ses1', 'session_name': '2026-27'},
  'institutions': {'institution_id': 'inst1', 'institution_name': 'Green Hills Public School'},
  'applicants': {
    ..._applicant,
    'application_id': 'app1',
    'blood_group': 'B+',
    'nationality': 'Indian',
    'aadhaar_no': '123412341234',
    'birth_certificate_no': 'BC2014/001',
    'mother_tongue': 'Tamil',
    'caste': 'General',
    'created_at': '2026-09-19T10:00:00.000Z',
    'categories': {'category_id': 'cat1', 'category_name': 'General'},
    'religions': {'religion_id': 'rel1', 'religion_name': 'Hindu'},
  },
  'parents': [
    {
      ..._father,
      'occupation': 'Private Service',
      'organization': 'ACME Industries Private Limited',
      'annual_income': '1200000.00',
      'qualification': 'Graduate',
      'aadhaar_no': '123412341235',
      'designation': 'Senior Project Manager',
      'office_address': 'Plot 4, MIDC, Pune',
      'is_alumni': false,
    },
  ],
  'siblings': [
    {
      'sibling_id': 'sb1',
      'sibling_name': 'Rohan Venkataraman',
      'admission_no': 'ADM-2023-0042',
      'class_name': 'Class 8',
      'institution_name': null,
      'currently_studying': true,
      'relation_type': 'BROTHER',
    },
  ],
  'addresses': [
    {
      'address_id': 'ad1',
      'address_type': 'PERMANENT',
      'address_line1': '12 MG Road',
      'address_line2': null,
      'city': 'Pune',
      'district': 'Pune',
      'state': 'Maharashtra',
      'country': 'India',
      'pincode': 411001,
    },
  ],
  'emergency_contacts': [
    {'contact_id': 'ec1', 'contact_name': 'Meena Iyer', 'relation': 'Aunt', 'mobile_no': '9876500009', 'email': null},
  ],
  'previous_schools': [
    {
      'previous_school_id': 'ps1',
      'school_name': 'City Primary School',
      'board_name': 'CBSE',
      'class_last_attended': 'Class 4',
      'percentage': '88.50',
      'passing_year': 2025,
      'tc_number': 'TC2025/001',
      'reason_for_leaving': 'Relocation',
    },
  ],
  'applicant_documents': [
    {
      'document_id': 'd1',
      'document_type_id': 'dt1',
      'file_name': 'birth_certificate.pdf',
      'file_url': 'https://res.cloudinary.com/x/raw/upload/birth_certificate.pdf',
      'file_size': '183422',
      'mime_type': 'application/pdf',
      'verification_status': 'Pending',
      'remarks': null,
      'upload_date': '2026-09-19T10:30:00.000Z',
      'document_types': {'document_type_id': 'dt1', 'document_name': 'Birth Certificate', 'is_mandatory': true},
    },
  ],
  'admission_reviews': [
    {
      'review_id': 'r1',
      'review_status': 'Shortlisted',
      'remarks': 'Good profile',
      'reviewed_at': '2026-10-03T08:00:00.000Z',
      'users': {'user_id': 'u1', 'username': 'admin', 'email': 'admin@example.com'},
    },
  ],
  'entrance_test_assignments': [
    {
      'assignment_id': 'eta1',
      'registration_number': 'REG-001',
      'seat_number': 'A-14',
      'assigned_at': '2026-10-01T08:00:00.000Z',
      'entrance_tests': {
        'test_id': 't1',
        'test_name': 'Class 5 Entrance Test',
        'test_date': '2026-10-10T00:00:00.000Z',
        'start_time': '1970-01-01T10:00:00.000Z',
        'end_time': '1970-01-01T11:30:00.000Z',
        'venue': 'Main Auditorium, Block B',
      },
    },
  ],
  'interview_attendance': [
    {'attendance_id': 'ia1', 'presence_status': 'Present', 'marked_at': '2026-10-12T09:40:00.000Z'},
  ],
};

void main() {
  test('AdmissionApplicationRow — listApplications', () {
    final row = AdmissionApplicationRow.fromJson(admissionRowJson);
    expect(row.applicationNo, 'APP-2026-0001');
    expect(row.registrationFee, Decimal.parse('1500'));
    expect(row.applicant?.fullName, 'Aishwarya Lakshmi Venkataraman-Subramanian');
    expect(row.classRef?.className, 'Class 5');
    expect(row.session?.sessionName, '2026-27');
    expect(row.parents, isEmpty);
  });

  test('AdmissionApplicationPage — empty and populated', () {
    expect(AdmissionApplicationPage.fromJson({'total': 0, 'page': 1, 'limit': 20, 'data': []}).data, isEmpty);
    final page = AdmissionApplicationPage.fromJson({
      'total': 41,
      'page': 2,
      'limit': 20,
      'data': [admissionRowJson],
    });
    expect(page.total, 41);
    expect(page.data.single.applicationId, 'app1');
  });

  test('Present row — interview schedule, attendance and parents', () {
    final row = AdmissionApplicationRow.fromJson(admissionPresentRowJson);
    final schedule = row.interviewSchedules.single;
    expect(schedule.interviewDate, DateTime.utc(2026, 10, 12));
    expect(schedule.interviewTime?.toUtc().hour, 9); // @db.Time pinned to 1970-01-01
    expect(row.interviewAttendance.single.presenceStatus, 'Present');
    expect(row.parents.single.relationType, 'FATHER');
    expect(row.isQualified, isFalse);
  });

  test('Rejected row — admission_reviews', () {
    final row = AdmissionApplicationRow.fromJson(admissionRejectedRowJson);
    expect(row.reviews.single.remarks, 'Does not meet eligibility criteria');
    expect(row.reviews.single.reviewedAt, isNotNull);
    expect(row.applicationStatus, 'Rejected');
  });

  test('An unknown status is kept as a plain string', () {
    final row = AdmissionApplicationRow.fromJson({
      ...admissionRowJson,
      'application_status': 'Payment Verified',
      'payment_status': 'Verified',
    });
    expect(row.applicationStatus, 'Payment Verified');
  });

  test('AdmissionApplicationDetail — every relation', () {
    final d = AdmissionApplicationDetail.fromJson(admissionDetailJson);
    expect(d.registrationFee, Decimal.parse('1500'));
    expect(d.applicant?.bloodGroup, 'B+');
    expect(d.applicant?.religion?.religionName, 'Hindu');
    expect(d.parents.single.annualIncome, Decimal.parse('1200000'));
    expect(d.parents.single.fullName, 'Venkataraman Subramanian');
    expect(d.siblings.single.className, 'Class 8');
    expect(d.addresses.single.pincode, '411001'); // numeric on the wire, shown as text
    expect(d.addresses.single.line, '12 MG Road, Pune, Maharashtra, 411001, India');
    expect(d.emergencyContacts.single.contactName, 'Meena Iyer');
    expect(d.previousSchools.single.percentage, '88.50');
    expect(d.documents.single.fileSize, 183422);
    expect(d.documents.single.documentType?.isMandatory, isTrue);
    expect(d.reviews.single.reviewer?.username, 'admin');
    final test = d.entranceTests.single.test;
    expect(test?.venue, 'Main Auditorium, Block B');
    expect(test?.startTime?.toUtc().hour, 10);
    expect(d.entranceTests.single.seatNumber, 'A-14');
    expect(d.interviewAttendance.first.presenceStatus, 'Present');
  });

  test('AdmissionApplicant — getApplicantProfile nests its one application', () {
    final a = AdmissionApplicant.fromJson({
      ...(admissionDetailJson['applicants']! as Map<String, dynamic>),
      'admission_applications': {...admissionDetailJson, 'applicants': null},
    });
    expect(a.fullName, 'Aishwarya Lakshmi Venkataraman-Subramanian');
    expect(a.application?.parents, hasLength(1));
    expect(a.application?.documents, hasLength(1));
    expect(a.application?.applicationNo, 'APP-2026-0001');
  });

  test('Sparse payloads parse (nothing entered yet)', () {
    final d = AdmissionApplicationDetail.fromJson({
      'application_id': 'app9',
      'application_no': 'APP-2026-0009',
      'application_status': 'Draft',
      'payment_status': 'Pending',
      'applicants': null,
    });
    expect(d.applicant, isNull);
    expect(d.parents, isEmpty);
    expect(d.documents, isEmpty);
    expect(AdmissionApplicant.fromJson({'applicant_id': 'x'}).fullName, isNull);
  });

  test('AdmissionBulkResult — partial success', () {
    final r = AdmissionBulkResult.fromJson({
      'succeeded': ['a', 'b'],
      'failed': [
        {'application_id': '11111111-2222-3333-4444-555555555555', 'reason': 'Payment is not in Pending state'},
      ],
    });
    expect(r.succeeded, ['a', 'b']);
    expect(r.failed.single.reason, 'Payment is not in Pending state');
  });

  test('Registration / start / session results', () {
    final reg = AdmissionRegistrationResult.fromJson({
      'student_id': 'st1',
      'application_id': 'app1',
      'admission_no': 'ADM-2026-0101',
      'admission_date': '2026-10-15T00:00:00.000Z',
      'username': 'ADM-2026-0101',
      'password': 'Xy7#kP2q',
      'documents_carried_forward': 3,
    });
    expect(reg.password, 'Xy7#kP2q');
    expect(reg.documentsCarriedForward, 3);

    final started = AdmissionStartedApplication.fromJson({
      'application_id': 'app10',
      'application_no': 'APP-2026-0010',
      'application_status': 'Draft',
      'payment_status': 'Pending',
      'created_at': '2026-10-06T08:00:00.000Z',
    });
    expect(started.applicationId, 'app10');

    final session = AdmissionActiveSession.fromJson({
      'session_id': 'ses1',
      'session_name': '2026-27',
      'total_sections': 12,
      'assigned': 10,
      'unassigned': 2,
      'data': [],
    });
    expect(session.sessionId, 'ses1');
  });

  test('Document types and the uploaded document list', () {
    final t = AdmissionDocumentType.fromJson({
      'document_type_id': 'dt1',
      'document_name': 'Birth Certificate',
      'is_mandatory': true,
    });
    expect(t.isMandatory, isTrue);
    final d = AdmissionDocument.fromJson({
      'document_id': 'd1',
      'application_id': 'app1',
      'document_type_id': 'dt1',
      'file_name': 'bc.pdf',
      'file_url': 'https://res.cloudinary.com/x/bc.pdf',
      'file_size': 4096,
      'mime_type': 'application/pdf',
      'verification_status': 'Verified',
      'upload_date': '2026-09-19T10:30:00.000Z',
    });
    expect(d.fileSize, 4096);
    expect(d.verificationStatus, 'Verified');
  });

  test('admissionFullName skips blank parts', () {
    expect(admissionFullName('A', null, 'B'), 'A B');
    expect(admissionFullName(' ', '', null), isNull);
  });
}
