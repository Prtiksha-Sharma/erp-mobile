// Librarian portal: model parsing against backend-shaped JSON, role mapping,
// and every screen rendered at phone / portrait-tablet / landscape-tablet
// sizes with stubbed providers. Flutter fails a widget test on any RenderFlex
// overflow or build exception, so this is the "works on every screen size"
// check for the whole portal.

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/library.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/roles/role_registry.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/librarian/librarian_module.dart';
import 'package:edusoft_mobile/ui/widgets/responsive.dart';
import 'package:edusoft_mobile/features/librarian/providers/librarian_providers.dart';
import 'package:edusoft_mobile/features/librarian/screens/librarian_books_screen.dart';
import 'package:edusoft_mobile/features/librarian/screens/librarian_dashboard_screen.dart';
import 'package:edusoft_mobile/features/librarian/screens/librarian_fines_screen.dart';
import 'package:edusoft_mobile/features/librarian/screens/librarian_issue_screen.dart';
import 'package:edusoft_mobile/features/librarian/screens/librarian_profile_screen.dart';
import 'package:edusoft_mobile/features/librarian/screens/librarian_records_screen.dart';
import 'package:edusoft_mobile/features/librarian/screens/librarian_reports_screens.dart';

// ── Fixtures (backend shapes: edusoft_backend/src/features/librarian) ──

final _profile = StaffProfile.fromJson({
  'staff_id': 'lib1',
  'employee_code': 'GHPS-EMP-0031',
  'full_name': 'Mrs. Savitha Venkataraghavan Subramaniam',
  'designation': 'Librarian',
  'department': 'Library',
  'date_of_joining': '2020-04-01T00:00:00.000Z',
  'contact_number': '9822011111',
  'address': null,
  'employment_status': 'ACTIVE',
  'institution': {'institution_name': 'Green Hills Public School With A Rather Long Name'},
  'branch': {'branch_name': 'Main Campus'},
  'reports_to': {'full_name': 'Dr. Meera Nair', 'designation': 'Principal'},
  'users': {'username': 'GHPS-EMP-0031', 'email': 'savitha.library@greenhills.edu.in'},
});

Map<String, dynamic> _bookJson(int i, {int total = 3, int available = 2, bool active = true}) => {
      'book_id': 'b$i',
      'title': 'The Complete Illustrated History of Indian Mathematics and Astronomy, Volume $i',
      'author': 'Dr. Ramachandran Venkataraghavan',
      'accession_no': 'ACC-000$i',
      'category': i.isEven ? 'Science' : 'History',
      'publisher': 'National Book Trust',
      'edition': '2nd',
      'publication_year': 2015,
      'language': 'English',
      'shelf_rack': 'R-$i',
      'institute_class': 'Class 10',
      'total_copies': total,
      'available_copies': available,
      'is_active': active,
    };

Map<String, dynamic> _issueJson(int i, {String status = 'ISSUED', int overdue = 0, Object fine = 0}) => {
      'issue_id': 'i$i',
      'book_id': 'b$i',
      'student_id': 's$i',
      'issue_date': '2026-09-01T00:00:00.000Z',
      'due_date': '2026-09-15T00:00:00.000Z',
      'returned_at': status == 'RETURNED' ? '2026-09-20T00:00:00.000Z' : null,
      'status': status,
      'books': {'book_id': 'b$i', 'title': 'The Complete Illustrated History of Indian Mathematics', 'accession_no': 'ACC-$i'},
      'students': {
        'student_id': 's$i',
        'admission_no': 'ADM-$i',
        'applicants': {'first_name': 'Aarav', 'last_name': 'Venkataraghavan'},
      },
      'overdue_days': overdue,
      'fine_amount': fine,
      'fine_id': null,
      'fine_paid': false,
      'fine_paid_at': null,
    };

final _books = [for (var i = 1; i <= 6; i++) LibraryBook.fromJson(_bookJson(i, available: i == 3 ? 0 : 2))];
final _issues = [
  BookIssue.fromJson(_issueJson(1)),
  BookIssue.fromJson(_issueJson(2, overdue: 5, fine: 10)),
  BookIssue.fromJson(_issueJson(3, status: 'RETURNED', overdue: 2, fine: '4.00')),
];

final _dashboard = LibrarianDashboard.fromJson({
  'total_books': 240,
  'total_copies': 610,
  'available_books': 548,
  'issued_books': 62,
  'overdue_books': 7,
  'pending_fines': 142.5,
  'today_activity': {'issued': 9, 'returned': 4},
});

final _pending = PendingFines.fromJson({
  'returned_unpaid': [
    {
      'fine_id': 'f1',
      'issue_id': 'i3',
      'fine_amount': '4',
      'issue_date': '2026-09-01T00:00:00.000Z',
      'due_date': '2026-09-15T00:00:00.000Z',
      'returned_at': '2026-09-20T00:00:00.000Z',
      'books': {'book_id': 'b3', 'title': 'A very long book title for overflow checking purposes', 'accession_no': 'A3'},
      'students': {
        'student_id': 's3',
        'admission_no': 'ADM-3',
        'applicants': {'first_name': 'Diya', 'last_name': 'Subramaniam'},
      },
    },
  ],
  'still_issued_overdue': [_issueJson(2, overdue: 5, fine: 10)],
});

