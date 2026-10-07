// Renders every admissions screen (New Applicant / Students) at phone,
// portrait-tablet, landscape-tablet and landscape-phone sizes with stubbed
// providers. Flutter fails a widget test on any RenderFlex overflow or build
// exception, so this is the "works on every non-PC screen size" check, plus
// the key flows and copy ported from the web.

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/admin_admissions.dart';
import 'package:edusoft_mobile/core/models/admin_lookups.dart';
import 'package:edusoft_mobile/core/models/academic_refs.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/school_admin/providers/admissions_providers.dart';
import 'package:edusoft_mobile/features/school_admin/providers/school_admin_providers.dart';
import 'package:edusoft_mobile/features/school_admin/school_admin_module.dart';
import 'package:edusoft_mobile/features/school_admin/screens/admissions_applicant_profile_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/admissions_detail_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/admissions_fee_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/admissions_form_screens.dart';
import 'package:edusoft_mobile/features/school_admin/screens/admissions_hub_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/admissions_list_screens.dart';
import 'package:edusoft_mobile/features/school_admin/services/admissions_service.dart';

import '../../core/models/admin_admissions_models_test.dart'
    show admissionDetailJson, admissionPresentRowJson, admissionRejectedRowJson, admissionRowJson;

// ── Fixtures (same shapes as the backend; see admin_admissions_models_test) ──

Map<String, dynamic> _applicantJson({String first = 'Aishwarya Lakshmi', String last = 'Venkataraman-Subramanian'}) => {
  'applicant_id': 'ap1',
  'first_name': first,
  'last_name': last,
  'gender': 'Female',
  'dob': '2014-03-09T00:00:00.000Z',
  'contact_no': '9876543210',
};

Map<String, dynamic> _row(
  int i, {
  String status = 'Submitted',
  String payment = 'Pending',
  bool applicant = true,
  Map<String, dynamic> extra = const {},
}) => {
  ...admissionRowJson,
  'application_id': 'row$i',
  'application_no': 'APP-2026-${i.toString().padLeft(4, '0')}',
  'application_status': status,
  'payment_status': payment,
  'applicants': applicant ? _applicantJson(first: i.isEven ? 'Aishwarya Lakshmi' : 'Rohan') : null,
  ...extra,
};

const _father = {
  'parent_id': 'pf1',
  'relation_type': 'FATHER',
  'first_name': 'Venkataraman',
  'last_name': 'Subramanian',
  'mobile_no': '9876500001',
};

const _mother = {
  'parent_id': 'pm1',
  'relation_type': 'MOTHER',
  'first_name': 'Lakshmi',
  'last_name': 'Subramanian',
  'mobile_no': '9876500002',
};

AdmissionApplicationPage _page(List<Map<String, dynamic>> rows) =>
    AdmissionApplicationPage.fromJson({'total': 41, 'page': 1, 'limit': 20, 'data': rows});

AdmissionApplicationPage _pageFor(AdmissionListRequest r) => switch (r.kind) {
  AdmissionListKind.applications => _page([
    _row(1),
    _row(2, status: 'Draft'),
    _row(3, status: 'Payment Verified', payment: 'Verified'),
  ]),
  AdmissionListKind.incomplete => _page([
    _row(1, status: 'Draft', applicant: false, extra: {'parents': <Object>[]}),
    _row(
      2,
      status: 'Draft',
      extra: {
        'parents': [_father, _mother],
      },
    ),
  ]),
  AdmissionListKind.interview => _page([
    _row(1, status: 'Called For Interview', extra: {'called_for_interview_at': '2026-10-01T08:00:00.000Z'}),
    _row(2, status: 'Called For Interview', extra: {'called_for_interview_at': '2026-10-02T08:00:00.000Z'}),
  ]),
  AdmissionListKind.present => _page([
    admissionPresentRowJson,
    {...admissionPresentRowJson, 'application_id': 'row5', 'is_qualified': true},
  ]),
  AdmissionListKind.qualified => _page([
    _row(1, status: 'Qualified', extra: {'qualified_at': '2026-10-13T08:00:00.000Z', 'is_selected_final': false}),
    _row(2, status: 'Final Selected', extra: {'qualified_at': '2026-10-13T08:00:00.000Z', 'is_selected_final': true}),
  ]),
  AdmissionListKind.finalSelected => _page([
    _row(1, status: 'Final Selected', extra: {'selected_at': '2026-10-14T08:00:00.000Z', 'is_selected_final': true}),
  ]),
  AdmissionListKind.rejected => _page([
    admissionRejectedRowJson,
    {...admissionRejectedRowJson, 'application_id': 'row7', 'admission_reviews': <Object>[]},
  ]),
};

