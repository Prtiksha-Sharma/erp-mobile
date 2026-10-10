import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'screens/hostel_oversight_dashboard_screen.dart';
import 'screens/hostel_oversight_hostels_screen.dart';
import 'screens/hostel_oversight_reports_screen.dart';
import 'screens/hostel_oversight_rooms_screen.dart';
import 'screens/hostel_oversight_students_screen.dart';
import 'screens/hostel_oversight_wardens_screen.dart';

/// Builds one page in the host role's own frame (drawer, top bar, account
/// menu). [floatingActionButton] is only passed when [HostelOversightConfig.canManage].
typedef HostelPageFrame = Widget Function(
  BuildContext context, {
  required String title,
  required Widget body,
  Widget? floatingActionButton,
});

/// How a role hosts the hostel oversight pages (web features/hostel, the
/// ADMIN.HOSTEL_* routes both School Admin and Vice Principal reach). The
/// screens never branch on AppRole — everything role-specific comes in here.
class HostelOversightConfig {
  const HostelOversightConfig({required this.basePath, required this.canManage, required this.frame});

  /// e.g. `/school-admin/hostel`; pages live at `$basePath/hostels` etc.
  final String basePath;

  /// School Admin: create/edit hostels, status, warden assignment. The
  /// backend refuses these for Vice Principal (read-only), so the actions
  /// aren't shown at all rather than failing with a 403.
  final bool canManage;

  final HostelPageFrame frame;

  String get hostels => '$basePath/hostels';
  String get rooms => '$basePath/rooms';
  String get students => '$basePath/students';
  String get wardens => '$basePath/wardens';
  String get reports => '$basePath/reports';
  String warden(String staffId) => '$basePath/wardens/$staffId';
}

/// Dashboard · Hostels · Rooms · Students · Wardens (+ detail) · Reports.
List<RouteBase> hostelOversightRoutes(HostelOversightConfig c) => [
      GoRoute(path: c.basePath, builder: (context, state) => HostelOversightDashboardScreen(config: c)),
      GoRoute(path: c.hostels, builder: (context, state) => HostelOversightHostelsScreen(config: c)),
      GoRoute(path: c.rooms, builder: (context, state) => HostelOversightRoomsScreen(config: c)),
      GoRoute(path: c.students, builder: (context, state) => HostelOversightStudentsScreen(config: c)),
      GoRoute(
        path: c.wardens,
        builder: (context, state) => HostelOversightWardensScreen(config: c),
        routes: [
          GoRoute(
            path: ':staffId',
            builder: (context, state) =>
                HostelOversightWardenDetailScreen(config: c, staffId: state.pathParameters['staffId']!),
          ),
        ],
      ),
      GoRoute(path: c.reports, builder: (context, state) => HostelOversightReportsScreen(config: c)),
    ];
