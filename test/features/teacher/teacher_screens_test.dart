// Renders every teacher screen at phone, portrait-tablet and
// landscape-tablet sizes with stubbed providers. Flutter fails a widget
// test on any RenderFlex overflow or build exception, so this is the
// "works on every non-PC screen size" check for the whole portal — for
// both a Class Teacher and a plain Teacher (gated pages).

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/message_thread.dart';
import 'package:edusoft_mobile/core/models/school_feed.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/models/staff_self_service.dart';
import 'package:edusoft_mobile/core/models/student_records.dart';
import 'package:edusoft_mobile/core/models/teacher_academics.dart';
import 'package:edusoft_mobile/core/models/teacher_classroom.dart';
import 'package:edusoft_mobile/core/models/teacher_exams.dart';
import 'package:edusoft_mobile/core/models/teacher_homework.dart';
import 'package:edusoft_mobile/core/models/timetable_entry.dart';
import 'package:edusoft_mobile/features/teacher/providers/teacher_portal_providers.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_feed_screens.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_home_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_homework_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_hub_screens.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_leave_requests_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_lesson_plans_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_mark_attendance_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_marks_screens.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_messages_screens.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_my_attendance_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_my_class_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_my_leaves_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_profile_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_subjects_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_syllabus_screen.dart';
import 'package:edusoft_mobile/features/teacher/screens/teacher_timetable_screen.dart';
import 'package:edusoft_mobile/features/teacher/services/teacher_portal_service.dart';
import 'package:edusoft_mobile/features/teacher/teacher_module.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';

// ── Fixtures (same shapes as the backend; see teacher_portal_models_test) ──

final _now = DateTime.now().toUtc();
String _day(int offset) => DateTime.utc(_now.year, _now.month, _now.day).add(Duration(days: offset)).toIso8601String();

const _classes = {'class_id': 'c8', 'class_name': 'Class 8'};
const _sections = {'section_id': 's1', 'section_name': 'A'};
const _subject = {'subject_id': 'm', 'subject_name': 'Mathematics'};
const _student = {
  'student_id': 'stu1',
  'admission_no': 'ADM-2026-0001',
  'roll_no': '12',
  'applicants': {'first_name': 'Aishwarya Lakshmi', 'last_name': 'Venkataraman-Subramanian'},
};

final _profile = StaffProfile.fromJson({
  'staff_id': 'st1',
  'employee_code': 'GHPS-EMP-0015',
  'full_name': 'Ramesh Kumar Srinivasan Iyer',
  'designation': 'Trained Graduate Teacher — Mathematics',
  'department': 'Mathematics',
  'date_of_joining': '2021-06-01T00:00:00.000Z',
  'gender': 'Male',
  'contact_number': '9876543210',
  'address': '12 MG Road, Camp, Pune, Maharashtra 411001',
  'employment_status': 'ACTIVE',
  'institution': {'institution_name': 'Green Hills Public School With A Rather Long Name'},
  'users': {'username': 'GHPS-EMP-0015', 'email': 'ramesh.kumar.srinivasan@example.com'},
});

final _subjects = [
  for (final (i, sec) in ['A', 'B'].indexed)
    SubjectAssignment.fromJson({
      'subject_teacher_id': 'stt$i',
      'class_id': 'c8',
      'section_id': 's$i',
      'subject_id': 'm',
      'session_id': 'sess1',
      'classes': _classes,
      'sections': {'section_id': 's$i', 'section_name': sec},
      'academic_subjects': _subject,
    }),
];

final _timetable = [
  for (var day = 1; day <= 6; day++)
    for (var period = 1; period <= 4; period++)
      TimetableEntry.fromJson({
        'timetable_entry_id': 't$day-$period',
        'day_of_week': day,
        'period_number': period,
        'start_time': '1970-01-01T0${period + 5}:00:00.000Z',
        'end_time': '1970-01-01T0${period + 5}:45:00.000Z',
        'room': '101',
        'period_type': period == 3 ? 'BREAK' : 'CLASS',
        'break_label': period == 3 ? 'Lunch' : null,
        'academic_subjects': period == 3 ? null : _subject,
        'classes': period == 3 ? null : _classes,
        'sections': period == 3 ? null : _sections,
      }),
];

