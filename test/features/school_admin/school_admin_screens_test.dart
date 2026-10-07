// Renders every School Admin screen at phone, portrait-tablet and
// landscape-tablet sizes with stubbed providers. Flutter fails a widget
// test on any RenderFlex overflow or build exception, so this is the
// "works on every non-PC screen size" check for the whole portal, plus
// the key form/flow behaviours ported from the web.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/admin_management.dart' show PrincipalActivityItem;
import 'package:edusoft_mobile/core/models/admin_staff.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/school_admin_settings.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/school_admin/providers/school_admin_providers.dart';
import 'package:edusoft_mobile/features/school_admin/school_admin_module.dart';
import 'package:edusoft_mobile/features/school_admin/screens/employee_detail_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/role_permissions_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/school_settings_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/staff_list_screen.dart';
import 'package:edusoft_mobile/features/school_admin/screens/staff_record_tabs.dart';
import 'package:edusoft_mobile/features/school_admin/screens/staff_role_list_screens.dart';
import 'package:edusoft_mobile/features/school_admin/screens/subscription_screen.dart';

import '../../core/models/school_admin_models_test.dart' show staffDetailJson;

// ── Fixtures (same shapes as the backend; see school_admin_models_test) ──

final _detail = StaffMember.fromJson(staffDetailJson);

StaffMember _row(int i, {required String role, String status = 'ACTIVE', String account = 'ACTIVE'}) =>
    StaffMember.fromJson({
      'staff_id': 's$i',
      'user_id': 'u$i',
      'employee_code': 'GHPS-EMP-${i.toString().padLeft(4, '0')}',
      'full_name': i.isEven ? 'Venkataraman Subramanian Lakshminarayanan' : 'Meera Joshi',
      'designation': i.isEven ? 'Senior Teacher (Mathematics & Computer Science)' : null,
      'department': 'Mathematics',
      'employee_type': 'Full Time',
      'date_of_joining': '2021-06-01T00:00:00.000Z',
      'employment_status': status,
      'mobile_no': i.isEven ? '9876543210' : null,
      'email': i.isEven ? 'venkataraman.subramanian.l@greenhills.example.com' : null,
      'account_status': account,
      'branch': {'branch_id': 'b1', 'branch_name': 'Main Campus — North Wing'},
      'roles': [role],
    });

StaffPage _page(String role) => StaffPage(
  total: 23,
  page: 1,
  limit: 10,
  data: [
    _row(0, role: role),
    _row(1, role: role, status: 'INACTIVE', account: 'SUSPENDED'),
    _row(2, role: role, status: 'TERMINATED'),
  ],
);

final _qualifications = [
  StaffQualification.fromJson({
    'qualification_id': 'q1',
    'qualification_name': 'M.Sc Mathematics',
    'specialization': 'Algebra',
    'institution_name': 'Fergusson College',
    'university_board': 'Savitribai Phule Pune University',
    'passing_year': 2010,
    'percentage': '78.5',
    'start_year': 2008,
    'certificate_url': 'https://example.com/cert.pdf',
  }),
];

final _experience = [
  StaffExperience.fromJson({
    'experience_id': 'e1',
    'organization_name': 'ABC Public School With A Very Long Official Name',
    'designation': 'Teacher',
    'department': 'Maths',
    'start_date': '2015-06-01T00:00:00.000Z',
    'is_current': true,
    'responsibilities': 'Taught classes 6 to 10, coordinated the mathematics olympiad.',
  }),
];

final _documents = [
  StaffDocument.fromJson({
    'document_id': 'd1',
    'document_name': 'Educational Certificate',
    'file_name': 'msc_mathematics_final_year_marksheet_scan.pdf',
    'file_url': 'https://example.com/d1.pdf',
    'verification_status': 'PENDING',
    'uploaded_at': '2026-09-01T08:30:00.000Z',
  }),
  StaffDocument.fromJson({
    'document_id': 'd2',
    'document_name': 'PAN Card',
    'verification_status': 'REJECTED',
    'remarks': 'Unreadable scan',
    'uploaded_at': '2026-09-02T08:30:00.000Z',
  }),
];

