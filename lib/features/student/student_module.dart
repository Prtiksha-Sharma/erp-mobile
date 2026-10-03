import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/student_attendance_screen.dart';
import 'screens/student_certificates_screen.dart';
import 'screens/student_discipline_screen.dart';
import 'screens/student_documents_screen.dart';
import 'screens/student_exams_screen.dart';
import 'screens/student_fees_screen.dart';
import 'screens/student_home_screen.dart';
import 'screens/student_homework_screen.dart';
import 'screens/student_hub_screens.dart';
import 'screens/student_medical_screen.dart';
import 'screens/student_profile_screen.dart';
import 'screens/student_promotion_history_screen.dart';
import 'screens/student_timetable_screen.dart';
import 'screens/student_transport_screen.dart';

/// Student portal — every page of the web's studentRoutes.jsx, regrouped
/// for a phone/tablet bottom nav:
///   Home      -> dashboard (StudentDashboardPage)
///   Academics -> Attendance & Leaves, Homework, Exams, Timetable
///   Fees      -> MyFeesPage
///   More      -> Profile, Documents, Certificates, Medical, Discipline,
///                Promotion History, Transport, Change Password, Log out
class StudentModule implements RoleModule {
  @override
  AppRole get role => AppRole.student;

  @override
  String get homePath => '/student/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: '/student/home',
          builder: (context, state) => const StudentHomeScreen(),
        ),
        GoRoute(
          path: '/student/academics',
          builder: (context, state) => const StudentAcademicsHubScreen(),
          routes: [
            GoRoute(path: 'attendance', builder: (context, state) => const StudentAttendanceScreen()),
            GoRoute(path: 'homework', builder: (context, state) => const StudentHomeworkScreen()),
            GoRoute(path: 'exams', builder: (context, state) => const StudentExamsScreen()),
            GoRoute(path: 'timetable', builder: (context, state) => const StudentTimetableScreen()),
          ],
        ),
        GoRoute(
          path: '/student/fees',
          builder: (context, state) => const StudentFeesScreen(),
        ),
        GoRoute(
          path: '/student/more',
          builder: (context, state) => const StudentMoreHubScreen(),
          routes: [
            GoRoute(path: 'profile', builder: (context, state) => const StudentProfileScreen()),
            GoRoute(path: 'documents', builder: (context, state) => const StudentDocumentsScreen()),
            GoRoute(path: 'certificates', builder: (context, state) => const StudentCertificatesScreen()),
            GoRoute(path: 'medical', builder: (context, state) => const StudentMedicalScreen()),
            GoRoute(path: 'discipline', builder: (context, state) => const StudentDisciplineScreen()),
            GoRoute(path: 'promotion-history', builder: (context, state) => const StudentPromotionHistoryScreen()),
            GoRoute(path: 'transport', builder: (context, state) => const StudentTransportScreen()),
          ],
        ),
      ];

  // No bottom tabs: like Principal/Vice Principal, navigation is the left
  // drawer (studentNavSections, screens/student_nav.dart). With fewer than
  // two tabs AppShell renders a bare Scaffold.
  @override
  List<NavTab> tabs() => const [];
}
