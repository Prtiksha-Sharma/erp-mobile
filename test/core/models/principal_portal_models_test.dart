// Parse tests for the principal-portal models, using payloads shaped exactly
// like the backend (edusoft_backend/src/features/principal/*.service.js) —
// see each model's doc comment for its source.

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/principal_dashboard.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';

void main() {
  test('PrincipalDashboard — dashboard.service.js#getPrincipalDashboard', () {
    final d = PrincipalDashboard.fromJson({
      'total_students': 812,
      'total_teachers': 46,
      'total_staff': 71,
      'today_attendance': {'PRESENT': 702, 'ABSENT': 41, 'HALF_DAY': 9, 'LATE': 3},
      'student_attendance_pct': 93,
      'fee_collection_today': 48250.5,
      'pending_fee_amount': 1287400,
      'pending_leave_requests': {'staff': 4, 'student': 11},
      'new_admissions': 37,
      'upcoming_exams': [
        {
          'exam_id': 'ex1',
          'exam_name': 'Half Yearly Examination',
          'start_date': '2026-10-12T00:00:00.000Z',
          'exam_type': 'Term',
        },
        {'exam_id': 'ex2', 'exam_name': 'Unit Test 3', 'start_date': '2026-11-02T00:00:00.000Z', 'exam_type': null},
      ],
      // Raw notices rows (listNotices has no select).
      'announcements': [
        {
          'notice_id': 'n1',
          'institution_id': 'inst1',
          'title': 'PTM on Saturday',
          'description': null,
          'notice_date': '2026-09-29T00:00:00.000Z',
          'attachment_url': null,
          'is_active': true,
          'created_at': '2026-09-28T10:15:00.000Z',
        },
      ],
      // events rows + flattened approval_status (listEvents).
      'upcoming_events': [
        {
          'event_id': 'ev1',
          'institution_id': 'inst1',
          'event_name': 'Annual Sports Day',
          'description': 'Track and field events',
          'event_date': '2026-10-20T00:00:00.000Z',
          'created_at': '2026-09-01T08:00:00.000Z',
          'approval_status': 'PENDING',
        },
      ],
      'class_teacher_vacancy': {'total_sections': 32, 'unassigned': 3},
      'complaints_open': 0,
    });

    expect(d.totalStudents, 812);
    expect(d.todayAttendance['HALF_DAY'], 9);
    expect(d.studentAttendancePct, 93.0);
    expect(d.feeCollectionToday, Decimal.parse('48250.5'));
    expect(d.pendingFeeAmount, Decimal.fromInt(1287400));
    expect(d.pendingLeaveRequests?.student, 11);
    expect(d.upcomingExams.first.startDate, DateTime.utc(2026, 10, 12));
    expect(d.upcomingExams.last.examType, isNull);
    expect(d.announcements.single.title, 'PTM on Saturday');
    expect(d.upcomingEvents.single.eventName, 'Annual Sports Day');
    expect(d.classTeacherVacancy?.unassigned, 3);
  });

  test('PrincipalDashboard — empty school (nothing marked, no session)', () {
    final d = PrincipalDashboard.fromJson({
      'total_students': 0,
      'total_teachers': 0,
      'total_staff': 1,
      'today_attendance': <String, dynamic>{},
      'student_attendance_pct': null,
      'fee_collection_today': 0,
      'pending_fee_amount': 0,
      'pending_leave_requests': {'staff': 0, 'student': 0},
      'new_admissions': 0,
      'upcoming_exams': <dynamic>[],
      'announcements': <dynamic>[],
      'upcoming_events': <dynamic>[],
      'class_teacher_vacancy': {'total_sections': 0, 'unassigned': 0},
      'complaints_open': 0,
    });

    expect(d.todayAttendance, isEmpty);
    expect(d.studentAttendancePct, isNull);
    expect(d.feeCollectionToday, Decimal.zero);
    expect(d.upcomingExams, isEmpty);
  });

  test('StaffProfile — principal/profile.service.js#getMyProfile select', () {
    final p = StaffProfile.fromJson({
      'staff_id': 'pr1',
      'employee_code': 'GHPS-EMP-0001',
      'full_name': 'Dr. Meera Nair',
      'designation': 'Principal',
      'department': 'Administration',
      'date_of_joining': '2018-04-01T00:00:00.000Z',
      'date_of_birth': '1975-07-21T00:00:00.000Z',
      'gender': 'Female',
      'contact_number': '9822012345',
      'address': '4 Lake View Road, Pune',
      'qualification': 'Ph.D. Education',
      'employment_status': 'ACTIVE',
      'profile_photo_url': 'https://res.cloudinary.com/demo/image/upload/staff-photos/pr1/photo_1.jpg',
      'institution': {'institution_id': 'inst1', 'institution_name': 'Green Hills Public School'},
      'branch': {'branch_id': 'b1', 'branch_name': 'Main Campus'},
      'reports_to': null,
      'users': {'username': 'GHPS-EMP-0001', 'email': 'principal@greenhills.edu.in', 'mobile_no': '9822012345'},
    });

    expect(p.fullName, 'Dr. Meera Nair');
    expect(p.institution?.institutionName, 'Green Hills Public School');
    expect(p.branch?.branchName, 'Main Campus');
    expect(p.reportsTo, isNull);
    expect(p.user?.email, 'principal@greenhills.edu.in');
  });

  test('NotificationInbox — notifications.service.js#listMyNotifications', () {
    final inbox = NotificationInbox.fromJson({
      'notifications': [
        {
          'notification_id': 'nt1',
          'user_id': 'u1',
          'institution_id': 'inst1',
          'type': 'LEAVE_REQUEST',
          'title': 'New staff leave request',
          'body': 'Ramesh Kumar applied for 2 days of Casual Leave.',
          'link': '/admin/staff-leaves',
          'is_read': false,
          'created_at': '2026-09-30T09:12:44.120Z',
        },
        {
          'notification_id': 'nt2',
          'user_id': 'u1',
          'institution_id': 'inst1',
          'type': 'SYSTEM',
          'title': 'Welcome',
          'body': null,
          'link': null,
          'is_read': true,
          'created_at': '2026-09-01T08:00:00.000Z',
        },
      ],
      'unread_count': 1,
    });

    expect(inbox.unreadCount, 1);
    expect(inbox.notifications.first.isRead, isFalse);
    expect(inbox.notifications.first.link, '/admin/staff-leaves');
    expect(inbox.notifications.last.body, isNull);
    expect(inbox.notifications.last.createdAt, DateTime.utc(2026, 9, 1, 8));
  });
}