AdmissionApplicationDetail _detailFor(String id) => AdmissionApplicationDetail.fromJson(switch (id) {
  'app-pending' => {
    'application_id': 'app-pending',
    'application_no': 'APP-2026-0020',
    'application_status': 'Submitted',
    'payment_status': 'Pending',
    'submitted_at': '2026-09-20T09:30:00.000Z',
    'created_at': '2026-09-19T10:00:00.000Z',
    'classes': {'class_id': 'c5', 'class_name': 'Class 5'},
    'applicants': _applicantJson(),
  },
  'app-draft' => {
    'application_id': 'app-draft',
    'application_no': 'APP-2026-0030',
    'application_status': 'Draft',
    'payment_status': 'Pending',
    'created_at': '2026-09-19T10:00:00.000Z',
    'classes': {'class_id': 'c5', 'class_name': 'Class 5'},
    'applicants': null,
  },
  _ => {...admissionDetailJson, 'application_id': id},
});

final _profile = AdmissionApplicant.fromJson({
  ...(admissionDetailJson['applicants']! as Map<String, dynamic>),
  'admission_applications': {...admissionDetailJson, 'applicants': null},
});

final _classes = [
  AdminClassOption(
    classId: 'c1',
    className: 'Class 1',
    registrationFee: Decimal.parse('1500'),
    sections: const [
      SectionRef(sectionId: 's1', sectionName: 'A'),
      SectionRef(sectionId: 's2', sectionName: 'B'),
    ],
  ),
  const AdminClassOption(
    classId: 'c7',
    className: 'Class 7',
    sections: [SectionRef(sectionId: 's3', sectionName: 'A')],
  ),
  AdminClassOption(
    classId: 'c11',
    className: 'Class 11 (Science & Commerce Combined)',
    registrationFee: Decimal.parse('2500.50'),
  ),
  const AdminClassOption(classId: 'cn', className: 'Nursery'),
];

const _docTypes = [
  AdmissionDocumentType(documentTypeId: 'dt1', documentName: 'Birth Certificate', isMandatory: true),
  AdmissionDocumentType(
    documentTypeId: 'dt2',
    documentName: 'Previous School Transfer Certificate and Report Card',
    isMandatory: false,
  ),
];

List<Override> _overrides({List<AdmissionListRequest>? requests, List<AdmissionDocument> docs = const []}) => [
  admissionListProvider.overrideWith((ref, r) async {
    requests?.add(r);
    return _pageFor(r);
  }),
  admissionDetailProvider.overrideWith((ref, id) async => _detailFor(id)),
  admissionApplicantProfileProvider.overrideWith((ref, id) async => _profile),
  adminClassOptionsProvider.overrideWith((ref) async => _classes),
  admissionDocumentTypesProvider.overrideWith((ref) async => _docTypes),
  admissionDocumentsProvider.overrideWith((ref, id) async => docs),
  shellNotificationsProvider(AppRole.schoolAdmin)
      .overrideWith((ref) async => const NotificationInbox(notifications: [], unreadCount: 0)),
];