StaffAttendanceSummary _attendance(String period) => StaffAttendanceSummary.fromJson({
      'from': _day(-10),
      'to': _day(0),
      'total': 3,
      'data': [
        {'attendance_id': 'a1', 'attendance_date': _day(-1), 'status': 'PRESENT'},
        {'attendance_id': 'a2', 'attendance_date': _day(-2), 'status': 'ABSENT'},
        {'attendance_id': 'a3', 'attendance_date': _day(-3), 'status': 'HALF_DAY'},
      ],
    });

final _myLeaves = [
  StaffLeave.fromJson({
    'leave_id': 'l1',
    'leave_type': 'Emergency Leave',
    'from_date': _day(3),
    'to_date': _day(4),
    'total_days': '2',
    'reason': 'Family function out of station for two days with travel',
    'status': 'PENDING',
  }),
  StaffLeave.fromJson({
    'leave_id': 'l2',
    'leave_type': 'Casual Leave',
    'from_date': _day(-20),
    'to_date': _day(-20),
    'total_days': '1',
    'status': 'CANCELLED',
  }),
];

List<TeacherHomework> _work(WorkType kind) => [
      TeacherHomework.fromJson({
        'homework_id': 'hw1',
        'type': kind == WorkType.homework ? 'HOMEWORK' : 'ASSIGNMENT',
        'class_id': 'c8',
        'section_id': 's1',
        'subject_id': 'm',
        'title': 'Chapter 4 — Linear equations in one variable, all exercises',
        'description': 'Show all working.',
        'assigned_date': _day(-2),
        'due_date': _day(0),
        'classes': _classes,
        'sections': _sections,
        'academic_subjects': _subject,
        'submissions': [
          {'submission_id': 'sb1', 'status': 'SUBMITTED'},
          {'submission_id': 'sb2', 'status': 'PENDING'},
        ],
      }),
    ];

final _submissions = [
  TeacherSubmission.fromJson({
    'submission_id': 'sb1',
    'status': 'SUBMITTED',
    'effective_status': 'SUBMITTED',
    'submitted_at': _day(-1),
    'remark': 'Well done',
    'attachment_url': 'https://example.com/answer.pdf',
    'students': _student,
  }),
  TeacherSubmission.fromJson({
    'submission_id': 'sb2',
    'status': 'PENDING',
    'effective_status': 'MISSING',
    'students': {'student_id': 'stu2', 'admission_no': 'ADM-2026-0002'},
  }),
];

final _comments = [
  HomeworkComment.fromJson({
    'comment_id': 'cm1',
    'comment_text': 'Please attempt question 7 again.',
    'created_at': _day(-1),
    'users': {'username': 'GHPS-EMP-0015', 'staff_account': {'full_name': 'Ramesh Kumar'}},
  }),
];

final _lessonPlans = [
  LessonPlan.fromJson({
    'lesson_plan_id': 'lp1',
    'class_id': 'c8',
    'section_id': null,
    'subject_id': 'm',
    'topic': 'Unit 1 — Rational numbers and their properties on the number line',
    'planned_date': _day(5),
    'status': 'PLANNED',
    'classes': _classes,
    'academic_subjects': _subject,
  }),
];

final _syllabus = [
  SyllabusEntry.fromJson({
    'syllabus_id': 'sy1',
    'title': 'Unit 1 — Numbers',
    'status': 'IN_PROGRESS',
    'classes': _classes,
    'sections': _sections,
    'academic_subjects': _subject,
  }),
];

final _exams = [
  TeacherExam.fromJson({
    'exam_id': 'x1',
    'exam_name': 'Half Yearly Examination 2026',
    'exam_types': {'type_name': 'Term'},
  }),
];

