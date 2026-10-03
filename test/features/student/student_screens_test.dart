// Renders every student screen at phone, portrait-tablet and
// landscape-tablet sizes with stubbed providers. Flutter fails a widget
// test on any RenderFlex overflow or build exception, so this is the
// "works on every non-PC screen size" check for the whole portal.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/attendance_summary.dart';
import 'package:edusoft_mobile/core/models/homework_submission.dart';
import 'package:edusoft_mobile/core/models/student_certificates.dart';
import 'package:edusoft_mobile/core/models/student_exams.dart';
import 'package:edusoft_mobile/core/models/student_fees.dart';
import 'package:edusoft_mobile/core/models/student_profile.dart';
import 'package:edusoft_mobile/core/models/student_records.dart';
import 'package:edusoft_mobile/core/models/timetable_entry.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/student/providers/student_portal_providers.dart';
import 'package:edusoft_mobile/features/student/student_module.dart';
import 'package:edusoft_mobile/features/student/screens/student_attendance_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_certificates_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_discipline_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_documents_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_exams_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_fees_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_home_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_homework_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_hub_screens.dart';
import 'package:edusoft_mobile/features/student/screens/student_medical_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_profile_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_promotion_history_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_timetable_screen.dart';
import 'package:edusoft_mobile/features/student/screens/student_transport_screen.dart';

// ── Fixtures (same shapes as the backend; see student_portal_models_test) ──

final _now = DateTime.now().toUtc();
String _dateThisMonth(int day) => DateTime.utc(_now.year, _now.month, day).toIso8601String();

final _profile = StudentProfile.fromJson({
  'student_id': 's1',
  'admission_no': 'GHPS-2026-001',
  'admission_date': '2026-04-01T00:00:00.000Z',
  'roll_no': '12',
  'student_status': 'ACTIVE',
  'institutions': {'institution_name': 'Green Hills Public School With A Rather Long Name'},
  'current_class': {'class_name': 'Class 8'},
  'current_section': {'section_name': 'A'},
  'applicants': {
    'first_name': 'Aishwarya',
    'middle_name': 'Lakshmi',
    'last_name': 'Venkataraman-Subramanian',
    'gender': 'Female',
    'dob': '2013-05-10T00:00:00.000Z',
    'contact_no': '9876543210',
    'email_id': 'aishwarya.venkataraman@example.com',
  },
  'admission_applications': {
    'parents': [
      {'parent_id': 'p1', 'relation_type': 'Mother', 'first_name': 'Nita', 'last_name': 'V', 'mobile_no': '99'},
    ],
    'previous_schools': [
      {'previous_school_id': 'ps1', 'school_name': 'Little Stars', 'percentage': '88.5'},
    ],
  },
  'student_addresses': [
    {'address_id': 'ad1', 'address_type': 'CORRESPONDENCE', 'address_line_1': '12 MG Road', 'city': 'Pune', 'pincode': '411001'},
  ],
  'student_id_cards': [
    {'card_number': 'IDC-2026-00001', 'issue_date': '2026-04-02T00:00:00.000Z', 'expiry_date': '2027-04-02T00:00:00.000Z'},
  ],
  'student_enrollments': [
    {'academic_sessions': {'session_name': '2026-27'}},
  ],
});

final _documents = [
  StudentDocument.fromJson({
    'document_id': 'd1',
    'document_name': 'Birth Certificate With A Very Long Descriptive Name',
    'file_name': 'birth_certificate_scan_final_v2.pdf',
    'file_url': 'https://example.com/birth.pdf',
    'file_size': 204800,
    'verification_status': 'VERIFIED',
    'uploaded_at': '2026-05-01T09:12:00.000Z',
  }),
  StudentDocument.fromJson({'document_id': 'd2', 'document_name': 'Aadhaar', 'verification_status': null}),
];

final _idCard = StudentIdCard.fromJson({
  'id_card_id': 'id1',
  'card_number': 'IDC-2026-00001',
  'issue_date': '2026-09-30T10:15:00.000Z',
  'expiry_date': '2027-09-30T10:15:00.000Z',
  'student_name': 'Aishwarya Lakshmi Venkataraman-Subramanian',
  'admission_no': 'GHPS-2026-001',
  'class_name': 'Class 8',
  'section_name': 'A',
  'institution_name': 'Green Hills Public School',
  'session_name': '2026-27',
});