final Map<String, Widget Function()> _screens = {
  'Hub': () => const AdmissionsHubScreen(),
  'Online Applications': () => const AdmissionListScreen(page: AdmissionListPage.applications),
  'Incomplete': () => const AdmissionListScreen(page: AdmissionListPage.incomplete),
  'Payment Verification': () => const AdmissionListScreen(page: AdmissionListPage.paymentVerify),
  'Document Verification': () => const AdmissionListScreen(page: AdmissionListPage.documentVerify),
  'Interview Schedule': () => const AdmissionListScreen(page: AdmissionListPage.interview),
  'Present Applicants': () => const AdmissionListScreen(page: AdmissionListPage.present),
  'Qualified Applicants': () => const AdmissionListScreen(page: AdmissionListPage.qualified),
  'Final Applicants': () => const AdmissionListScreen(page: AdmissionListPage.finalList),
  'Rejected Applicants': () => const AdmissionListScreen(page: AdmissionListPage.rejected),
  'Detail (final selected)': () => const AdmissionDetailScreen(applicationId: 'app1'),
  'Detail (payment pending)': () => const AdmissionDetailScreen(applicationId: 'app-pending'),
  'Detail (draft)': () => const AdmissionDetailScreen(applicationId: 'app-draft'),
  'Applicant Profile': () => const AdmissionApplicantProfileScreen(applicantId: 'ap1'),
  'New Application': () => const AdmissionNewApplicationScreen(),
  'Continue Form (step 1)': () => const AdmissionContinueFormScreen(applicationId: 'app-draft'),
  'Continue Form (documents)': () => const AdmissionContinueFormScreen(applicationId: 'app1'),
  'Registration Fee': () => const AdmissionsRegistrationFeeScreen(),
};

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
  'phone landscape (780x360)': Size(780, 360),
};

