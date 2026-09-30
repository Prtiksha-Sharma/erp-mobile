import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/apply_leave_screen.dart';
import 'screens/chat_screen.dart';
import 'screens/fee_plan_screen.dart';
import 'screens/file_grievance_screen.dart';
import 'screens/grievance_detail_screen.dart';
import 'screens/parent_academics_hub_screen.dart';
import 'screens/parent_attendance_screen.dart';
import 'screens/parent_fees_screen.dart';
import 'screens/parent_grievances_screen.dart';
import 'screens/parent_home_screen.dart';
import 'screens/parent_homework_screen.dart';
import 'screens/parent_leaves_screen.dart';
import 'screens/parent_messages_screen.dart';
import 'screens/parent_more_hub_screen.dart';
import 'screens/parent_school_updates_screen.dart';
import 'screens/parent_teachers_screen.dart';
import 'screens/parent_timetable_screen.dart';
import 'screens/parent_transport_screen.dart';
import 'screens/receipt_detail_screen.dart';
import 'screens/teacher_profile_screen.dart';

/// P1/P2/P3 (Fee Plan + Payment) all built. P4 Grievances and Messages are
/// now both built too — Messages runs on plain REST polling, not Socket.IO
/// (see messages_service.dart's own comment on why). Parent role is
/// functionally complete.
class ParentModule implements RoleModule {
  @override
  AppRole get role => AppRole.parent;

  @override
  String get homePath => '/parent/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: '/parent/home',
          builder: (context, state) => const ParentHomeScreen(),
        ),
        GoRoute(
          path: '/parent/academics',
          builder: (context, state) => const ParentAcademicsHubScreen(),
          routes: [
            GoRoute(
              path: 'attendance',
              builder: (context, state) => const ParentAttendanceScreen(),
            ),
            GoRoute(
              path: 'homework',
              builder: (context, state) => const ParentHomeworkScreen(),
            ),
            GoRoute(
              path: 'timetable',
              builder: (context, state) => const ParentTimetableScreen(),
            ),
            GoRoute(
              path: 'teachers',
              builder: (context, state) => const ParentTeachersScreen(),
              routes: [
                GoRoute(
                  path: ':staffId',
                  builder: (context, state) =>
                      TeacherProfileScreen(staffId: state.pathParameters['staffId']!),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/parent/fees',
          builder: (context, state) => const ParentFeesScreen(),
          routes: [
            GoRoute(
              path: 'receipts/:receiptId',
              builder: (context, state) => ReceiptDetailScreen(
                studentId: state.extra as String,
                receiptId: state.pathParameters['receiptId']!,
              ),
            ),
            GoRoute(
              path: 'fee-plan',
              builder: (context, state) => const FeePlanScreen(),
            ),
          ],
        ),
        GoRoute(
          path: '/parent/more',
          builder: (context, state) => const ParentMoreHubScreen(),
          routes: [
            GoRoute(
              path: 'school-updates',
              builder: (context, state) => const ParentSchoolUpdatesScreen(),
            ),
            GoRoute(
              path: 'leaves',
              builder: (context, state) => const ParentLeavesScreen(),
              routes: [
                GoRoute(
                  path: 'apply',
                  builder: (context, state) => const ApplyLeaveScreen(),
                ),
              ],
            ),
            GoRoute(
              path: 'transport',
              builder: (context, state) => const ParentTransportScreen(),
            ),
            GoRoute(
              path: 'grievances',
              builder: (context, state) => const ParentGrievancesScreen(),
              routes: [
                GoRoute(
                  path: 'file',
                  builder: (context, state) => const FileGrievanceScreen(),
                ),
                GoRoute(
                  path: ':ticketId',
                  builder: (context, state) =>
                      GrievanceDetailScreen(ticketId: state.pathParameters['ticketId']!),
                ),
              ],
            ),
            GoRoute(
              path: 'messages',
              builder: (context, state) => const ParentMessagesScreen(),
              routes: [
                GoRoute(
                  path: 'chat',
                  builder: (context, state) {
                    final extra = state.extra as ({String? threadId, String? staffId, String? teacherName});
                    return ChatScreen(
                      threadId: extra.threadId,
                      staffId: extra.staffId,
                      teacherName: extra.teacherName,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ];

  @override
  List<NavTab> tabs() => const [
        NavTab(label: 'Home', icon: Icons.home_outlined, path: '/parent/home', moduleKey: 'dashboard'),
        NavTab(label: 'Academics', icon: Icons.menu_book_outlined, path: '/parent/academics', moduleKey: 'academics'),
        NavTab(label: 'Fees', icon: Icons.payments_outlined, path: '/parent/fees', moduleKey: 'fees'),
        NavTab(label: 'More', icon: Icons.more_horiz, path: '/parent/more', moduleKey: 'more'),
      ];
}