final _salary = SalaryStructureAssignment.fromJson({
  'template_id': 't1',
  'ctc_amount': '600000',
  'effective_from': '2026-04-01T00:00:00.000Z',
  'template': {
    'template_id': 't1',
    'template_name': 'Teaching Staff',
    'components': [
      {'component_id': 'c1', 'component_name': 'Basic Salary', 'percentage_of_ctc': '50', 'computed_amount': 300000},
      {
        'component_id': 'c2',
        'component_name': 'House Rent Allowance',
        'percentage_of_ctc': '20',
        'computed_amount': 120000,
      },
    ],
  },
  'take_home_estimate': {
    'monthly_gross': 50000,
    'pf_amount': 6000,
    'esi_amount': 0,
    'pt_amount': 200,
    'tds_amount': 0,
    'take_home_salary': 43800,
  },
});

final _roles = [
  for (final r in [
    'Accountant',
    'Class Teacher',
    'Librarian',
    'Parent',
    'Principal',
    'Receptionist',
    'Student',
    'Teacher',
  ])
    RoleRef(roleId: 'r-$r', roleName: r),
];

final _catalog = [
  PermissionModule.fromJson({
    'module': 'Student Profile',
    'permissions': [
      {'permission_key': 'students.view', 'label': 'View student profiles'},
      {'permission_key': 'students.edit', 'label': 'Edit student profiles and guardian details'},
    ],
  }),
  PermissionModule.fromJson({
    'module': 'Attendance',
    'permissions': [
      {'permission_key': 'attendance.view', 'label': 'View attendance'},
    ],
  }),
  PermissionModule.fromJson({
    'module': 'Some Brand New Module',
    'permissions': [
      {'permission_key': 'new.view', 'label': 'View'},
    ],
  }),
];

List<Override> _overrides({SchoolSubscription? subscription, SalaryStructureAssignment? salary}) => [
  staffListProvider.overrideWith((ref, q) async => _page(q.role.isEmpty ? 'Teacher' : q.role)),
  principalActivityProvider.overrideWith(
    (ref, limit) async => [
      PrincipalActivityItem.fromJson({
        'activity_type': 'RECOMMENDED_ACTION',
        'target_type': 'STUDENT',
        'target_id': 'st1',
        'target_name': 'Aishwarya Lakshmi Venkataraman',
        'remark_text': 'Recommend counselling support before the board examinations begin next month.',
        'performed_by': 'principal.anita',
        'timestamp': '2026-10-05T09:30:00.000Z',
      }),
      PrincipalActivityItem.fromJson({
        'activity_type': 'EVENT_APPROVAL',
        'target_type': 'EVENT',
        'target_id': 'ev1',
        'target_name': 'Annual Day',
        'remark_text': 'Approved "Annual Day"',
        'performed_by': 'principal.anita',
        'timestamp': '2026-10-04T09:30:00.000Z',
      }),
      PrincipalActivityItem.fromJson({'activity_type': 'SOMETHING_NEW', 'remark_text': 'Unknown kind'}),
    ],
  ),
  staffSummaryProvider.overrideWith(
    (ref) async => const StaffSummary(
      total: 40,
      unassigned: 1,
      roles: [
        StaffRoleCount(roleName: 'Teacher', count: 28),
        StaffRoleCount(roleName: 'Librarian', count: 2),
      ],
    ),
  ),
  staffDetailProvider.overrideWith((ref, id) async => _detail),
  staffDocumentsProvider.overrideWith((ref, id) async => _documents),
  staffQualificationsProvider.overrideWith((ref, id) async => _qualifications),
  staffExperienceProvider.overrideWith((ref, id) async => _experience),
  staffSalaryStructureProvider.overrideWith((ref, id) async => salary),
  staffPrincipalRemarksProvider.overrideWith(
    (ref, id) async => [
      StaffPrincipalRemark.fromJson({
        'remark_id': 'r1',
        'remark_text': 'Excellent board results this year; recommend for HOD.',
        'remark_type': 'RECOMMENDED_ACTION',
        'created_at': '2026-08-20T11:00:00.000Z',
      }),
    ],
  ),
  salaryTemplatesProvider.overrideWith((ref) async => [_salary.template]),
  schoolBranchesProvider.overrideWith(
    (ref) async => [const SchoolBranch(branchId: 'b1', branchName: 'Main Campus — North Wing')],
  ),
  reportingToOptionsProvider.overrideWith((ref) async => _page('Teacher').data),
  adminRolesProvider.overrideWith((ref) async => _roles),
  permissionCatalogProvider.overrideWith((ref) async => _catalog),
  rolePermissionsProvider.overrideWith(
    (ref, id) async => RolePermissionGrants(roleId: id, roleName: 'Teacher', permissionKeys: const ['students.view']),
  ),
  subscriptionProvider.overrideWith(
    (ref) async =>
        subscription ??
        SchoolSubscription.fromJson({
          'subscription_status': 'ACTIVE',
          'subscription_start_date': '2026-04-01T00:00:00.000Z',
          'subscription_end_date': '2027-03-31T00:00:00.000Z',
          'subscription_plan': {
            'plan_name': 'Growth Plan For Large Multi-Branch Schools',
            'price': '4999',
            'max_students': 1500,
            'max_teachers': 120,
            'max_storage_gb': 50,
            'max_branches': 3,
          },
        }),
  ),
  shellNotificationsProvider(AppRole.schoolAdmin)
      .overrideWith((ref) async => const NotificationInbox(notifications: [], unreadCount: 0)),
];

