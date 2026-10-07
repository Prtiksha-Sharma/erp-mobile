import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/librarian_books_screen.dart';
import 'screens/librarian_dashboard_screen.dart';
import 'screens/librarian_fines_screen.dart';
import 'screens/librarian_issue_screen.dart';
import 'screens/librarian_profile_screen.dart';
import 'screens/librarian_records_screen.dart';
import 'screens/librarian_reports_screens.dart';

/// Librarian portal — every page of the web's librarianPortalRoutes.jsx
/// (LIBRARIAN_NAV), as a drawer-shell role like Teacher/Principal:
///   Dashboard · Book Catalog · Issue Book · Issue Records · Fines ·
///   Library Reports (6 reports) · My Profile
/// The backend gates every /librarian/* route with authorize("Librarian") and
/// resolves the staff record from the JWT, so no ids are ever sent.
class LibrarianModule implements RoleModule {
  @override
  AppRole get role => AppRole.librarian;

  @override
  String get homePath => '/librarian/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(path: '/librarian/home', builder: (context, state) => const LibrarianDashboardScreen()),
        GoRoute(path: '/librarian/books', builder: (context, state) => const LibrarianBooksScreen()),
        GoRoute(path: '/librarian/issue', builder: (context, state) => const LibrarianIssueScreen()),
        GoRoute(path: '/librarian/records', builder: (context, state) => const LibrarianRecordsScreen()),
        GoRoute(path: '/librarian/fines', builder: (context, state) => const LibrarianFinesScreen()),
        GoRoute(
          path: '/librarian/reports',
          builder: (context, state) => const LibrarianReportsHubScreen(),
          routes: [
            GoRoute(path: 'inventory', builder: (context, state) => const LibrarianInventoryReportScreen()),
            GoRoute(path: 'issued', builder: (context, state) => const LibrarianIssuedReportScreen()),
            GoRoute(path: 'returned', builder: (context, state) => const LibrarianReturnedReportScreen()),
            GoRoute(path: 'overdue', builder: (context, state) => const LibrarianOverdueReportScreen()),
            GoRoute(path: 'fine-collection', builder: (context, state) => const LibrarianFineCollectionReportScreen()),
            GoRoute(path: 'student-history', builder: (context, state) => const LibrarianBorrowingHistoryScreen()),
          ],
        ),
        GoRoute(path: '/librarian/profile', builder: (context, state) => const LibrarianProfileScreen()),
      ];

  /// Drawer-style role: no bottom tabs.
  @override
  List<NavTab> tabs() => const [];
}