final _fineHistory = [
  FineRecord.fromJson({
    'fine_id': 'f1',
    'issue_id': 'i3',
    'fine_amount': '4.00',
    'fine_paid': true,
    'fine_paid_at': '2026-09-22T00:00:00.000Z',
    'created_at': '2026-09-20T00:00:00.000Z',
    'book_issues': {
      'issue_date': '2026-09-01T00:00:00.000Z',
      'due_date': '2026-09-15T00:00:00.000Z',
      'returned_at': '2026-09-20T00:00:00.000Z',
      'books': {'book_id': 'b3', 'title': 'Physics Part 1', 'accession_no': 'A3'},
      'students': {
        'student_id': 's3',
        'admission_no': 'ADM-3',
        'applicants': {'first_name': 'Diya', 'last_name': 'Subramaniam'},
      },
    },
  }),
];

final _settings = LibraryFineSettings.fromJson({'rate_per_day': 2, 'grace_period_days': 1, 'max_fine_per_book': null});

final _inventory = InventoryReport.fromJson({
  'total_titles': 240,
  'total_copies': 610,
  'available_copies': 548,
  'by_category': [
    {'category': 'Science', 'titles': 80, 'total_copies': 200, 'available_copies': 180},
    {'category': null, 'titles': 3, 'total_copies': 5, 'available_copies': 5},
  ],
});

final _overdueReport = OverdueReport.fromJson({
  'count': 1,
  'total_fine': 10,
  'items': [_issueJson(2, overdue: 5, fine: 10)],
});

final _collection = FineCollectionReport.fromJson({
  'count': 1,
  'total_collected': 4,
  'items': [
    {
      'fine_id': 'f1',
      'issue_id': 'i3',
      'fine_amount': '4.00',
      'fine_paid': true,
      'fine_paid_at': '2026-09-22T00:00:00.000Z',
      'book_issues': {
        'books': {'book_id': 'b3', 'title': 'Physics Part 1'},
        'students': {
          'student_id': 's3',
          'applicants': {'first_name': 'Diya', 'last_name': 'S'},
        },
      },
    },
  ],
});

final _studentHit = LibraryStudentHit.fromJson({
  'student_id': 's1',
  'admission_no': 'ADM-1',
  'roll_no': '12',
  'current_class': {'class_id': 'c1', 'class_name': 'Class 10'},
  'current_section': {'section_id': 'sec1', 'section_name': 'A'},
  'applicants': {'first_name': 'Aarav', 'last_name': 'Venkataraghavan'},
});

final _inbox = NotificationInbox.fromJson({
  'notifications': [
    for (var i = 1; i <= 3; i++)
      {
        'notification_id': 'nt$i',
        'title': 'A notification title',
        'body': 'A notification body.',
        'link': '/librarian/fines',
        'is_read': false,
        'created_at': DateTime.now().toUtc().subtract(Duration(hours: i)).toIso8601String(),
      },
  ],
  'unread_count': 3,
});