Future<void> _pump(
  WidgetTester tester,
  Widget screen,
  Size size, {
  List<AdmissionListRequest>? requests,
  List<AdmissionDocument> docs = const [],
}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: _overrides(requests: requests, docs: docs),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [
            GoRoute(path: '/', builder: (_, _) => screen),
            ...SchoolAdminModule().routes(),
          ],
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

/// Narrow screens show "Step N of 6 · name"; from 760dp the stepper labels
/// every step instead.
void _expectStep(int n, String label) {
  final compact = find.textContaining('Step $n of 6').evaluate().isNotEmpty;
  final labelled = find.text(label).evaluate().isNotEmpty;
  expect(compact || labelled, isTrue, reason: 'step $n ($label) not shown');
}

/// The form's primary button can sit below the fold on small screens.
Future<void> _tapSaveNext(WidgetTester tester) async {
  final button = find.widgetWithText(FilledButton, 'Save & Next');
  await tester.ensureVisible(button);
  await tester.pumpAndSettle();
  await tester.tap(button);
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

      // The flows below target controls that start below the fold on a
      // 360dp-tall landscape phone; that size gets the render sweep only.
      if (size.value.height < 600) return;

      testWidgets('Payment Verification starts on Pending payments and excludes Rejected', (tester) async {
        final requests = <AdmissionListRequest>[];
        await _pump(
          tester,
          const AdmissionListScreen(page: AdmissionListPage.paymentVerify),
          size.value,
          requests: requests,
        );
        expect(requests.first.paymentStatus, 'Pending');
        expect(requests.first.excludeStatus, 'Rejected');
        expect(find.text('41 pending'), findsOneWidget);
      });

      testWidgets('Document Verification only lists verified payments', (tester) async {
        final requests = <AdmissionListRequest>[];
        await _pump(
          tester,
          const AdmissionListScreen(page: AdmissionListPage.documentVerify),
          size.value,
          requests: requests,
        );
        expect(requests.first.paymentStatus, 'Verified');
      });

      testWidgets('Selecting rows shows the bulk bar with the page\'s actions', (tester) async {
        await _pump(tester, const AdmissionListScreen(page: AdmissionListPage.incomplete), size.value);
        expect(find.textContaining('selected'), findsNothing);
        await tester.tap(find.byType(Checkbox).at(1)); // first row (0 = select all)
        await tester.pumpAndSettle();
        expect(find.text('1 application selected'), findsOneWidget);
        expect(find.text('Submit'), findsOneWidget);
        expect(find.text('Delete'), findsWidgets);
        await tester.tap(find.widgetWithText(FilledButton, 'Submit'));
        await tester.pumpAndSettle();
        expect(find.text('Submit Applications'), findsOneWidget);
        expect(find.text('This will submit 1 selected draft application for review.'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Select all on this page selects every row', (tester) async {
        await _pump(tester, const AdmissionListScreen(page: AdmissionListPage.incomplete), size.value);
        await tester.tap(find.text('Select all applications on this page'));
        await tester.pumpAndSettle();
        expect(find.text('2 applications selected'), findsOneWidget);
        await tester.tap(find.text('Clear'));
        await tester.pumpAndSettle();
        expect(find.textContaining('selected'), findsNothing);
      });

      testWidgets('Interview page: Mark Attendance sheet offers Present / Absent', (tester) async {
        await _pump(tester, const AdmissionListScreen(page: AdmissionListPage.interview), size.value);
        await tester.tap(find.byType(Checkbox).at(1));
        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(FilledButton, 'Mark Attendance'));
        await tester.pumpAndSettle();
        expect(find.text('Mark 1 selected applicant as:'), findsOneWidget);
        expect(find.text('Present'), findsOneWidget);
        expect(find.text('Absent'), findsOneWidget);
      });

      testWidgets('Document Verification: Schedule Interview needs a date and time', (tester) async {
        await _pump(tester, const AdmissionListScreen(page: AdmissionListPage.documentVerify), size.value);
        await tester.tap(find.byType(Checkbox).at(1));
        await tester.pumpAndSettle();
        await tester.tap(find.widgetWithText(FilledButton, 'Schedule Interview'));
        await tester.pumpAndSettle();
        final schedule = tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Schedule'));
        expect(schedule.onPressed, isNull);
      });

      testWidgets('Rejected page is read-only and shows the remarks', (tester) async {
        await _pump(tester, const AdmissionListScreen(page: AdmissionListPage.rejected), size.value);
        expect(find.byType(Checkbox), findsNothing);
        expect(find.text('Does not meet eligibility criteria'), findsOneWidget);
      });

      testWidgets('Online Applications payment filter omits the unsupported "Rejected"', (tester) async {
        await _pump(tester, const AdmissionListScreen(page: AdmissionListPage.applications), size.value);
        expect(find.text('New Application'), findsOneWidget);
        await tester.tap(find.widgetWithText(DropdownButtonFormField<String>, 'All Payments'));
        await tester.pumpAndSettle();
        expect(find.text('Pending'), findsWidgets);
        expect(find.text('Verified'), findsWidgets);
        expect(find.text('Rejected'), findsNothing);
      });

      testWidgets('Detail: actions follow the application state', (tester) async {
        await _pump(tester, const AdmissionDetailScreen(applicationId: 'app-pending'), size.value);
        expect(find.text('Verify Payment'), findsOneWidget);
        expect(find.text('Reject'), findsOneWidget);
        expect(find.text('Schedule Interview'), findsNothing);

        await _pump(tester, const AdmissionDetailScreen(applicationId: 'app-draft'), size.value);
        expect(find.text('Continue & Complete Form'), findsOneWidget);
        expect(find.text('No applicant information provided'), findsOneWidget);

        await _pump(tester, const AdmissionDetailScreen(applicationId: 'app1'), size.value);
        expect(find.text('Register as Student'), findsOneWidget);
        expect(find.text('Reject'), findsNothing); // Final Selected can't be rejected
        expect(find.text('Verify Payment'), findsNothing);
      });

      testWidgets('Detail: Register as Student asks for an admission date', (tester) async {
        await _pump(tester, const AdmissionDetailScreen(applicationId: 'app1'), size.value);
        await tester.tap(find.widgetWithText(FilledButton, 'Register as Student'));
        await tester.pumpAndSettle();
        expect(find.text('Admission Date *'), findsOneWidget);
        final confirm = tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Confirm Registration'));
        expect(confirm.onPressed, isNull);
      });

      testWidgets('Detail: shows real entrance-test fields and the review', (tester) async {
        await _pump(tester, const AdmissionDetailScreen(applicationId: 'app1'), size.value);
        await tester.scrollUntilVisible(
          find.text('Main Auditorium, Block B'),
          300,
          scrollable: find.byType(Scrollable).first,
        );
        expect(find.text('A-14'), findsOneWidget);
        await tester.scrollUntilVisible(find.text('Good profile'), 300, scrollable: find.byType(Scrollable).first);
        expect(find.text('admin'), findsOneWidget);
      });

      testWidgets('Continue Form: step 1 validation uses the Continue-Form copy', (tester) async {
        await _pump(tester, const AdmissionContinueFormScreen(applicationId: 'app-draft'), size.value);
        _expectStep(1, 'Basic Info');
        expect(find.text('Class cannot be changed from this form'), findsOneWidget);
        await _tapSaveNext(tester);
        expect(find.text('First name is required'), findsOneWidget);
        expect(find.text('Last name is required'), findsOneWidget);
        expect(find.text('Date of birth is required'), findsOneWidget);
        expect(find.text('Please select gender'), findsOneWidget);
        expect(find.text('Phone number is required'), findsOneWidget);
      });

      testWidgets('Continue Form resumes at the first incomplete step', (tester) async {
        await _pump(tester, const AdmissionContinueFormScreen(applicationId: 'app-pending'), size.value);
        _expectStep(2, 'Additional Details'); // applicant has no nationality yet
        await _tapSaveNext(tester);
        expect(find.text('Nationality is required'), findsOneWidget);

        await _pump(tester, const AdmissionContinueFormScreen(applicationId: 'app1'), size.value);
        expect(find.text('Required Documents'), findsOneWidget);
        expect(find.text('Birth Certificate'), findsOneWidget);
        expect(find.text('Required'), findsOneWidget);
        expect(find.text('Submit Application'), findsOneWidget);
      });

      testWidgets('New Application: step 1 requires a class and uses the New-Application copy', (tester) async {
        await _pump(tester, const AdmissionNewApplicationScreen(), size.value);
        expect(find.text('Online Application Form'), findsOneWidget);
        await _tapSaveNext(tester);
        expect(find.text('Please select a class'), findsOneWidget);
        expect(find.text('First name is required'), findsOneWidget);

        await tester.enterText(find.widgetWithText(TextField, 'First Name *'), 'A');
        await tester.enterText(find.widgetWithText(TextField, 'Phone No *'), '12345');
        await _tapSaveNext(tester);
        expect(find.text('Minimum 2 characters'), findsOneWidget);
        expect(find.text('Enter a valid 10-digit mobile number (starting 6–9)'), findsOneWidget);
      });

      testWidgets('Registration Fee: stats, stages and validation copy', (tester) async {
        await _pump(tester, const AdmissionsRegistrationFeeScreen(), size.value);
        expect(find.text('Classes configured'), findsOneWidget);
        expect(find.text('₹1,500.00 – ₹2,500.50'), findsOneWidget);
        expect(find.text('Primary'), findsOneWidget);
        expect(find.text('Middle'), findsOneWidget);
        expect(find.text('Other Classes'), findsOneWidget);

        final fee = find.byType(TextField).first;
        await tester.enterText(fee, '');
        await tester.testTextInput.receiveAction(TextInputAction.done);
        await tester.pumpAndSettle();
        expect(find.text('Fee is required'), findsOneWidget);

        await tester.enterText(fee, '-5');
        await tester.testTextInput.receiveAction(TextInputAction.done);
        await tester.pumpAndSettle();
        expect(find.text('Enter a valid non-negative amount'), findsOneWidget);
      });

      testWidgets('Applicant profile reads the nested application', (tester) async {
        await _pump(tester, const AdmissionApplicantProfileScreen(applicantId: 'ap1'), size.value);
        expect(find.text('1 Application'), findsOneWidget);
        expect(find.text('Docs 1/1'), findsOneWidget);
        expect(find.text('APP-2026-0001'), findsOneWidget);
        expect(find.text('Hindu'), findsOneWidget);
      });
    });
  }

  test('AdmissionListRequest omits blank filters and keys by value', () {
    const r = AdmissionListRequest(AdmissionListKind.applications, search: 'asha', page: 2);
    expect(r.toParams(), {'page': 2, 'limit': 20, 'search': 'asha'});
    expect(r, const AdmissionListRequest(AdmissionListKind.applications, search: 'asha', page: 2));
    expect(r == r.copyWith(page: 3), isFalse);
    expect(
      const AdmissionListRequest(
        AdmissionListKind.applications,
        paymentStatus: 'Pending',
        excludeStatus: 'Rejected',
      ).toParams(),
      containsPair('exclude_status', 'Rejected'),
    );
  });
}
