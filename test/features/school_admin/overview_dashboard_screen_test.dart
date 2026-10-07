// School Admin Dashboard (web AdminDashboardPage.jsx): every widget renders
// from backend-shaped payloads at phone / tablet sizes without overflow, plus
// the empty-state copy and the per-widget error + Retry.

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/error/failure.dart';
import 'package:edusoft_mobile/core/models/admin_overview.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/school_feed.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/school_admin/providers/overview_providers.dart';
import 'package:edusoft_mobile/features/school_admin/school_admin_module.dart';
import 'package:edusoft_mobile/features/school_admin/screens/overview_dashboard_screen.dart';

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
  'phone landscape (780x360)': Size(780, 360),
};

String _iso(DateTime d) => '${d.toIso8601String().split('T').first}T00:00:00.000Z';

final _today = DateTime.now();

final _stats = AdminDashboardStats.fromJson({
  'students': {
    'total': 420,
    'total_active': 400,
    'active': 400,
    'inactive': 20,
    'class_wise_strength': [
      {'class_id': 'c2', 'class_name': 'Class 10', 'total': 60},
      {'class_id': 'c1', 'class_name': 'Class 2', 'total': 45},
      {'class_id': null, 'class_name': 'Unassigned', 'total': 3},
    ],
    'gender_distribution': {'Male': 220, 'Female': 180, 'UNKNOWN': 20},
  },
  'applications': {
    'total': 90,
    'submitted': 30,
    'approved': 10,
    'rejected': 7,
    'enrolled': 5,
    'by_status': {'Submitted': 30, 'Payment Verified': 12, 'Rejected': 7, 'Registered': 5, 'Some New Status': 2},
  },
  'transport': {
    'total_buses': 6,
    'active_buses': 5,
    'total_drivers': 6,
    'active_drivers': 4,
    'students_on_transport': 120,
    'delays_flagged_today': 1,
  },
});

final _emptyStats = AdminDashboardStats.fromJson({
  'students': {'total': 0, 'class_wise_strength': <Object>[], 'gender_distribution': <String, int>{}},
  'applications': {'total': 0, 'by_status': <String, int>{}},
  'transport': null,
});

List<Override> _overrides({bool empty = false, bool failStats = false}) => [
  adminDashboardStatsProvider.overrideWith((ref) async {
    if (failStats) throw const Failure.server('Stats unavailable');
    return empty ? _emptyStats : _stats;
  }),
  adminDashboardAttendanceTodayProvider.overrideWith(
    (ref) async => DashboardAttendanceToday.fromJson({
      'summary': empty ? <String, int>{} : {'PRESENT': 300, 'ABSENT': 20, 'LATE': 10},
    }),
  ),
  adminDashboardFeeCollectionProvider.overrideWith(
    (ref) async =>
        empty ? <String, Decimal>{} : {'2026-08': Decimal.parse('125000.50'), '2026-09': Decimal.parse('98000')},
  ),
  adminDashboardBirthdaysProvider.overrideWith(
    (ref) async => empty
        ? <DashboardBirthday>[]
        : [
            DashboardBirthday.fromJson({
              'student_id': 's1',
              'first_name': 'Aishwarya Lakshmi',
              'last_name': 'Venkataraman-Subramanian',
              'class_name': 'Class 5',
              'section_name': 'A',
            }),
            DashboardBirthday.fromJson({'student_id': 's2', 'admission_no': 'ADM-77'}),
          ],
  ),
  adminDashboardFeeSnapshotProvider.overrideWith(
    (ref) async => DashboardFeeSnapshot.fromJson({
      'total_fee_collected': 1500000,
      'todays_collection': 12000,
      'this_month_collection': 98000,
      'pending_amount': 250000.5,
      'students_with_pending_fees': 42,
      'active_scholarships': 3,
    }),
  ),
  adminDashboardNoticesProvider.overrideWith(
    (ref) async => empty
        ? <SchoolNotice>[]
        : [
            SchoolNotice.fromJson({
              'notice_id': 'n1',
              'title': 'Annual day rehearsal schedule for all the senior classes is out now',
              'notice_date': _iso(_today),
            }),
          ],
  ),
  adminDashboardExamsProvider.overrideWith(
    (ref) async => empty
        ? <DashboardExamRow>[]
        : [
            DashboardExamRow.fromJson({
              'exam_id': 'e1',
              'exam_name': 'Half Yearly Examination 2026',
              'start_date': _iso(_today.add(const Duration(days: 5))),
              'exam_types': {'exam_type_id': 't1', 'type_name': 'Term Exam'},
            }),
            DashboardExamRow.fromJson({
              'exam_id': 'e0',
              'exam_name': 'Past Unit Test',
              'start_date': _iso(_today.subtract(const Duration(days: 30))),
            }),
          ],
  ),
  adminDashboardHomeworkDueSoonProvider.overrideWith(
    (ref) async => empty
        ? <DashboardHomeworkRow>[]
        : [
            DashboardHomeworkRow.fromJson({
              'homework_id': 'h1',
              'title': 'Chapter 4 exercises',
              'due_date': _iso(_today.add(const Duration(days: 2))),
              'classes': {'class_id': 'c1', 'class_name': 'Class 2'},
              'sections': {'section_id': 'sec1', 'section_name': 'B'},
              'academic_subjects': {'subject_id': 'sub1', 'subject_name': 'Mathematics'},
            }),
          ],
  ),
  adminDashboardExamSummaryProvider.overrideWith(
    (ref) async => DashboardExamSummary.fromJson(
      empty
          ? <String, dynamic>{}
          : {
              'total_exams': 8,
              'upcoming_exams': 2,
              'completed_exams': 5,
              'results_published': 4,
              'results_pending_publish': 3,
            },
    ),
  ),
  overviewStaffAttendanceProvider.overrideWith(
    (ref, date) async => StaffDailyAttendance.fromJson({
      'total': empty ? 0 : 3,
      'data': empty
          ? <Object>[]
          : [
              {
                'staff_id': 'a',
                'full_name': 'A',
                'attendance': {'attendance_id': 'x1', 'status': 'PRESENT'},
              },
              {
                'staff_id': 'b',
                'full_name': 'B',
                'attendance': {'attendance_id': 'x2', 'status': 'HALF_DAY'},
              },
              {'staff_id': 'c', 'full_name': 'C', 'attendance': null},
            ],
    }),
  ),
  shellNotificationsProvider(AppRole.schoolAdmin)
      .overrideWith((ref) async => const NotificationInbox(notifications: [], unreadCount: 0)),
];