final _certificate = StudentCertificate.fromJson({
  'certificate_type': 'bonafide',
  'issued_date': '2026-09-30T10:15:00.000Z',
  'student': {'name': 'Aishwarya', 'admission_no': 'GHPS-2026-001'},
  'institution_name': 'Green Hills Public School',
  'content': 'This is to certify that Aishwarya is a bonafide student of this institution. ' * 4,
});

AttendanceSummary _attendance(String period) => AttendanceSummary.fromJson({
      'from': _dateThisMonth(1),
      'to': _dateThisMonth(28),
      'total': 3,
      'data': [
        {'attendance_id': 'a1', 'attendance_date': _dateThisMonth(2), 'status': 'PRESENT', 'remarks': null, 'check_in_time': null},
        {'attendance_id': 'a2', 'attendance_date': _dateThisMonth(3), 'status': 'LATE', 'remarks': 'Bus delay', 'check_in_time': '1970-01-01T08:20:00.000Z'},
        {'attendance_id': 'a3', 'attendance_date': _dateThisMonth(4), 'status': 'ABSENT', 'remarks': null, 'check_in_time': null},
      ],
    });

final _leaves = [
  StudentLeave.fromJson({
    'leave_id': 'l1',
    'leave_type': 'Medical',
    'from_date': '2026-09-01T00:00:00.000Z',
    'to_date': '2026-09-03T00:00:00.000Z',
    'total_days': '3',
    'reason': 'Fever',
    'status': 'APPROVED',
    'remarks': 'Get well soon',
  }),
];

List<HomeworkSubmission> _work(String? status) => [
      HomeworkSubmission.fromJson({
        'submission_id': 'sub1',
        'homework_id': 'hw1',
        'status': 'PENDING',
        'effective_status': 'MISSING',
        'academic_homework': {
          'title': 'Chapter 5 — Photosynthesis worksheet with a long title',
          'description': 'Answer all questions.',
          'due_date': '2026-09-20T00:00:00.000Z',
          'assigned_date': '2026-09-15T00:00:00.000Z',
          'attachment_url': 'https://example.com/ws.pdf',
          'academic_subjects': {'subject_name': 'Science'},
          'users': {'username': 'GHPS-EMP-0015'},
        },
      }),
      HomeworkSubmission.fromJson({
        'submission_id': 'sub2',
        'homework_id': 'hw2',
        'status': 'SUBMITTED',
        'effective_status': 'SUBMITTED',
        'submitted_at': '2026-09-18T10:00:00.000Z',
        'remark': 'Well done',
        'academic_homework': {
          'title': 'Essay',
          'due_date': '2026-09-19T00:00:00.000Z',
          'assigned_date': '2026-09-12T00:00:00.000Z',
          'academic_subjects': {'subject_name': 'English'},
          'users': {'username': 'GHPS-EMP-0002'},
        },
      }),
    ];

final _exams = [
  for (final (i, subject) in ['Mathematics', 'Science', 'English'].indexed)
    ExamSchedule.fromJson({
      'exam_schedule_id': 'es$i',
      'exam_date': '2026-10-0${i + 1}T00:00:00.000Z',
      'start_time': '1970-01-01T09:30:00.000Z',
      'end_time': '1970-01-01T12:30:00.000Z',
      'room': 'Hall ${i + 1}',
      'max_marks': '100',
      'exams': {'exam_id': 'x1', 'exam_name': 'Half Yearly Examination 2026', 'exam_types': {'type_name': 'Term'}},
      'academic_subjects': {'subject_name': subject},
    }),
];

final _timetable = [
  for (var day = 1; day <= 6; day++)
    for (var period = 1; period <= 4; period++)
      TimetableEntry.fromJson({
        'timetable_entry_id': 't$day-$period',
        'day_of_week': day,
        'period_number': period,
        'start_time': '1970-01-01T0${period + 7}:00:00.000Z',
        'end_time': '1970-01-01T0${period + 7}:45:00.000Z',
        'room': '101',
        'period_type': period == 3 ? 'BREAK' : 'CLASS',
        'break_label': period == 3 ? 'Lunch' : null,
        'academic_subjects': period == 3 ? null : {'subject_name': 'Mathematics'},
        'staff_accounts': period == 3 ? null : {'full_name': 'Ramesh Kumar Srinivasan'},
      }),
];

