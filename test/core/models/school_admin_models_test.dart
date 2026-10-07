// Parse tests for the School Admin models, using payloads shaped exactly
// like the backend (edusoft_backend/src/features/admin/staff/*.service.js,
// admin/role-permissions, admin/settings, school/branches.service.js) —
// see each model's doc comment for its source.

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/admin_staff.dart';
import 'package:edusoft_mobile/core/models/school_admin_settings.dart';

/// staff.service.js#serializeStaff over STAFF_DETAIL_SELECT.
const staffDetailJson = {
  'staff_id': '8b0e2c1a-0000-4000-8000-000000000001',
  'employee_code': 'GHPS-EMP-0015',
  'full_name': 'Ramesh Kumar Srinivasan Iyer',
  'designation': 'Senior Teacher',
  'department': 'Mathematics',
  'employee_type': 'Full Time',
  'date_of_joining': '2021-06-01T00:00:00.000Z',
  'employment_status': 'ACTIVE',
  'profile_photo_url': null,
  'created_at': '2021-06-01T09:12:44.120Z',
  'branch': {'branch_id': 'b1', 'branch_name': 'Main Campus'},
  'institution_id': 'inst1',
  'date_of_birth': '1986-03-14T00:00:00.000Z',
  'gender': 'Male',
  'address': '12 MG Road, Camp, Pune, Maharashtra 411001',
  'qualification': 'M.Sc, B.Ed',
  'confirmation_date': null,
  'work_location': 'Main Campus',
  'institution': {'institution_id': 'inst1', 'institution_name': 'Green Hills Public School'},
  'reports_to': {'staff_id': 'p1', 'full_name': 'Anita Desai', 'designation': 'Principal'},
  'direct_reports': [
    {'staff_id': 'd1', 'full_name': 'Kavya Nair', 'designation': 'Lab Assistant'},
  ],
  'class_teacher_assignments': [
    {
      'assignment_id': 'ca1',
      'classes': {'class_id': 'c8', 'class_name': 'Class 8'},
      'sections': {'section_id': 's1', 'section_name': 'A'},
      'academic_sessions': {'session_id': 'ses1', 'session_name': '2026-27'},
    },
  ],
  'academic_subject_teachers': [
    {
      'subject_teacher_id': 'st1',
      'classes': {'class_id': 'c8', 'class_name': 'Class 8'},
      'sections': {'section_id': 's1', 'section_name': 'A'},
      'academic_subjects': {'subject_id': 'm', 'subject_name': 'Mathematics'},
      'academic_sessions': {'session_id': 'ses1', 'session_name': '2026-27'},
    },
  ],
  'contact_number': '9876543210',
  'user_id': 'u-15',
  'username': 'GHPS-EMP-0015',
  'email': 'ramesh.iyer@example.com',
  'mobile_no': '9876543210',
  'account_status': 'ACTIVE',
  'failed_login_attempts': 0,
  'roles': ['Teacher', 'Class Teacher'],
  'total_experience_years': '12.5',
  'pan_number': 'ABCDE1234F',
  'aadhaar_number': '123412341234',
  'bank_account_number': '50100012345678',
  'account_holder_name': 'Ramesh K S Iyer',
  'bank_name': 'HDFC Bank',
  'branch_name': 'Camp, Pune',
  'ifsc_code': 'HDFC0001234',
  'pf_uan_number': '100200300400',
  'esi_number': null,
  'pf_applicable': true,
  'esi_applicable': false,
  'pt_applicable': true,
};