final _marksStatus = [
  MarksEntryStatus.fromJson({
    'exam_schedule_id': 'es1',
    'class_name': 'Class 8',
    'section_name': 'A',
    'subject_name': 'Mathematics',
    'total_students': 30,
    'entered_count': 12,
    'pending_count': 18,
  }),
];

final _marks = [
  ExamMarkEntry.fromJson({'mark_id': 'mk1', 'marks_obtained': '87.5', 'attendance_status': 'PRESENT', 'students': _student}),
  ExamMarkEntry.fromJson({
    'mark_id': 'mk2',
    'attendance_status': 'ABSENT',
    'is_absent': true,
    'students': {'admission_no': 'ADM-2026-0002', 'roll_no': 13},
  }),
];

final _roster = ClassAttendanceRoster.fromJson({
  'date': _day(0),
  'total': 2,
  'data': [
    {
      ..._student,
      'attendance': {
        'attendance_id': 'sa1',
        'attendance_date': _day(0),
        'status': 'LATE',
        'check_in_time': '1970-01-01T08:20:00.000Z',
      },
    },
    {'student_id': 'stu2', 'admission_no': 'ADM-2026-0002', 'roll_no': '13', 'attendance': null},
  ],
});

final _classLeaves = [
  StudentLeave.fromJson({
    'leave_id': 'sl1',
    'leave_type': 'Sick Leave',
    'from_date': _day(1),
    'to_date': _day(2),
    'total_days': '2',
    'reason': 'Fever',
    'status': 'PENDING',
    'students': _student,
  }),
  StudentLeave.fromJson({
    'leave_id': 'sl2',
    'leave_type': 'Casual Leave',
    'from_date': _day(-5),
    'to_date': _day(-5),
    'total_days': '1',
    'status': 'APPROVED',
    'remarks': 'OK',
    'students': _student,
  }),
];

final _myClass = MyClassRoster.fromJson({
  'total': 1,
  'data': [
    {
      'student_id': 'stu1',
      'roll_no': '12',
      'name': 'Aishwarya Lakshmi Venkataraman-Subramanian',
      'gender': 'Female',
      'parent_name': 'Venkataraman Subramanian',
      'contact_number': '9000000000',
      'attendance_pct': 92.5,
      'fee_status': 'NO_RECORD',
      'bus_route': 'Route 4 — East Side Residential Loop',
    },
  ],
});

final _performance = StudentPerformance.fromJson({
  'attendance_trend': [
    {'month': '2026-08', 'attendance_pct': 95},
  ],
  'exam_summary': [
    {'exam_name': 'Term', 'subject_name': 'Mathematics', 'marks_obtained': '87.5', 'max_marks': '100', 'attendance_status': 'PRESENT', 'grade': 'A'},
    {'exam_name': 'Term', 'subject_name': 'English', 'max_marks': '100', 'attendance_status': 'ABSENT'},
  ],
});

final _birthdays = ClassBirthdays.fromJson({
  'today': [
    {'student_id': 'stu1', 'name': 'Aishwarya Lakshmi', 'dob': '2013-05-10T00:00:00.000Z', 'days_away': 0},
  ],
  'upcoming': [
    {'student_id': 'stu2', 'name': 'Ravi', 'dob': '2013-10-10T00:00:00.000Z', 'days_away': 10},
  ],
});

final _thread = MessageThread.fromJson({
  'thread_id': 'th1',
  'last_message_at': _day(0),
  'students': _student,
  'parent_accounts': {'user_id': 'pu1', 'parents': {'first_name': 'Venkataraman', 'last_name': 'Subramanian'}},
  'messages': [
    {'message_id': 'm1', 'sender_role': 'PARENT', 'body': 'Hello, is the homework due tomorrow?', 'created_at': _day(-1)},
    {'message_id': 'm2', 'sender_role': 'TEACHER', 'body': 'Yes, by 9 AM.', 'read_at': _day(0), 'created_at': _day(0)},
    {
      'message_id': 'm3',
      'sender_role': 'TEACHER',
      'body': '',
      'attachment_url': 'https://example.com/messages/th1/worksheet-chapter-4-final.pdf',
      'created_at': _day(0),
    },
  ],
});