final _pendingDues = PendingDues.fromJson({
  'items': [
    {'fee_structure_id': 'fs1', 'fee_head_id': 'h1', 'fee_head_name': 'Tuition Fee (Annual Composite)', 'due_date': '2026-10-10T00:00:00.000Z', 'amount': 20000, 'net_due': 15000, 'status': 'PARTIALLY_PAID'},
    {'fee_structure_id': null, 'fee_head_id': 'h2', 'fee_head_name': 'Transport Fee', 'due_date': null, 'amount': 6000, 'net_due': 6000, 'status': 'DUE'},
  ],
  'total_due': 21000,
});

final _feePlans = [
  FeePlanEntry.fromJson({
    'plan': {'plan_id': 'pl1', 'fee_head_id': 'h1', 'frequency': 'QUARTERLY'},
    'fee_head_name': 'Tuition Fee (Annual Composite)',
    'installments': [
      {'installment_id': 'in1', 'period_label': 'Apr–Jun', 'due_date': '2026-04-10T00:00:00.000Z', 'amount': '5000', 'balance': 0, 'status': 'PAID'},
      {'installment_id': 'in2', 'period_label': 'Jul–Sep', 'due_date': '2026-07-10T00:00:00.000Z', 'amount': '5000', 'balance': 5000, 'status': 'OVERDUE'},
    ],
  }),
];

final _receipts = [
  FeeReceipt.fromJson({
    'receipt_id': 'r1',
    'receipt_no': 'RCPT-2026-000123',
    'receipt_date': '2026-08-15T00:00:00.000Z',
    'net_amount': '125000.50',
    'payment_mode': 'ONLINE',
    'receipt_status': 'PAID',
    'student_fee_receipt_items': [
      {'receipt_item_id': 'ri1', 'fee_head_name': 'Tuition', 'net_amount': '125000.50'},
    ],
  }),
];