List<Override> _overrides({List<LibraryBook>? books, List<BookIssue>? issues}) => [
      librarianProfileProvider.overrideWith((ref) async => _profile),
      shellNotificationsProvider.overrideWith((ref, role) async => _inbox),
      librarianDashboardProvider.overrideWith((ref) async => _dashboard),
      librarianBooksProvider.overrideWith((ref) async => books ?? _books),
      librarianIssuesProvider.overrideWith((ref) async => issues ?? _issues),
      librarianPendingFinesProvider.overrideWith((ref) async => _pending),
      librarianFineHistoryProvider.overrideWith((ref) async => _fineHistory),
      librarianFineSettingsProvider.overrideWith((ref) async => _settings),
      librarianInventoryReportProvider.overrideWith((ref) async => _inventory),
      librarianIssuedReportProvider.overrideWith((ref) async => _issues),
      librarianReturnedReportProvider.overrideWith((ref) async => _issues),
      librarianOverdueReportProvider.overrideWith((ref) async => _overdueReport),
      librarianFineCollectionReportProvider.overrideWith((ref) async => _collection),
      librarianStudentSearchProvider.overrideWith((ref, query) async => [_studentHit]),
      librarianBorrowingHistoryProvider.overrideWith((ref, id) async => _issues),
    ];

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Dashboard': () => const LibrarianDashboardScreen(),
  'Book catalog': () => const LibrarianBooksScreen(),
  'Issue book': () => const LibrarianIssueScreen(),
  'Issue records': () => const LibrarianRecordsScreen(),
  'Fines': () => const LibrarianFinesScreen(),
  'Reports hub': () => const LibrarianReportsHubScreen(),
  'Inventory report': () => const LibrarianInventoryReportScreen(),
  'Issued report': () => const LibrarianIssuedReportScreen(),
  'Returned report': () => const LibrarianReturnedReportScreen(),
  'Overdue report': () => const LibrarianOverdueReportScreen(),
  'Fine collection report': () => const LibrarianFineCollectionReportScreen(),
  'Borrowing history': () => const LibrarianBorrowingHistoryScreen(),
  'Profile': () => const LibrarianProfileScreen(),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size, {List<Override>? overrides}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: overrides ?? _overrides(),
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [GoRoute(path: '/', builder: (_, _) => screen), ...LibrarianModule().routes()],
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  group('role mapping', () {
    test('the backend "Librarian" role maps to the librarian module', () {
      expect(AppRole.fromBackendName('Librarian'), AppRole.librarian);
      expect(AppRole.fromBackendName('Receptionist'), isNull);
      expect(roleRegistry[AppRole.librarian], isA<LibrarianModule>());
      expect(roleRegistry[AppRole.librarian]!.homePath, '/librarian/home');
    });
  });

  group('models', () {
    test('LibraryBook parses and derives stock', () {
      final b = LibraryBook.fromJson(_bookJson(1, total: 5, available: 2));
      expect(b.issuedOut, 3);
      expect(b.isAvailable, isTrue);
      expect(LibraryBook.fromJson(_bookJson(1, available: 0)).isAvailable, isFalse);
      expect(LibraryBook.fromJson(_bookJson(1, active: false)).isAvailable, isFalse);
    });

    test('money parses from both JSON strings (Prisma Decimal) and numbers (computed)', () {
      expect(BookIssue.fromJson(_issueJson(1, fine: '4.00')).fineAmount, Decimal.parse('4'));
      expect(BookIssue.fromJson(_issueJson(1, fine: 10)).fineAmount, Decimal.parse('10'));
      expect(_dashboard.pendingFines, Decimal.parse('142.5'));
    });

    test('BookIssue overdue state and student name', () {
      final overdue = BookIssue.fromJson(_issueJson(2, overdue: 5, fine: 10));
      expect(overdue.isOverdue, isTrue);
      expect(overdue.studentName, 'Aarav Venkataraghavan');
      expect(BookIssue.fromJson(_issueJson(3, status: 'RETURNED', overdue: 2)).isOverdue, isFalse);
    });

    test('PendingFines, student hit and fine settings parse', () {
      expect(_pending.returnedUnpaid.single.fineAmount, Decimal.parse('4'));
      expect(_pending.stillIssuedOverdue.single.overdueDays, 5);
      expect(_studentHit.classLabel, 'Class 10 - A');
      expect(_settings.maxFinePerBook, isNull);
      expect(_settings.gracePeriodDays, 1);
    });
  });

  for (final size in _sizes.entries) {
    group(size.key, () {
      for (final screen in _screens.entries) {
        testWidgets('${screen.key} renders without overflow', (tester) async {
          await _pump(tester, screen.value(), size.value);
          expect(tester.takeException(), isNull);
        });
      }

      testWidgets('Book catalog: empty catalog shows the empty state', (tester) async {
        await _pump(tester, const LibrarianBooksScreen(), size.value, overrides: _overrides(books: const []));
        expect(tester.takeException(), isNull);
        expect(find.text('No books yet'), findsOneWidget);
      });

      testWidgets('Issue records: empty list shows the empty state', (tester) async {
        await _pump(tester, const LibrarianRecordsScreen(), size.value, overrides: _overrides(issues: const []));
        expect(tester.takeException(), isNull);
        expect(find.text('No books issued yet'), findsOneWidget);
      });
    });
  }

  testWidgets('Book catalog: search filters the list', (tester) async {
    await _pump(tester, const LibrarianBooksScreen(), _sizes.values.first);
    expect(find.textContaining('Volume 1'), findsOneWidget);
    await tester.enterText(find.byType(TextField).first, 'ACC-0002');
    await tester.pumpAndSettle();
    expect(find.textContaining('Volume 2'), findsOneWidget);
    expect(find.textContaining('Volume 1'), findsNothing);
  });

  testWidgets('Book catalog: add-book sheet opens', (tester) async {
    await _pump(tester, const LibrarianBooksScreen(), _sizes.values.first);
    await tester.tap(find.text('Add book'));
    await tester.pumpAndSettle();
    expect(find.text('Title *'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Issue book: the issue button stays disabled until a book and student are chosen', (tester) async {
    await _pump(tester, const LibrarianIssueScreen(), _sizes.values.first);
    // The button is below the fold on a phone, and ListView builds lazily.
    await tester.scrollUntilVisible(find.text('View issue records'), 300, scrollable: find.descendant(of: find.byType(ResponsiveListView), matching: find.byType(Scrollable)).first);
    final button = find.ancestor(of: find.text('Issue book'), matching: find.bySubtype<FilledButton>());
    expect(tester.widget<FilledButton>(button.first).onPressed, isNull);
  });

  testWidgets('Issue records: overdue chip shows only late loans', (tester) async {
    await _pump(tester, const LibrarianRecordsScreen(), _sizes.values.first);
    await tester.tap(find.widgetWithText(ChoiceChip, 'Overdue'));
    await tester.pumpAndSettle();
    expect(find.text('5 day(s) late'), findsOneWidget);
    expect(find.byType(IssueTile), findsOneWidget);
  });
}