Future<void> _pump(WidgetTester tester, Size size, List<Override> overrides) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: overrides,
      child: MaterialApp.router(
        routerConfig: GoRouter(initialLocation: SchoolAdminModule().homePath, routes: SchoolAdminModule().routes()),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

/// The dashboard is long: scroll the whole page once so lazily built
/// children are laid out (and any overflow throws).
Future<void> _scrollThrough(WidgetTester tester) async {
  final list = find.byType(Scrollable).first;
  for (var i = 0; i < 12; i++) {
    await tester.drag(list, const Offset(0, -600));
    await tester.pump();
  }
  await tester.pumpAndSettle();
}

void main() {
  test('the school admin home route is the dashboard screen', () {
    expect(SchoolAdminModule().homePath, '/school-admin/dashboard');
  });

  for (final size in _sizes.entries) {
    group(size.key, () {
      testWidgets('renders every widget with data', (tester) async {
        await _pump(tester, size.value, _overrides());
        expect(find.byType(SchoolAdminDashboardScreen), findsOneWidget);
        expect(find.text('Admin Dashboard'), findsOneWidget);
        expect(find.text('Total Students'), findsOneWidget);
        await _scrollThrough(tester);
        expect(tester.takeException(), isNull);
      });

      testWidgets('shows the empty-state copy', (tester) async {
        await _pump(tester, size.value, _overrides(empty: true));
        await _scrollThrough(tester);
        expect(tester.takeException(), isNull);
      });

      testWidgets('a failing widget shows Retry without breaking the page', (tester) async {
        await _pump(tester, size.value, _overrides(failStats: true));
        expect(find.text('Admin Dashboard'), findsOneWidget);
        // The stats-backed widgets sit below the fold in a lazy list.
        await tester.scrollUntilVisible(
          find.text('Class-wise Strength'),
          300,
          scrollable: find.byType(Scrollable).first,
        );
        await tester.pumpAndSettle();
        expect(find.text('Retry'), findsWidgets);
        await _scrollThrough(tester);
        expect(tester.takeException(), isNull);
      });
    });
  }

  testWidgets('phone: values, copy and filtered lists match the web', (tester) async {
    await _pump(tester, const Size(360, 780), _overrides());
    expect(find.text('420'), findsOneWidget); // total students
    expect(find.text('Active : '), findsNothing); // rich text, checked below
    expect(find.textContaining('Active : 400', findRichText: true), findsOneWidget);
    expect(find.text('Present Today'), findsOneWidget);
    expect(find.text('91%'), findsWidgets); // 300 / 330, in the stat card (and the attendance widget)
    await tester.scrollUntilVisible(find.text('Upcoming Exams'), 400, scrollable: find.byType(Scrollable).first);
    expect(find.text('Half Yearly Examination 2026'), findsOneWidget);
    expect(find.text('Past Unit Test'), findsNothing); // past exams are filtered out
  });

  testWidgets('empty states use the web copy', (tester) async {
    await _pump(tester, const Size(1280, 800), _overrides(empty: true));
    for (final copy in const [
      'No students yet',
      'No gender data yet',
      'No applications yet',
      'No attendance marked yet',
      'No collections yet',
      'No birthdays today',
      'No transport set up yet',
      'No announcements yet',
    ]) {
      await tester.scrollUntilVisible(find.text(copy), 300, scrollable: find.byType(Scrollable).first);
      expect(find.text(copy), findsOneWidget, reason: copy);
    }
  });
}
