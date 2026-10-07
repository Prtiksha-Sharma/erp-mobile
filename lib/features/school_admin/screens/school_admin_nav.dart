import 'package:flutter/material.dart';

import '../../../core/shell/app_nav_item.dart';

/// Every mobile path of the School Admin portal, one per web ROUTES.ADMIN
/// page reachable from SCHOOL_ADMIN_NAV (web shared/constants/routes.js),
/// re-rooted from `/admin` to `/school-admin`. The staff-roster pages keep
/// their own top-level paths (not `/school-admin/staff/teachers`) because
/// the drawer highlights an entry for every sub-path — what the web avoids
/// with `end: true` on Staff.
abstract final class SchoolAdminPaths {
  static const dashboard = '/school-admin/dashboard';

  // Admissions (web features/admissions)
  static const admissions = '/school-admin/admissions';
  static const admissionsIncomplete = '/school-admin/admissions/incomplete';
  static const admissionsPaymentVerify = '/school-admin/admissions/payment-verify';
  static const admissionsDocumentVerify = '/school-admin/admissions/document-verify';
  static const admissionsApplications = '/school-admin/admissions/applications';
  static const admissionsInterview = '/school-admin/admissions/interview';
  static const admissionsQualified = '/school-admin/admissions/qualified';
  static const admissionsFinalList = '/school-admin/admissions/final-list';
  static const admissionsRejected = '/school-admin/admissions/rejected';
  static const admissionsRegistrationFee = '/school-admin/admissions/registration-fee';
  static const admissionsNew = '/school-admin/admissions/new-application';
  static const admissionsPresent = '/school-admin/admissions/present';
  static const admissionsApplicants = '/school-admin/admissions/applicants';

  static const students = '/school-admin/students';
  static const staff = '/school-admin/staff';
  static const principalManagement = '/school-admin/principal-management';
  static const vicePrincipalManagement = '/school-admin/vice-principal-management';
  static const parents = '/school-admin/parents';
  static const teachers = '/school-admin/teachers';
  static const teacherManagement = '/school-admin/class-teacher-assignments';
  static const subjectTeachers = '/school-admin/academics/subject-teachers';
  static const attendanceReport = '/school-admin/reports/attendance';
  static const staffAttendance = '/school-admin/staff-attendance';
  static const leaves = '/school-admin/leaves';
  static const staffLeaves = '/school-admin/staff-leaves';
  static const discipline = '/school-admin/discipline';
  static const exams = '/school-admin/exams';
  static const homework = '/school-admin/homework';
  static const events = '/school-admin/events';
  static const activities = '/school-admin/activities';
  static const subjects = '/school-admin/academics/subjects';
  static const timetable = '/school-admin/academics/timetable';
  static const syllabus = '/school-admin/academics/syllabus';
  static const lessonPlans = '/school-admin/academics/lesson-plans';

  static const fees = '/school-admin/fees';

  static const librarians = '/school-admin/librarians';
  static const library = '/school-admin/library';
  static const receptionists = '/school-admin/receptionists';
  static const receptionSummary = '/school-admin/reception/summary';
  static const transport = '/school-admin/transport';
  static const hostel = '/school-admin/hostel';
  static const hostelHostels = '/school-admin/hostel/hostels';
  static const hostelRooms = '/school-admin/hostel/rooms';
  static const hostelStudents = '/school-admin/hostel/students';
  static const hostelWardens = '/school-admin/hostel/wardens';
  static const hostelReports = '/school-admin/hostel/reports';

  static const hr = '/school-admin/hr';

  static const reports = '/school-admin/reports';
  static const rolePermissions = '/school-admin/role-permissions';
  static const activityLogs = '/school-admin/activity-logs';
  static const settings = '/school-admin/settings';
  static const subscription = '/school-admin/subscription';
}

AppNavItem _item(String label, IconData icon, String path, String webPath) =>
    AppNavItem(label: label, icon: icon, path: path, webPath: webPath);

AppNavItem _child(String label, String path, String webPath) =>
    AppNavItem(label: label, icon: Icons.circle_outlined, path: path, webPath: webPath);

