import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';
import 'students_list_screen.dart';

/// Students — web features/students (StudentsListPage, StudentProfilePage).
/// The list is ported; a row opens the student profile, which still routes
/// to [SchoolAdminNotOnMobileScreen].
List<RouteBase> studentsRoutes() => [
  GoRoute(path: SchoolAdminPaths.students, builder: (_, _) => const StudentsListScreen()),
  GoRoute(
    path: '${SchoolAdminPaths.students}/:id',
    builder: (_, _) => const SchoolAdminNotOnMobileScreen(label: 'Student Profile', icon: Icons.person_outline),
  ),
];
