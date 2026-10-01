// Parse tests for the vice-principal-portal models, using payloads shaped
// exactly like the backend
// (edusoft_backend/src/features/vice-principal/*.service.js) — see each
// model's doc comment for its source.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/models/vice_principal_dashboard.dart';

void main() {
  test('VicePrincipalDashboard — dashboard.service.js#getViceprincipalDashboard', () {
    final d = VicePrincipalDashboard.fromJson({
      'total_students': 812,
      'total_teachers': 46,
      'student_attendance_pct': 93,
      'today_teacher_attendance': {'total': 46, 'present': 41},
      'pending_leave_requests': {'staff': 4, 'student': 11},
      'upcoming_exams': [
        {
          'exam_id': 'ex1',
          'exam_name': 'Half Yearly Examination',
          'start_date': '2026-10-12T00:00:00.000Z',
          'exam_type': 'Term',
        },
        {'exam_id': 'ex2', 'exam_name': 'Unit Test 3', 'start_date': '2026-11-02T00:00:00.000Z', 'exam_type': null},
      ],
      'upcoming_events': [
        {
          'event_id': 'ev1',
          'event_name': 'Annual Sports Day',
          'description': 'Track and field events',
          'event_date': '2026-10-20T00:00:00.000Z',
        },
      ],
      'pending_homework': 27,
      'recent_announcements': [
        {
          'notice_id': 'n1',
          'title': 'PTM on Saturday',
          'description': null,
          'notice_date': '2026-09-29T00:00:00.000Z',
          'attachment_url': null,
        },
      ],
    });

    expect(d.totalStudents, 812);
    expect(d.totalTeachers, 46);
    expect(d.studentAttendancePct, 93.0);
    expect(d.todayTeacherAttendance?.present, 41);
    expect(d.todayTeacherAttendance?.total, 46);
    expect(d.pendingLeaveRequests?.staff, 4);
    expect(d.pendingLeaveRequests?.student, 11);
    expect(d.upcomingExams.first.startDate, DateTime.utc(2026, 10, 12));
    expect(d.upcomingExams.last.examType, isNull);
    expect(d.upcomingEvents.single.eventName, 'Annual Sports Day');
    expect(d.pendingHomework, 27);
    expect(d.recentAnnouncements.single.title, 'PTM on Saturday');
  });

  test('VicePrincipalDashboard — empty school (nothing marked, no session)', () {
    final d = VicePrincipalDashboard.fromJson({
      'total_students': 0,
      'total_teachers': 0,
      'student_attendance_pct': null,
      'today_teacher_attendance': {'total': 0, 'present': 0},
      'pending_leave_requests': {'staff': 0, 'student': 0},
      'upcoming_exams': <dynamic>[],
      'upcoming_events': <dynamic>[],
      'pending_homework': 0,
      'recent_announcements': <dynamic>[],
    });

    expect(d.studentAttendancePct, isNull);
    expect(d.upcomingExams, isEmpty);
    expect(d.upcomingEvents, isEmpty);
    expect(d.recentAnnouncements, isEmpty);
  });

  test('StaffProfile — vice-principal/profile.service.js#getMyProfile select', () {
    final p = StaffProfile.fromJson({
      'staff_id': 'vp1',
      'employee_code': 'GHPS-EMP-0002',
      'full_name': 'Mr. Arvind Rao',
      'designation': 'Vice Principal',
      'department': 'Administration',
      'date_of_joining': '2019-06-01T00:00:00.000Z',
      'date_of_birth': '1980-03-14T00:00:00.000Z',
      'gender': 'Male',
      'contact_number': '9822099999',
      'address': '12 MG Road, Pune',
      'qualification': 'M.Ed.',
      'employment_status': 'ACTIVE',
      'profile_photo_url': 'https://res.cloudinary.com/demo/image/upload/staff-photos/vp1/photo_1.jpg',
      'institution': {'institution_id': 'inst1', 'institution_name': 'Green Hills Public School'},
      'branch': {'branch_id': 'b1', 'branch_name': 'Main Campus'},
      'reports_to': {'staff_id': 'pr1', 'full_name': 'Dr. Meera Nair', 'designation': 'Principal'},
      'users': {'username': 'GHPS-EMP-0002', 'email': 'vp@greenhills.edu.in', 'mobile_no': '9822099999'},
    });

    expect(p.fullName, 'Mr. Arvind Rao');
    expect(p.designation, 'Vice Principal');
    expect(p.institution?.institutionName, 'Green Hills Public School');
    expect(p.reportsTo?.fullName, 'Dr. Meera Nair');
    expect(p.user?.email, 'vp@greenhills.edu.in');
  });
}
