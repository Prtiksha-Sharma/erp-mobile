import 'package:flutter/material.dart';

import '../../../core/shell/app_nav_item.dart';

/// The student drawer's sections — every destination the former bottom
/// tabs + hub screens (student_hub_screens.dart) exposed, now surfaced
/// directly in the left drawer like Principal/Vice Principal.
const studentNavSections = <AppNavSection>[
  AppNavSection(items: [AppNavItem(label: 'Dashboard', icon: Icons.home_outlined, path: '/student/home')]),
  AppNavSection(
    title: 'Academics',
    items: [
      AppNavItem(label: 'Attendance & Leaves', icon: Icons.event_available_outlined, path: '/student/academics/attendance'),
      AppNavItem(label: 'Homework & Assignments', icon: Icons.menu_book_outlined, path: '/student/academics/homework'),
      AppNavItem(label: 'My Exams', icon: Icons.fact_check_outlined, path: '/student/academics/exams'),
      AppNavItem(label: 'My Timetable', icon: Icons.schedule_outlined, path: '/student/academics/timetable'),
    ],
  ),
  AppNavSection(
    title: 'Finance',
    items: [AppNavItem(label: 'Fees', icon: Icons.payments_outlined, path: '/student/fees')],
  ),
  AppNavSection(
    title: 'More',
    items: [
      AppNavItem(label: 'My Profile', icon: Icons.person_outline, path: '/student/more/profile'),
      AppNavItem(label: 'My Documents', icon: Icons.description_outlined, path: '/student/more/documents'),
      AppNavItem(label: 'Certificates', icon: Icons.badge_outlined, path: '/student/more/certificates'),
      AppNavItem(label: 'Medical Info', icon: Icons.monitor_heart_outlined, path: '/student/more/medical'),
      AppNavItem(label: 'Discipline Records', icon: Icons.gpp_maybe_outlined, path: '/student/more/discipline'),
      AppNavItem(label: 'Promotion History', icon: Icons.trending_up, path: '/student/more/promotion-history'),
      AppNavItem(label: 'My Transport', icon: Icons.directions_bus_outlined, path: '/student/more/transport'),
    ],
  ),
];
