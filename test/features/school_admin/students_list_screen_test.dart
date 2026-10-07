// School Admin → Students list (web StudentsListPage.jsx): renders at phone
// and tablet sizes without overflow, selection → bulk bar → sheets, filters
// and the CSV export.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/error/failure.dart';
import 'package:edusoft_mobile/core/models/admin_lookups.dart';
import 'package:edusoft_mobile/core/models/admin_students.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/school_admin/providers/school_admin_providers.dart';
import 'package:edusoft_mobile/features/school_admin/providers/students_providers.dart';
import 'package:edusoft_mobile/features/school_admin/school_admin_module.dart';
import 'package:edusoft_mobile/features/school_admin/screens/students_bulk_sheets.dart';
import 'package:edusoft_mobile/features/school_admin/screens/students_list_screen.dart';
import 'package:edusoft_mobile/features/school_admin/services/students_service.dart';
import 'package:edusoft_mobile/ui/widgets/status_badge.dart';

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
  'phone landscape (780x360)': Size(780, 360),
};

/// Same shape as student.service.js#STUDENT_LIST_SELECT.
Map<String, dynamic> _student(
  int i, {
  String status = 'ACTIVE',
  String first = 'Aishwarya Lakshmi',
  String last = 'Venkataraman-Subramanian',
  Object? roll = 12,
  String? phone = '9876543210',
}) => {
  'student_id': 'st$i',
  'admission_no': 'ADM-2026-${i.toString().padLeft(4, '0')}',
  'admission_date': '2026-04-02T00:00:00.000Z',
  'student_status': status,
  'roll_no': roll,
  'current_class': {'class_id': 'c1', 'class_name': 'Class 10'},
  'current_section': {'section_id': 'sec1', 'section_name': 'A'},
  'applicants': {
    'applicant_id': 'ap$i',
    'first_name': first,
    'middle_name': null,
    'last_name': last,
    'gender': i.isEven ? 'Female' : 'Male',
    'dob': '2012-05-09T00:00:00.000Z',
    'contact_no': phone,
    'email_id': 'kid$i@example.com',
    'photo_url': null,
  },
};

AdminStudentPage _page(List<Map<String, dynamic>> rows, {int total = 41}) =>
    AdminStudentPage.fromJson({'total': total, 'page': 1, 'limit': 20, 'data': rows});

final _rows = [
  _student(1),
  _student(2, status: 'SUSPENDED', first: 'Rohan', last: 'Mehta', roll: null, phone: null),
  _student(3, status: 'PASSED_OUT'),
  _student(4, status: 'SOMETHING_NEW'),
  _student(5, status: 'ACTIVE', first: '', last: ''),
];

