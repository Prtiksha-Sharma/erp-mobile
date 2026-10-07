import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Subjects, Subject Teachers, Timetable, Syllabus, Lesson Plans, Homework & Assignments — web features/academics/*, features/homework.
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
List<RouteBase> academicsRoutes() => [
  notOnMobileRoute(SchoolAdminPaths.subjects, 'Subjects', Icons.school_outlined),
  notOnMobileRoute(SchoolAdminPaths.subjectTeachers, 'Subject Teachers', Icons.school_outlined),
  notOnMobileRoute(SchoolAdminPaths.timetable, 'Timetable', Icons.schedule_outlined),
  notOnMobileRoute(SchoolAdminPaths.syllabus, 'Syllabus', Icons.menu_book_outlined),
  notOnMobileRoute(SchoolAdminPaths.lessonPlans, 'Lesson Plans', Icons.edit_note_outlined),
  notOnMobileRoute(SchoolAdminPaths.homework, 'Homework & Assignments', Icons.bookmark_border),
];