List<Override> _overrides({required bool classTeacher}) => [
      isClassTeacherProvider.overrideWithValue(classTeacher),
      teacherProfileProvider.overrideWith((ref) async => _profile),
      teacherSubjectsProvider.overrideWith((ref) async => _subjects),
      teacherSessionIdProvider.overrideWith((ref) async => 'sess1'),
      teacherTimetableProvider.overrideWith((ref) async => _timetable),
      teacherMyAttendanceProvider.overrideWith((ref, period) async => _attendance(period)),
      teacherMyLeavesProvider.overrideWith((ref) async => _myLeaves),
      teacherNoticesProvider.overrideWith(
        (ref) async => [
          SchoolNotice.fromJson({
            'notice_id': 'n1',
            'title': 'Parent-teacher meeting on Saturday for all classes',
            'description': 'All class teachers to be present from 9 AM.',
            'notice_date': _day(0),
            'attachment_url': 'https://example.com/ptm.pdf',
          }),
        ],
      ),
      teacherEventsProvider.overrideWith(
        (ref) async => [SchoolEvent.fromJson({'event_id': 'e1', 'event_name': 'Annual Sports Day', 'event_date': _day(10)})],
      ),
      teacherActivitiesProvider.overrideWith(
        (ref) async => [
          SchoolActivity.fromJson({
            'activity_id': 'ac1',
            'activity_name': 'Inter-house Science Fair',
            'activity_type': 'Competition',
            'target_audience': 'BOTH',
            'venue': 'Main Auditorium, Block B, Second Floor',
          }),
        ],
      ),
      teacherWorkProvider.overrideWith((ref, kind) async => _work(kind)),
      teacherDashboardWorkProvider.overrideWith((ref) async => _work(WorkType.homework)),
      teacherSubmissionsProvider.overrideWith((ref, p) async => _submissions),
      teacherCommentsProvider.overrideWith((ref, p) async => _comments),
      teacherLessonPlansProvider.overrideWith((ref) async => _lessonPlans),
      teacherSyllabusProvider.overrideWith((ref) async => _syllabus),
      teacherExamsProvider.overrideWith((ref) async => _exams),
      teacherMarksStatusProvider.overrideWith((ref, examId) async => _marksStatus),
      teacherExamMarksProvider.overrideWith((ref, id) async => _marks),
      classRosterProvider.overrideWith((ref, date) async => _roster),
      classLeavesProvider.overrideWith((ref) async => _classLeaves),
      myClassStudentsProvider.overrideWith((ref, search) async => _myClass),
      studentPerformanceProvider.overrideWith((ref, id) async => _performance),
      myClassBirthdaysProvider.overrideWith((ref) async => _birthdays),
      teacherThreadsProvider.overrideWith((ref) async => [_thread]),
      teacherThreadProvider.overrideWith((ref, id) async => _thread),
      parentPresenceProvider.overrideWith(
        (ref, id) async => ParentPresence.fromJson({'isOnline': false, 'lastActiveAt': _day(0)}),
      ),
      shellNotificationsProvider(AppRole.teacher)
          .overrideWith((ref) async => const NotificationInbox(notifications: [], unreadCount: 0)),
    ];

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Home': () => const TeacherHomeScreen(),
  'Classroom hub': () => const TeacherClassroomHubScreen(),
  'Academics hub': () => const TeacherAcademicsHubScreen(),
  'More hub': () => const TeacherMoreHubScreen(),
  'Profile': () => const TeacherProfileScreen(),
  'Mark Attendance': () => const TeacherMarkAttendanceScreen(),
  'Leave Requests': () => const TeacherLeaveRequestsScreen(),
  'My Class': () => const TeacherMyClassScreen(),
  'Student Performance': () => const TeacherStudentPerformanceScreen(studentId: 'stu1', studentName: 'Aishwarya'),
  'Marks Overview': () => const TeacherMarksOverviewScreen(),
  'Marks Entry': () => TeacherMarksEntryScreen(examScheduleId: 'es1', schedule: _marksStatus.first),
  'Homework': () => const TeacherHomeworkScreen(),
  'Homework Detail': () => TeacherWorkDetailScreen(kind: WorkType.homework, homeworkId: 'hw1', homework: _work(WorkType.homework).first),
  'Subjects': () => const TeacherSubjectsScreen(),
  'Timetable': () => const TeacherTimetableScreen(),
  'Lesson Plans': () => const TeacherLessonPlansScreen(),
  'Syllabus': () => const TeacherSyllabusScreen(),
  'My Attendance': () => const TeacherMyAttendanceScreen(),
  'My Leaves': () => const TeacherMyLeavesScreen(),
  'Notices': () => const TeacherNoticesScreen(),
  'Events': () => const TeacherEventsScreen(),
  'Activities': () => const TeacherActivitiesScreen(),
  'Messages': () => const TeacherMessagesScreen(),
  'Thread': () => const TeacherThreadScreen(threadId: 'th1'),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size, {bool classTeacher = true}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: _overrides(classTeacher: classTeacher),
      // A real router (the drawer reads the current route): the screen
      // under test at '/', plus the module's own routes so drawer taps
      // navigate — same pattern as the Principal/Vice Principal tests.
      child: MaterialApp.router(
        routerConfig: GoRouter(
          routes: [GoRoute(path: '/', builder: (_, _) => screen), ...TeacherModule().routes()],
        ),
      ),
    ),
  );
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

      testWidgets('Class-Teacher pages explain the gate to a plain Teacher', (tester) async {
        for (final screen in [
          const TeacherMarkAttendanceScreen(),
          const TeacherLeaveRequestsScreen(),
          const TeacherMyClassScreen(),
        ]) {
          await _pump(tester, screen, size.value, classTeacher: false);
          expect(find.text('Not assigned as a Class Teacher'), findsOneWidget);
          expect(tester.takeException(), isNull);
        }
      });

      testWidgets('Leave Requests: tab counts and approve sheet', (tester) async {
        await _pump(tester, const TeacherLeaveRequestsScreen(), size.value);
        expect(find.text('Pending (1)'), findsOneWidget);
        expect(find.text('All (2)'), findsOneWidget);
        await tester.tap(find.text('Approve'));
        await tester.pumpAndSettle();
        expect(find.text('Approve Leave Request'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Homework: assign sheet opens with class picker', (tester) async {
        await _pump(tester, const TeacherHomeworkScreen(), size.value);
        await tester.tap(find.text('Assign Homework'));
        await tester.pumpAndSettle();
        expect(find.text('Class *'), findsOneWidget);
        await tester.tap(find.text('Assign').last);
        await tester.pumpAndSettle();
        expect(find.text('Class is required'), findsOneWidget);
        expect(find.text('Title is required'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('My Leaves: validation matches the web copy', (tester) async {
        await _pump(tester, const TeacherMyLeavesScreen(), size.value);
        await tester.tap(find.text('Submit Request'));
        await tester.pumpAndSettle();
        expect(find.text('Leave type, from date, and to date are required.'), findsOneWidget);
        expect(find.text('Cancel'), findsOneWidget); // only the PENDING leave
        expect(tester.takeException(), isNull);
      });

      testWidgets('Mark Attendance: LATE shows the check-in time', (tester) async {
        await _pump(tester, const TeacherMarkAttendanceScreen(), size.value);
        expect(find.text('Check-in 8:20 AM'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });

      testWidgets('Lesson plan edit keeps the PLANNED status selectable', (tester) async {
        await _pump(tester, const TeacherLessonPlansScreen(), size.value);
        await tester.tap(find.byTooltip('Edit lesson plan'));
        await tester.pumpAndSettle();
        expect(find.text('Edit Lesson Plan'), findsOneWidget);
        expect(find.text('Planned'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    });
  }
}