List<Override> _overrides({List<StudentsQuery>? seen, bool empty = false, bool fail = false}) => [
  adminStudentsListProvider.overrideWith((ref, q) async {
    seen?.add(q);
    if (fail) throw const Failure.server('boom');
    return empty ? _page(const [], total: 0) : _page(_rows);
  }),
  adminStudentsActiveSessionProvider.overrideWith(
    (ref) async => AdminStudentActiveSession.fromJson({'session_id': 's1', 'session_name': '2026-27'}),
  ),
  adminClassOptionsProvider.overrideWith(
    (ref) async => [
      AdminClassOption.fromJson({
        'class_id': 'c1',
        'class_name': 'Class 10',
        'sections': [
          {'section_id': 'sec1', 'section_name': 'A'},
        ],
      }),
      AdminClassOption.fromJson({'class_id': 'c2', 'class_name': 'Class 2', 'sections': <Object>[]}),
    ],
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
        routerConfig: GoRouter(initialLocation: '/school-admin/students', routes: SchoolAdminModule().routes()),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  test('status colours follow the web STATUS_MAP; unknown is neutral', () {
    expect(studentStatusVariant('ACTIVE'), BadgeVariant.success);
    expect(studentStatusVariant('SUSPENDED'), BadgeVariant.danger);
    expect(studentStatusVariant('TRANSFERRED'), BadgeVariant.primary);
    expect(studentStatusVariant('PASSED_OUT'), BadgeVariant.violet);
    expect(studentStatusVariant('SOMETHING_NEW'), BadgeVariant.neutral);
    expect(studentStatusVariant(null), BadgeVariant.neutral);
  });

  test('students CSV has the web columns and quotes commas/quotes', () {
    final rows = [
      AdminStudentRow.fromJson(_student(1, first: 'Asha, "Ace"', last: 'Rao')),
      AdminStudentRow.fromJson(_student(2, roll: null, phone: null)),
    ];
    final lines = studentsCsv(rows).split('\n');
    expect(
      lines.first,
      'Admission No,Full Name,Gender,Date of Birth,Contact No,Email,Class,Section,Roll No,Status,Admission Date',
    );
    expect(lines, hasLength(3));
    expect(lines[1], contains('"Asha, ""Ace"" Rao"'));
    expect(lines[1], contains('Class 10,A,12,ACTIVE'));
    expect(lines[2], contains(',Class 10,A,,ACTIVE'));
  });

  test('the list query sends only non-blank filters', () {
    expect(const StudentsQuery().toParams(), {'page': 1, 'limit': 20});
    expect(const StudentsQuery(search: 'ann', classId: 'c1', status: 'ACTIVE', page: 3).toParams(), {
      'page': 3,
      'limit': 20,
      'search': 'ann',
      'class_id': 'c1',
      'status': 'ACTIVE',
    });
  });

  for (final size in _sizes.entries) {
    group(size.key, () {
      testWidgets('renders the list without overflow', (tester) async {
        await _pump(tester, size.value, _overrides());
        expect(find.byType(StudentsListScreen), findsOneWidget);
        expect(find.text('Total Students'), findsOneWidget);
        expect(find.text('41'), findsOneWidget);
        expect(find.textContaining('2026-27'), findsOneWidget);
        expect(find.text('Select all students on this page'), findsOneWidget);
        expect(find.textContaining('ADM-2026-0001'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('empty state', (tester) async {
        await _pump(tester, size.value, _overrides(empty: true));
        expect(find.text('No students found'), findsOneWidget);
        expect(find.text('Registered students will appear here.'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('error state with Retry', (tester) async {
        await _pump(tester, size.value, _overrides(fail: true));
        expect(find.text('Failed to load students.'), findsOneWidget);
        expect(find.text('Retry'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    });
  }

  testWidgets('selecting rows shows the bulk bar with every web action', (tester) async {
    await _pump(tester, const Size(1280, 800), _overrides());
    expect(find.text('Assign to Class'), findsNothing);

    await tester.tap(find.byType(Checkbox).at(1));
    await tester.pumpAndSettle();
    expect(find.text('1 student selected'), findsOneWidget);
    for (final a in ['Assign to Class', 'Promote', 'Deactivate', 'Generate ID Cards', 'Certificate', 'Export CSV']) {
      expect(find.widgetWithText(FilledButton, a), findsOneWidget, reason: a);
    }

    await tester.tap(find.byType(Checkbox).first); // select all on the page
    await tester.pumpAndSettle();
    expect(find.text('5 students selected'), findsOneWidget);

    await tester.tap(find.text('Clear'));
    await tester.pumpAndSettle();
    expect(find.textContaining('selected'), findsNothing);
    expect(find.text('Add Student'), findsOneWidget); // the FAB is back
  });

  for (final size in [const Size(360, 780), const Size(780, 360)]) {
    testWidgets('the bulk bar fits ${size.width.toInt()}x${size.height.toInt()}', (tester) async {
      await _pump(tester, size, _overrides());
      await tester.ensureVisible(find.byType(Checkbox).first);
      await tester.pumpAndSettle();
      await tester.tap(find.byType(Checkbox).first); // select all on the page
      await tester.pumpAndSettle();
      expect(find.text('5 students selected'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('Assign to Class: needs a class before it can continue', (tester) async {
    await _pump(tester, const Size(1280, 800), _overrides());
    await tester.tap(find.byType(Checkbox).at(1));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, 'Assign to Class'));
    await tester.pumpAndSettle();
    expect(find.text('1 student selected'), findsWidgets);
    final submit = find.widgetWithText(FilledButton, 'Assign Students');
    expect(tester.widget<FilledButton>(submit).onPressed, isNull);
  });

  testWidgets('Deactivate and ID cards ask for confirmation with the web copy', (tester) async {
    await _pump(tester, const Size(1280, 800), _overrides());
    await tester.tap(find.byType(Checkbox).first);
    await tester.pumpAndSettle();

    await tester.tap(find.widgetWithText(FilledButton, 'Deactivate'));
    await tester.pumpAndSettle();
    expect(find.textContaining('This will set 5 students to INACTIVE.'), findsOneWidget);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();

    await tester.tap(find.widgetWithText(FilledButton, 'Generate ID Cards'));
    await tester.pumpAndSettle();
    expect(find.textContaining('New cards are valid for 1 year from today.'), findsOneWidget);
  });

  testWidgets('Certificate: type is required', (tester) async {
    await _pump(tester, const Size(1280, 800), _overrides());
    await tester.tap(find.byType(Checkbox).at(1));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, 'Certificate'));
    await tester.pumpAndSettle();
    expect(tester.widget<FilledButton>(find.widgetWithText(FilledButton, 'Generate')).onPressed, isNull);
  });

  testWidgets('search and filters go back to page 1 with only the set params', (tester) async {
    final seen = <StudentsQuery>[];
    await _pump(tester, const Size(1280, 800), _overrides(seen: seen));
    expect(seen.last, const StudentsQuery());

    await tester.enterText(find.byType(TextField).first, '  asha ');
    await tester.pump(const Duration(milliseconds: 400));
    await tester.pumpAndSettle();
    expect(seen.last.search, 'asha');
    expect(seen.last.page, 1);
  });
}
