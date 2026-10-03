import 'package:go_router/go_router.dart';

import '../../core/models/teacher_exams.dart';
import '../../core/models/teacher_homework.dart';
import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/teacher_feed_screens.dart';
import 'screens/teacher_home_screen.dart';
import 'screens/teacher_homework_screen.dart';
import 'screens/teacher_hub_screens.dart';
import 'screens/teacher_leave_requests_screen.dart';
import 'screens/teacher_lesson_plans_screen.dart';
import 'screens/teacher_mark_attendance_screen.dart';
import 'screens/teacher_marks_screens.dart';
import 'screens/teacher_messages_screens.dart';
import 'screens/teacher_my_attendance_screen.dart';
import 'screens/teacher_my_class_screen.dart';
import 'screens/teacher_my_leaves_screen.dart';
import 'screens/teacher_profile_screen.dart';
import 'screens/teacher_subjects_screen.dart';
import 'screens/teacher_syllabus_screen.dart';
import 'screens/teacher_timetable_screen.dart';
import 'services/teacher_portal_service.dart' show WorkType;

/// Teacher / Class Teacher portal — every page of the web's
/// teacherRoutes.jsx (TEACHER_NAV), regrouped for a phone/tablet bottom nav:
///   Home      -> dashboard (TeacherDashboardPage)
///   Classroom -> Attendance, Leave Requests, My Class (+ student
///                performance) — Class Teacher only — plus Marks Entry and
///                Homework & Assignments
///   Academics -> My Subjects, My Timetable, Lesson Planning, My Syllabus
///   Messages  -> parent conversations
///   More      -> My Profile, My Attendance, My Leaves, Notices, Events,
///                Activities, Log out
/// Both backend roles ("Teacher", "Class Teacher") map to this module; the
/// Class-Teacher-only pages gate themselves on isClassTeacherProvider,
/// same as the web's useIsClassTeacher().
class TeacherModule implements RoleModule {
  @override
  AppRole get role => AppRole.teacher;

  @override
  String get homePath => '/teacher/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(path: '/teacher/home', builder: (context, state) => const TeacherHomeScreen()),
        GoRoute(
          path: '/teacher/classroom',
          builder: (context, state) => const TeacherClassroomHubScreen(),
          routes: [
            GoRoute(path: 'attendance', builder: (context, state) => const TeacherMarkAttendanceScreen()),
            GoRoute(path: 'leave-requests', builder: (context, state) => const TeacherLeaveRequestsScreen()),
            GoRoute(
              path: 'my-class',
              builder: (context, state) => const TeacherMyClassScreen(),
              routes: [
                GoRoute(
                  path: 'students/:studentId',
                  builder: (context, state) => TeacherStudentPerformanceScreen(
                    studentId: state.pathParameters['studentId']!,
                    studentName: state.extra is String ? state.extra! as String : null,
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'marks',
              builder: (context, state) => const TeacherMarksOverviewScreen(),
              routes: [
                GoRoute(
                  path: ':examScheduleId',
                  builder: (context, state) => TeacherMarksEntryScreen(
                    examScheduleId: state.pathParameters['examScheduleId']!,
                    schedule: state.extra is MarksEntryStatus ? state.extra! as MarksEntryStatus : null,
                  ),
                ),
              ],
            ),
            GoRoute(
              path: 'homework',
              builder: (context, state) => const TeacherHomeworkScreen(),
              routes: [
                GoRoute(
                  path: ':kind/:homeworkId',
                  builder: (context, state) => TeacherWorkDetailScreen(
                    kind: state.pathParameters['kind'] == WorkType.assignment.path
                        ? WorkType.assignment
                        : WorkType.homework,
                    homeworkId: state.pathParameters['homeworkId']!,
                    homework: state.extra is TeacherHomework ? state.extra! as TeacherHomework : null,
                  ),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/teacher/academics',
          builder: (context, state) => const TeacherAcademicsHubScreen(),
          routes: [
            GoRoute(path: 'subjects', builder: (context, state) => const TeacherSubjectsScreen()),
            GoRoute(path: 'timetable', builder: (context, state) => const TeacherTimetableScreen()),
            GoRoute(path: 'lesson-plans', builder: (context, state) => const TeacherLessonPlansScreen()),
            GoRoute(path: 'syllabus', builder: (context, state) => const TeacherSyllabusScreen()),
          ],
        ),
        GoRoute(
          path: '/teacher/messages',
          builder: (context, state) => const TeacherMessagesScreen(),
          routes: [
            GoRoute(
              path: ':threadId',
              builder: (context, state) => TeacherThreadScreen(threadId: state.pathParameters['threadId']!),
            ),
          ],
        ),
        GoRoute(
          path: '/teacher/more',
          builder: (context, state) => const TeacherMoreHubScreen(),
          routes: [
            GoRoute(path: 'profile', builder: (context, state) => const TeacherProfileScreen()),
            GoRoute(path: 'my-attendance', builder: (context, state) => const TeacherMyAttendanceScreen()),
            GoRoute(path: 'my-leaves', builder: (context, state) => const TeacherMyLeavesScreen()),
            GoRoute(path: 'notices', builder: (context, state) => const TeacherNoticesScreen()),
            GoRoute(path: 'events', builder: (context, state) => const TeacherEventsScreen()),
            GoRoute(path: 'activities', builder: (context, state) => const TeacherActivitiesScreen()),
          ],
        ),
      ];

  // No bottom tabs: like Principal/Vice Principal, navigation is the left
  // drawer (teacherNavSections, screens/teacher_nav.dart). With fewer than
  // two tabs AppShell renders a bare Scaffold.
  @override
  List<NavTab> tabs() => const [];
}
