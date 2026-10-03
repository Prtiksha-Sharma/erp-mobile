import 'package:flutter/material.dart';

import '../../../core/shell/app_nav_item.dart';

/// The parent drawer's sections — every destination the former bottom
/// tabs + hub screens (parent_academics_hub_screen.dart,
/// parent_more_hub_screen.dart) exposed, now surfaced directly in the left
/// drawer like Principal/Vice Principal.
const parentNavSections = <AppNavSection>[
  AppNavSection(items: [AppNavItem(label: 'Dashboard', icon: Icons.home_outlined, path: '/parent/home')]),
  AppNavSection(
    title: 'Academics',
    items: [
      AppNavItem(label: 'Attendance', icon: Icons.event_available_outlined, path: '/parent/academics/attendance'),
      AppNavItem(label: 'Homework', icon: Icons.menu_book_outlined, path: '/parent/academics/homework'),
      AppNavItem(label: 'Timetable', icon: Icons.schedule_outlined, path: '/parent/academics/timetable'),
      AppNavItem(label: 'Teachers', icon: Icons.person_outline, path: '/parent/academics/teachers'),
    ],
  ),
  AppNavSection(
    title: 'Finance',
    items: [AppNavItem(label: 'Fees', icon: Icons.payments_outlined, path: '/parent/fees')],
  ),
  AppNavSection(
    title: 'More',
    items: [
      AppNavItem(label: 'School Updates', icon: Icons.campaign_outlined, path: '/parent/more/school-updates'),
      AppNavItem(label: 'Leaves', icon: Icons.beach_access_outlined, path: '/parent/more/leaves'),
      AppNavItem(label: 'Transport', icon: Icons.directions_bus_outlined, path: '/parent/more/transport'),
      AppNavItem(label: 'Grievances', icon: Icons.report_problem_outlined, path: '/parent/more/grievances'),
      AppNavItem(label: 'Messages', icon: Icons.chat_bubble_outline, path: '/parent/more/messages'),
    ],
  ),
];
