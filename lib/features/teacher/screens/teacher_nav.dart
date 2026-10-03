import 'package:flutter/material.dart';

import '../../../core/shell/app_nav_item.dart';

/// The teacher drawer's sections — every destination the former bottom
/// tabs + hub screens (teacher_hub_screens.dart) exposed, now surfaced
/// directly in the left drawer like Principal/Vice Principal.
const teacherNavSections = <AppNavSection>[
  AppNavSection(items: [AppNavItem(label: 'Dashboard', icon: Icons.home_outlined, path: '/teacher/home')]),
  AppNavSection(
    title: 'Classroom',
    items: [
      AppNavItem(label: 'Attendance', icon: Icons.fact_check_outlined, path: '/teacher/classroom/attendance'),
      AppNavItem(label: 'Leave Requests', icon: Icons.event_busy_outlined, path: '/teacher/classroom/leave-requests'),
      AppNavItem(label: 'My Class', icon: Icons.groups_outlined, path: '/teacher/classroom/my-class'),
      AppNavItem(label: 'Marks Entry', icon: Icons.assignment_turned_in_outlined, path: '/teacher/classroom/marks'),
      AppNavItem(label: 'Homework', icon: Icons.bookmark_border, path: '/teacher/classroom/homework'),
    ],
  ),
  AppNavSection(
    title: 'Academics',
    items: [
      AppNavItem(label: 'My Subjects', icon: Icons.school_outlined, path: '/teacher/academics/subjects'),
      AppNavItem(label: 'My Timetable', icon: Icons.schedule_outlined, path: '/teacher/academics/timetable'),
      AppNavItem(label: 'Lesson Planning', icon: Icons.edit_note_outlined, path: '/teacher/academics/lesson-plans'),
      AppNavItem(label: 'My Syllabus', icon: Icons.menu_book_outlined, path: '/teacher/academics/syllabus'),
    ],
  ),
  AppNavSection(
    items: [AppNavItem(label: 'Messages', icon: Icons.forum_outlined, path: '/teacher/messages')],
  ),
  AppNavSection(
    title: 'More',
    items: [
      AppNavItem(label: 'My Profile', icon: Icons.person_outline, path: '/teacher/more/profile'),
      AppNavItem(label: 'My Attendance', icon: Icons.event_available_outlined, path: '/teacher/more/my-attendance'),
      AppNavItem(label: 'My Leaves', icon: Icons.event_busy_outlined, path: '/teacher/more/my-leaves'),
      AppNavItem(label: 'Notices', icon: Icons.campaign_outlined, path: '/teacher/more/notices'),
      AppNavItem(label: 'Events', icon: Icons.calendar_month_outlined, path: '/teacher/more/events'),
      AppNavItem(label: 'Activities', icon: Icons.auto_awesome_outlined, path: '/teacher/more/activities'),
    ],
  ),
];
