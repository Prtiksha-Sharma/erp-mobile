import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Exams, Discipline Records, Student/Staff Leaves, Events, Activities — web features/exams, discipline, leaves, events, activities.
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
List<RouteBase> schoolLifeRoutes() => [
  notOnMobileRoute(SchoolAdminPaths.exams, 'Exams', Icons.description_outlined),
  notOnMobileRoute(SchoolAdminPaths.discipline, 'Discipline Records', Icons.report_outlined),
  notOnMobileRoute(SchoolAdminPaths.leaves, 'Student Leaves', Icons.event_busy_outlined),
  notOnMobileRoute(SchoolAdminPaths.staffLeaves, 'Staff Leaves', Icons.event_busy_outlined),
  notOnMobileRoute(SchoolAdminPaths.events, 'Events', Icons.calendar_month_outlined),
  notOnMobileRoute(SchoolAdminPaths.activities, 'Activities', Icons.auto_awesome_outlined),
];