/// The School Admin drawer — SCHOOL_ADMIN_NAV (web sidebarNav.js) 1:1:
/// every entry, in the web's order, under the web's GROUP_LABELS, with the
/// web's accordion parents (New Applicant / Students, Principal, Teachers,
/// Attendance, Leaves, Library, Reception, Hostel) as expandable entries.
typedef _P = SchoolAdminPaths;
final schoolAdminNavSections = <AppNavSection>[
  AppNavSection(items: [_item('Dashboard', Icons.dashboard_outlined, _P.dashboard, '/admin/dashboard')]),
  AppNavSection(
    title: 'Academics',
    items: [
      AppNavItem(
        label: 'New Applicant / Students',
        icon: Icons.checklist_outlined,
        path: _P.admissions,
        webPath: '/admin/admissions',
        children: [
          _child('Incomplete Online Applications', _P.admissionsIncomplete, '/admin/admissions/incomplete'),
          _child(
            'Online Applications (Payment Verify)',
            _P.admissionsPaymentVerify,
            '/admin/admissions/payment-verify',
          ),
          _child('Verify Documents', _P.admissionsDocumentVerify, '/admin/admissions/document-verify'),
          _child('Online Applications', _P.admissionsApplications, '/admin/admissions/applications'),
          _child('Select Applicants for Interview', _P.admissionsInterview, '/admin/admissions/interview'),
          _child('Select Qualified Applicants', _P.admissionsQualified, '/admin/admissions/qualified'),
          _child('List of Final Applicants', _P.admissionsFinalList, '/admin/admissions/final-list'),
          _child('Rejected Applicants', _P.admissionsRejected, '/admin/admissions/rejected'),
          _child('Registration Fee Settings', _P.admissionsRegistrationFee, '/admin/admissions/registration-fee'),
        ],
      ),
      _item('Students', Icons.groups_outlined, _P.students, '/admin/students'),
      _item('Staff', Icons.manage_accounts_outlined, _P.staff, '/admin/staff'),
      AppNavItem(
        label: 'Principal',
        icon: Icons.shield_outlined,
        path: _P.principalManagement,
        webPath: '/admin/principal-management',
        children: [
          _child('Principal Management', _P.principalManagement, '/admin/principal-management'),
          _child('Vice Principal Management', _P.vicePrincipalManagement, '/admin/vice-principal-management'),
        ],
      ),
      _item('Parents', Icons.contact_page_outlined, _P.parents, '/admin/parents'),
      AppNavItem(
        label: 'Teachers',
        icon: Icons.school_outlined,
        path: _P.teachers,
        webPath: '/admin/staff/teachers',
        children: [
          _child('All Teachers', _P.teachers, '/admin/staff/teachers'),
          _child('Teacher Management', _P.teacherManagement, '/admin/class-teacher-assignments'),
          _child('Subject Teachers', _P.subjectTeachers, '/admin/academics/subject-teachers'),
        ],
      ),
      AppNavItem(
        label: 'Attendance',
        icon: Icons.fact_check_outlined,
        path: _P.attendanceReport,
        webPath: '/admin/reports/attendance',
        children: [
          _child('Student Attendance', _P.attendanceReport, '/admin/reports/attendance'),
          _child('Staff Attendance', _P.staffAttendance, '/admin/staff/attendance'),
        ],
      ),
      AppNavItem(
        label: 'Leaves',
        icon: Icons.event_busy_outlined,
        path: _P.leaves,
        webPath: '/admin/leaves',
        children: [
          _child('Student Leaves', _P.leaves, '/admin/leaves'),
          _child('Staff Leaves', _P.staffLeaves, '/admin/staff-leaves'),
        ],
      ),
      _item('Discipline Records', Icons.report_outlined, _P.discipline, '/admin/discipline'),
      _item('Exams', Icons.description_outlined, _P.exams, '/admin/exams'),
      _item('Homework & Assignments', Icons.bookmark_border, _P.homework, '/admin/homework'),
      _item('Events', Icons.calendar_month_outlined, _P.events, '/admin/events'),
      _item('Activities', Icons.auto_awesome_outlined, _P.activities, '/admin/activities'),
      _item('Subjects', Icons.school_outlined, _P.subjects, '/admin/academics/subjects'),
      _item('Timetable', Icons.schedule_outlined, _P.timetable, '/admin/academics/timetable'),
      _item('Syllabus', Icons.menu_book_outlined, _P.syllabus, '/admin/academics/syllabus'),
      _item('Lesson Plans', Icons.edit_note_outlined, _P.lessonPlans, '/admin/academics/lesson-plans'),
    ],
  ),
  AppNavSection(title: 'Finance', items: [_item('Fees', Icons.currency_rupee, _P.fees, '/admin/fees')]),
  AppNavSection(
    title: 'Support Services',
    items: [
      AppNavItem(
        label: 'Library',
        icon: Icons.local_library_outlined,
        path: _P.librarians,
        webPath: '/admin/staff/librarians',
        children: [
          _child('Librarians', _P.librarians, '/admin/staff/librarians'),
          _child('Library Oversight', _P.library, '/admin/library'),
        ],
      ),
      AppNavItem(
        label: 'Reception',
        icon: Icons.how_to_reg_outlined,
        path: _P.receptionists,
        webPath: '/admin/staff/receptionists',
        children: [
          _child('Receptionists', _P.receptionists, '/admin/staff/receptionists'),
          _child('Activity Oversight', _P.receptionSummary, '/admin/reception/summary'),
        ],
      ),
      _item('Transport', Icons.directions_bus_outlined, _P.transport, '/admin/transport'),
      AppNavItem(
        label: 'Hostel',
        icon: Icons.home_outlined,
        path: _P.hostel,
        webPath: '/admin/hostel',
        children: [
          _child('Dashboard', _P.hostel, '/admin/hostel'),
          _child('Hostels', _P.hostelHostels, '/admin/hostel/hostels'),
          _child('Rooms', _P.hostelRooms, '/admin/hostel/rooms'),
          _child('Students', _P.hostelStudents, '/admin/hostel/students'),
          _child('Wardens', _P.hostelWardens, '/admin/hostel/wardens'),
          _child('Reports', _P.hostelReports, '/admin/hostel/reports'),
        ],
      ),
    ],
  ),
  AppNavSection(title: 'Human Resources', items: [_item('HR & Payroll', Icons.work_outline, _P.hr, '/admin/hr')]),
  AppNavSection(
    title: 'Management',
    items: [
      _item('Reports', Icons.bar_chart, _P.reports, '/admin/reports'),
      _item('Role Permissions', Icons.verified_user_outlined, _P.rolePermissions, '/admin/role-permissions'),
      _item('Activity Logs', Icons.timeline, _P.activityLogs, '/admin/activity-logs'),
      _item('Settings', Icons.settings_outlined, _P.settings, '/admin/settings'),
      _item('Subscription', Icons.credit_card_outlined, _P.subscription, '/admin/subscription'),
    ],
  ),
];