final Map<String, Widget Function()> _screens = {
  'Employee Management': () => const StaffListScreen(),
  'Employee Details': () => const EmployeeDetailScreen(staffId: 's0'),
  'Teachers': () => const TeachersListScreen(),
  'Librarians': () => const RoleStaffListScreen.librarians(),
  'Receptionists': () => const RoleStaffListScreen.receptionists(),
  'Principal Management': () => const RoleStaffListScreen.principals(),
  'Role Permissions (no role)': () => const RolePermissionsScreen(),
  'Role Permissions (?role=Teacher)': () => const RolePermissionsScreen(initialRoleName: 'Teacher'),
  'School Settings': () => const SchoolSettingsScreen(),
  'Subscription': () => const SubscriptionScreen(),
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
  SchoolSubscription? subscription,
  bool noSalary = false,
}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: _overrides(subscription: subscription, salary: noSalary ? null : _salary),
      // A real router (the drawer reads the current route): the screen under
      // test at '/', plus the module's own routes — same pattern as the
      // other portals' tests.
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

/// The tab strip scrolls horizontally, so bring a tab into view first.
Future<void> _tapTab(WidgetTester tester, String label) async {
  final tab = find.widgetWithText(Tab, label);
  await tester.ensureVisible(tab);
  await tester.pumpAndSettle();
  await tester.tap(tab);
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

      // The tap flows below target controls that start below the fold on a
      // 360dp-tall landscape phone; that size gets the render sweep only.
      if (size.value.height < 600) return;

      testWidgets('Employee Details: every tab renders', (tester) async {
        await _pump(tester, const EmployeeDetailScreen(staffId: 's0'), size.value);
        for (final tab in [
          'Personal Information',
          'Employment',
          'Qualification',
          'Experience',
          'Documents',
          'Salary Structure',
          'Overview',
        ]) {
          await _tapTab(tester, tab);
          expect(tester.takeException(), isNull, reason: tab);
        }
      });

      testWidgets('Employee Details: tab contents match the web copy', (tester) async {
        await _pump(tester, const EmployeeDetailScreen(staffId: 's0'), size.value);
        expect(find.text('Employee ID'), findsOneWidget);
        await _tapTab(tester, 'Employment');
        expect(find.text('PF'), findsOneWidget); // PF / ESI Applicable
        await _tapTab(tester, 'Documents');
        expect(find.text('Reason: Unreadable scan'), findsOneWidget);
        expect(find.byTooltip('Verify document'), findsOneWidget); // only the PENDING one
        await _tapTab(tester, 'Salary Structure');
        expect(find.text('Change Structure'), findsOneWidget);
        expect(find.text('Take Home Salary (per month)'), findsOneWidget);
      });

      testWidgets('Salary Structure: none assigned shows the empty state', (tester) async {
        await _pump(tester, const SalaryStructureTab(staffId: 's0'), size.value, noSalary: true);
        expect(find.text('No salary structure assigned yet.'), findsOneWidget);
        expect(find.text('Assign Structure'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Add Staff: validation matches the web copy', (tester) async {
        await _pump(tester, const StaffListScreen(), size.value);
        await tester.tap(find.text('Add Employee').first);
        await tester.pumpAndSettle();
        expect(find.text('Add Staff'), findsOneWidget);
        // Only the assignable staff roles are offered (no Parent/Student).
        expect(find.text('Parent'), findsNothing);
        await tester.ensureVisible(find.text('Create Staff Account'));
        await tester.tap(find.text('Create Staff Account'));
        await tester.pumpAndSettle();
        expect(find.text('Full name is required'), findsOneWidget);
        expect(find.text('Select at least one role'), findsOneWidget);
        expect(find.text('Date of joining is required'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('?addRole=Librarian opens Add Staff with the role ticked', (tester) async {
        await _pump(tester, const StaffListScreen(addRole: 'Librarian'), size.value);
        expect(find.text('Add Staff'), findsOneWidget);
        final librarian = find.ancestor(of: find.text('Librarian'), matching: find.byType(Row)).first;
        final box = tester.widget<Checkbox>(find.descendant(of: librarian, matching: find.byType(Checkbox)));
        expect(box.value, isTrue);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Edit Staff opens seeded from the record', (tester) async {
        await _pump(tester, const StaffListScreen(), size.value);
        await tester.tap(find.byTooltip('Edit').first);
        await tester.pumpAndSettle();
        expect(find.text('Edit Staff — GHPS-EMP-0015'), findsOneWidget);
        expect(find.text('Ramesh Kumar Srinivasan Iyer'), findsWidgets);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Reset Password: validation matches the web copy', (tester) async {
        await _pump(tester, const StaffListScreen(), size.value);
        await tester.tap(find.byTooltip('Reset Password').first);
        await tester.pumpAndSettle();
        await tester.enterText(find.widgetWithText(TextField, 'New password'), 'short');
        await tester.enterText(find.widgetWithText(TextField, 'Confirm password'), 'short');
        await tester.pump();
        await tester.tap(find.widgetWithText(FilledButton, 'Reset Password'));
        await tester.pumpAndSettle();
        expect(find.text('Password must be at least 8 characters.'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Deactivate asks for confirmation with the web copy', (tester) async {
        await _pump(tester, const StaffListScreen(), size.value);
        await tester.tap(find.byTooltip('Deactivate').first);
        await tester.pumpAndSettle();
        expect(find.text('Deactivate Employee'), findsOneWidget);
        expect(find.textContaining('This can be reversed at any time.'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Teachers: list view and detail sheet', (tester) async {
        await _pump(tester, const TeachersListScreen(), size.value);
        await tester.tap(find.byTooltip('List view'));
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        await tester.tap(find.byTooltip('Grid view'));
        await tester.pumpAndSettle();
        await tester.tap(find.text('View Details').first);
        await tester.pumpAndSettle();
        expect(find.text('Staff Details'), findsOneWidget);
        await tester.drag(find.byType(SingleChildScrollView).last, const Offset(0, -2000));
        await tester.pumpAndSettle();
        expect(find.text('Principal Remarks'), findsOneWidget);
        expect(find.text('Recommended Action'), findsOneWidget);
        expect(find.text('Add Remark'), findsNothing); // Principal-only
        expect(tester.takeException(), isNull);
      });

      testWidgets('Librarians: locked login marker and detail sheet', (tester) async {
        await _pump(tester, const RoleStaffListScreen.librarians(), size.value);
        expect(find.text('Add Librarian'), findsOneWidget);
        expect(find.byTooltip('Login: SUSPENDED'), findsOneWidget);
        await tester.tap(find.text('View Details').first);
        await tester.pumpAndSettle();
        expect(find.text('Librarian Details'), findsOneWidget);
        expect(find.text('Principal Remarks'), findsNothing);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Principal Management: stats, activity feed and detail sheet', (tester) async {
        await _pump(tester, const RoleStaffListScreen.principals(), size.value);
        expect(find.text('Principal Management'), findsWidgets);
        expect(find.text('Add Principal'), findsOneWidget);
        expect(find.text('Manage Permissions'), findsOneWidget);
        expect(find.text('Total principals'), findsOneWidget);
        expect(find.text('Branches covered'), findsOneWidget);
        expect(find.textContaining('across your school'), findsOneWidget);
        await tester.scrollUntilVisible(find.text('Recent Activity'), 300, scrollable: find.byType(Scrollable).first);
        expect(find.text('Recommended Action'), findsOneWidget);
        expect(find.text('Event Approved'), findsOneWidget);
        expect(find.text('Remark'), findsOneWidget); // unknown type reads as Remark
        expect(find.textContaining('by principal.anita'), findsWidgets);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Principal Management: detail sheet shows the role permission summary', (tester) async {
        await _pump(tester, const RoleStaffListScreen.principals(), size.value);
        // The cards sit below the hero, stat tiles and filters.
        for (var i = 0; i < 6 && find.text('View Details').evaluate().isEmpty; i++) {
          await tester.drag(find.byType(Scrollable).first, const Offset(0, -300));
          await tester.pump();
        }
        await tester.pumpAndSettle();
        await tester.tap(find.text('View Details').first);
        await tester.pumpAndSettle();
        expect(find.text('Principal Details'), findsOneWidget);
        await tester.drag(find.byType(SingleChildScrollView).last, const Offset(0, -2000));
        await tester.pumpAndSettle();
        expect(find.text('Principal Role Permissions'), findsOneWidget);
        expect(find.text('Dashboard'), findsWidgets); // also a drawer entry on wide screens
        expect(find.text('Teacher/Staff Module'), findsOneWidget);
        expect(find.text('Principal Remarks'), findsNothing); // Teacher sheet only
        expect(tester.takeException(), isNull);
      });

      testWidgets('Role Permissions: draft, unsaved marker and discard', (tester) async {
        await _pump(tester, const RolePermissionsScreen(initialRoleName: 'Teacher'), size.value);
        expect(find.text('1/2'), findsOneWidget);
        expect(find.text('Unsaved changes'), findsNothing);
        await tester.tap(find.text('View attendance'));
        await tester.pumpAndSettle();
        expect(find.text('Unsaved changes'), findsOneWidget);
        await tester.tap(find.text('Discard Changes'));
        await tester.pumpAndSettle();
        expect(find.text('Unsaved changes'), findsNothing);
        await tester.tap(find.text('Select all').first);
        await tester.pumpAndSettle();
        expect(find.text('2/2'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Role Permissions: empty state before a role is picked', (tester) async {
        await _pump(tester, const RolePermissionsScreen(), size.value);
        expect(find.text('No role selected'), findsOneWidget);
        expect(find.text('Save Changes'), findsNothing);
      });

      testWidgets('Subscription: no plan assigned', (tester) async {
        await _pump(
          tester,
          const SubscriptionScreen(),
          size.value,
          subscription: const SchoolSubscription(subscriptionStatus: 'EXPIRED'),
        );
        expect(find.text('No plan assigned'), findsOneWidget);
        expect(find.text('No plan assigned — contact your platform administrator.'), findsOneWidget);
        expect(find.text('EXPIRED'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    });
  }

  test('experienceDuration matches the web formatDuration', () {
    expect(experienceDuration(DateTime(2020, 1, 15), DateTime(2022, 4, 1), false), '2 yrs 3 mos');
    expect(experienceDuration(DateTime(2020, 1, 1), DateTime(2020, 1, 20), false), '0 mos');
    expect(experienceDuration(DateTime(2020, 1, 1), DateTime(2021, 1, 1), false), '1 yr');
    expect(experienceDuration(DateTime(2020, 5, 1), DateTime(2020, 1, 1), false), isNull);
    expect(experienceDuration(null, null, true), isNull);
  });
}