final _overrides = [
  myProfileProvider.overrideWith((ref) async => _profile),
  myDocumentsProvider.overrideWith((ref) async => _documents),
  myIdCardProvider.overrideWith((ref) async => _idCard),
  myCertificateProvider.overrideWith((ref, type) async => _certificate),
  myAttendanceProvider.overrideWith((ref, period) async => _attendance(period)),
  myLeavesProvider.overrideWith((ref) async => _leaves),
  myWorkProvider.overrideWith((ref, params) async => _work(params.status)),
  myExamsProvider.overrideWith((ref) async => _exams),
  myReportCardProvider.overrideWith(
    (ref, examId) async => ReportCard.fromJson({
      'is_published': true,
      'student': {
        'subjects': [
          {'subject_id': 'm', 'subject_name': 'Mathematics', 'marks_obtained': '87.5', 'max_marks': '100', 'passing_marks': '33'},
          {'subject_id': 'e', 'subject_name': 'English', 'marks_obtained': null, 'is_absent': true, 'max_marks': '100', 'passing_marks': '33'},
        ],
        'total_obtained': 87.5,
        'total_max': 200,
        'percentage': 43.75,
        'rank': 4,
      },
    }),
  ),
  myTimetableProvider.overrideWith((ref) async => _timetable),
  myMedicalInfoProvider.overrideWith(
    (ref) async => MedicalInfo.fromJson({'blood_group': 'O+', 'height_cm': '152', 'allergies': 'Peanuts, dust, pollen'}),
  ),
  myDisciplineProvider.overrideWith(
    (ref) async => [
      DisciplineRecord.fromJson({
        'discipline_id': 'dc1',
        'incident_date': '2026-08-20T00:00:00.000Z',
        'incident_type': 'Late to class repeatedly during first period',
        'severity': 'MODERATE',
        'status': 'RESOLVED',
        'resolved_at': '2026-08-21T10:00:00.000Z',
        'action_taken': 'Parents informed',
      }),
    ],
  ),
  myPromotionHistoryProvider.overrideWith(
    (ref) async => [
      PromotionRecord.fromJson({
        'promotion_id': 'pr1',
        'promotion_status': 'PROMOTED',
        'promoted_at': '2026-04-01T06:00:00.000Z',
        'from_session': {'session_name': '2025-26'},
        'to_session': {'session_name': '2026-27'},
        'from_class': {'class_name': 'Class 7'},
        'to_class': {'class_name': 'Class 8'},
        'to_section': {'section_name': 'A'},
        'promoted_by_user': {'username': 'admin'},
      }),
    ],
  ),
  myTransportProvider.overrideWith(
    (ref) async => TransportAssignment.fromJson({
      'route': {'route_name': 'Route 4 — East Side Residential Loop'},
      'stop': {'stop_name': 'City Mall', 'pickup_time': '1970-01-01T07:05:00.000Z', 'drop_time': '1970-01-01T14:40:00.000Z'},
      'bus': {'bus_number': 'MH12 AB 1234'},
      'driver': {'name': 'Suresh', 'phone': '9000000000', 'photo_url': null},
    }),
  ),
  myFeeSummaryProvider.overrideWith((ref) async => FeeSummary.fromJson({'total_paid': 125000.5, 'receipt_count': 1})),
  myReceiptsProvider.overrideWith((ref) async => _receipts),
  myReceiptDetailProvider.overrideWith((ref, id) async => _receipts.first),
  myPendingDuesProvider.overrideWith((ref) async => _pendingDues),
  myFeePlansProvider.overrideWith((ref) async => _feePlans),
  shellNotificationsProvider(AppRole.student)
      .overrideWith((ref) async => const NotificationInbox(notifications: [], unreadCount: 0)),
];

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Home': () => const StudentHomeScreen(),
  'Academics hub': () => const StudentAcademicsHubScreen(),
  'More hub': () => const StudentMoreHubScreen(),
  'Profile': () => const StudentProfileScreen(),
  'Documents': () => const StudentDocumentsScreen(),
  'Certificates': () => const StudentCertificatesScreen(),
  'Attendance & Leaves': () => const StudentAttendanceScreen(),
  'Homework': () => const StudentHomeworkScreen(),
  'Exams': () => const StudentExamsScreen(),
  'Timetable': () => const StudentTimetableScreen(),
  'Fees': () => const StudentFeesScreen(),
  'Medical': () => const StudentMedicalScreen(),
  'Discipline': () => const StudentDisciplineScreen(),
  'Promotion History': () => const StudentPromotionHistoryScreen(),
  'Transport': () => const StudentTransportScreen(),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: _overrides,
      // A real router (the drawer reads the current route): the screen
      // under test at '/', plus the module's own routes so drawer taps
      // navigate — same pattern as the Principal/Vice Principal tests.
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [GoRoute(path: '/', builder: (_, _) => screen), ...StudentModule().routes()],
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  for (final size in _sizes.entries) {
    group(size.key, () {
      for (final screen in _screens.entries) {
        testWidgets('${screen.key} renders without overflow', (tester) async {
          await _pump(tester, screen.value(), size.value);
          expect(tester.takeException(), isNull);
        });
      }

      testWidgets('Attendance: Leaves tab and calendar day selection', (tester) async {
        await _pump(tester, const StudentAttendanceScreen(), size.value);
        await tester.tap(find.text('3').first);
        await tester.pumpAndSettle();
        expect(find.textContaining('Checked in 8:20 AM'), findsOneWidget);

        await tester.tap(find.text('Leaves'));
        await tester.pumpAndSettle();
        expect(find.text('Medical'), findsOneWidget);
        expect(find.text('APPROVED'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Exams: expanding an exam shows its datesheet and report card', (tester) async {
        await _pump(tester, const StudentExamsScreen(), size.value);
        await tester.tap(find.text('Half Yearly Examination 2026'));
        await tester.pumpAndSettle();
        expect(find.text('Mathematics'), findsOneWidget);

        await tester.tap(find.text('Results'));
        await tester.pumpAndSettle();
        await tester.tap(find.text('Half Yearly Examination 2026'));
        await tester.pumpAndSettle();
        expect(find.text('Absent'), findsOneWidget);
        expect(find.text('43.75%'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Fees: shows the plan installments and an expanded receipt', (tester) async {
        await _pump(tester, const StudentFeesScreen(), size.value);
        expect(find.text('Current plan: Quarterly'), findsOneWidget);
        expect(find.text('₹21,000.00'), findsOneWidget);
        // Lazily built list: scroll until the row exists, then fully on-screen.
        await tester.scrollUntilVisible(find.text('RCPT-2026-000123'), 200,
            scrollable: find.byType(Scrollable).first);
        await tester.ensureVisible(find.text('RCPT-2026-000123'));
        await tester.pumpAndSettle();
        await tester.tap(find.text('RCPT-2026-000123'));
        await tester.pumpAndSettle();
        expect(find.text('Tuition'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Homework: submit sheet opens with the item title', (tester) async {
        await _pump(tester, const StudentHomeworkScreen(), size.value);
        await tester.tap(find.text('Submit').first);
        await tester.pumpAndSettle();
        expect(find.text('Submit Homework'), findsOneWidget);
        expect(find.text('Choose a file from your device'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    });
  }
}
