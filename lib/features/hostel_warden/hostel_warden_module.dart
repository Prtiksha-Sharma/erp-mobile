import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/hostel_allocations_screen.dart';
import 'screens/hostel_attendance_screen.dart';
import 'screens/hostel_mess_screen.dart';
import 'screens/hostel_residents_screen.dart';
import 'screens/hostel_rooms_screen.dart';
import 'screens/hostel_visitors_screen.dart';
import 'screens/hostel_warden_dashboard_screen.dart';

/// Hostel Warden portal — every page of the web's hostelWardenRoutes.jsx
/// (HOSTEL_WARDEN_NAV), as a drawer-shell role like Librarian:
///   Dashboard · Attendance · Visitors · Mess · Residents · Allocation · Rooms
/// The backend gates every /hostel/* route with authorize("Hostel Warden")
/// and resolves the staff record from the JWT, so no ids are ever sent.
class HostelWardenModule implements RoleModule {
  @override
  AppRole get role => AppRole.hostelWarden;

  @override
  String get homePath => '/hostel/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(path: '/hostel/home', builder: (context, state) => const HostelWardenDashboardScreen()),
        GoRoute(path: '/hostel/attendance', builder: (context, state) => const HostelAttendanceScreen()),
        GoRoute(path: '/hostel/visitors', builder: (context, state) => const HostelVisitorsScreen()),
        GoRoute(path: '/hostel/mess', builder: (context, state) => const HostelMessScreen()),
        GoRoute(
          path: '/hostel/residents',
          builder: (context, state) => const HostelResidentsScreen(),
          routes: [
            GoRoute(
              path: 'student/:id',
              builder: (context, state) => StudentResidentScreen(studentId: state.pathParameters['id']!),
            ),
            GoRoute(
              path: 'staff/:id',
              builder: (context, state) => StaffResidentScreen(staffId: state.pathParameters['id']!),
            ),
          ],
        ),
        GoRoute(path: '/hostel/allocations', builder: (context, state) => const HostelAllocationsScreen()),
        GoRoute(path: '/hostel/rooms', builder: (context, state) => const HostelRoomsScreen()),
      ];

  /// Drawer-style role: no bottom tabs.
  @override
  List<NavTab> tabs() => const [];
}