void main() {
  test('StaffMember — detail payload', () {
    final s = StaffMember.fromJson(staffDetailJson);
    expect(s.userId, 'u-15');
    expect(s.roles, ['Teacher', 'Class Teacher']);
    expect(s.branch?.branchName, 'Main Campus');
    expect(s.bankBranchName, 'Camp, Pune');
    expect(s.reportsTo?.fullName, 'Anita Desai');
    expect(s.directReports.single.designation, 'Lab Assistant');
    expect(s.classTeacherAssignments.single.sections?.sectionName, 'A');
    expect(s.subjectAssignments.single.subject?.subjectName, 'Mathematics');
    expect(s.totalExperienceYears, '12.5');
    expect(s.dateOfBirth, DateTime.utc(1986, 3, 14));
    expect(s.pfApplicable, isTrue);
  });

  test('StaffPage — listStaff (list rows have no detail-only fields)', () {
    final page = StaffPage.fromJson({
      'total': 23,
      'page': 1,
      'limit': 10,
      'data': [
        {
          'staff_id': 's2',
          'employee_code': 'GHPS-EMP-0002',
          'full_name': 'Meera Joshi',
          'designation': null,
          'department': null,
          'employee_type': null,
          'date_of_joining': '2024-04-01T00:00:00.000Z',
          'employment_status': 'INACTIVE',
          'profile_photo_url': null,
          'contact_number': null,
          'created_at': '2024-04-01T10:00:00.000Z',
          'branch': null,
          'user_id': 'u-2',
          'username': 'GHPS-EMP-0002',
          'email': null,
          'mobile_no': null,
          'account_status': 'SUSPENDED',
          'failed_login_attempts': 3,
          'roles': ['Librarian'],
        },
      ],
    });
    expect(page.total, 23);
    final m = page.data.single;
    expect(m.accountStatus, 'SUSPENDED');
    expect(m.directReports, isEmpty);
    expect(m.pfApplicable, isNull);
  });

  test('StaffSummary / StaffCredentials', () {
    final sum = StaffSummary.fromJson({
      'total': 40,
      'unassigned': 1,
      'roles': [
        {'role_name': 'Teacher', 'count': 28},
        {'role_name': 'Class Teacher', 'count': 12},
      ],
    });
    expect(sum.roles.fold<int>(0, (a, r) => a + r.count), 40);

    final creds = StaffCredentials.fromJson({
      'user_id': 'u-9',
      'staff_id': 's9',
      'username': 'GHPS-EMP-0041',
      'employee_code': 'GHPS-EMP-0041',
      'password': 'Xy7#kP2q',
      'full_name': 'Neha Kulkarni',
      'email': null,
      'roles': ['Receptionist'],
    });
    expect(creds.password, 'Xy7#kP2q');
  });

  test('StaffDocument / StaffQualification / StaffExperience / remarks', () {
    final doc = StaffDocument.fromJson({
      'document_id': 'd1',
      'staff_id': 's1',
      'document_name': 'PAN Card',
      'file_name': 'pan.pdf',
      'file_url': 'https://res.cloudinary.com/x/pan.pdf',
      'mime_type': 'application/pdf',
      'file_size': '183422',
      'verification_status': 'REJECTED',
      'remarks': 'Unreadable',
      'uploaded_at': '2026-09-01T08:30:00.000Z',
    });
    expect(doc.verificationStatus, 'REJECTED');

    final q = StaffQualification.fromJson({
      'qualification_id': 'q1',
      'staff_id': 's1',
      'qualification_name': 'M.Sc Mathematics',
      'specialization': 'Algebra',
      'institution_name': 'Fergusson College',
      'university_board': 'Pune University',
      'passing_year': 2010,
      'percentage': '78.5',
      'cgpa': null,
      'grade': null,
      'start_year': 2008,
      'end_year': null,
      'certificate_url': null,
      'certificate_file_name': null,
      'created_at': '2026-09-01T08:30:00.000Z',
      'updated_at': '2026-09-01T08:30:00.000Z',
    });
    expect(q.percentage, '78.5');
    expect(q.passingYear, 2010);

    final e = StaffExperience.fromJson({
      'experience_id': 'e1',
      'staff_id': 's1',
      'organization_name': 'ABC Public School',
      'designation': 'Teacher',
      'department': 'Maths',
      'employment_type': 'Full Time',
      'start_date': '2015-06-01T00:00:00.000Z',
      'end_date': null,
      'is_current': true,
      'responsibilities': null,
      'description': null,
      'experience_letter_url': null,
      'experience_letter_file_name': null,
    });
    expect(e.isCurrent, isTrue);

    final r = StaffPrincipalRemark.fromJson({
      'remark_id': 'r1',
      'staff_id': 's1',
      'remark_text': 'Excellent board results this year.',
      'remark_type': 'RECOMMENDED_ACTION',
      'created_at': '2026-08-20T11:00:00.000Z',
      'users': {'user_id': 'p-u', 'username': 'principal'},
    });
    expect(r.remarkType, 'RECOMMENDED_ACTION');
  });

  test('SalaryStructureAssignment — Decimal strings + computed numbers', () {
    final a = SalaryStructureAssignment.fromJson({
      'staff_id': 's1',
      'template_id': 't1',
      'ctc_amount': '600000',
      'effective_from': '2026-04-01T00:00:00.000Z',
      'created_at': '2026-04-01T08:00:00.000Z',
      'updated_at': '2026-04-01T08:00:00.000Z',
      'template': {
        'template_id': 't1',
        'institution_id': 'inst1',
        'template_name': 'Teaching Staff',
        'description': null,
        'components': [
          {
            'component_id': 'c1',
            'template_id': 't1',
            'component_name': 'Basic',
            'percentage_of_ctc': '50',
            'display_order': 1,
            'computed_amount': 300000,
          },
          {
            'component_id': 'c2',
            'template_id': 't1',
            'component_name': 'HRA',
            'percentage_of_ctc': '20.5',
            'display_order': 2,
            'computed_amount': 123000,
          },
        ],
      },
      'take_home_estimate': {
        'monthly_gross': 50000,
        'pf_amount': 6000,
        'esi_amount': 0,
        'pt_amount': 200,
        'tds_amount': 0,
        'total_deductions': 6200,
        'take_home_salary': 43800,
      },
    });
    expect(a.ctcAmount, Decimal.parse('600000'));
    expect(a.template.components[1].percentageOfCtc, Decimal.parse('20.5'));
    expect(a.template.components.first.computedAmount, Decimal.parse('300000'));
    expect(a.takeHomeEstimate?.takeHomeSalary, Decimal.parse('43800'));
  });

  test('Role permissions / branches / subscription / logo', () {
    final role = RoleRef.fromJson({'role_id': 'r-teacher', 'role_name': 'Teacher'});
    expect(role.roleName, 'Teacher');

    final catalog = PermissionModule.fromJson({
      'module': 'Student Profile',
      'permissions': [
        {'permission_key': 'students.view', 'label': 'View student profiles'},
      ],
    });
    expect(catalog.permissions.single.permissionKey, 'students.view');

    final grants = RolePermissionGrants.fromJson({
      'role_id': 'r-teacher',
      'role_name': 'Teacher',
      'permission_keys': ['students.view'],
    });
    expect(grants.permissionKeys, ['students.view']);

    final branch = SchoolBranch.fromJson({
      'branch_id': 'b1',
      'institution_id': 'inst1',
      'branch_name': 'Main Campus',
      'branch_code': 'MAIN',
      'address': null,
      'contact_no': null,
      'email': null,
      'status': 'ACTIVE',
      'created_at': '2026-01-01T00:00:00.000Z',
      'updated_at': '2026-01-01T00:00:00.000Z',
    });
    expect(branch.branchCode, 'MAIN');

    final sub = SchoolSubscription.fromJson({
      'subscription_status': 'TRIAL',
      'subscription_start_date': '2026-04-01T00:00:00.000Z',
      'subscription_end_date': '2027-03-31T00:00:00.000Z',
      'subscription_plan': {
        'plan_id': 'pl1',
        'plan_name': 'Growth',
        'price': '4999',
        'max_students': 1500,
        'max_teachers': 120,
        'max_storage_gb': 50,
        'max_branches': 3,
        'is_active': true,
      },
    });
    expect(sub.subscriptionPlan?.price, Decimal.parse('4999'));
    expect(SchoolSubscription.fromJson({'subscription_status': 'ACTIVE', 'subscription_plan': null}).subscriptionPlan, isNull);

    final logo = SchoolLogo.fromJson({
      'institution_id': 'inst1',
      'institution_name': 'Green Hills Public School',
      'logo_url': 'https://res.cloudinary.com/x/logo.png',
    });
    expect(logo.logoUrl, isNotNull);
  });
}
