import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';
import 'staff_role_list_screens.dart';

/// Reports, Teacher Management, Principal / Vice Principal Management — web features/reports, teachers, principals, vice-principals.
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
List<RouteBase> managementRoutes() => [
  notOnMobileRoute(SchoolAdminPaths.reports, 'Reports', Icons.bar_chart),
  notOnMobileRoute(SchoolAdminPaths.teacherManagement, 'Teacher Management', Icons.school_outlined),
  GoRoute(path: SchoolAdminPaths.principalManagement, builder: (_, _) => const RoleStaffListScreen.principals()),
  notOnMobileRoute(SchoolAdminPaths.vicePrincipalManagement, 'Vice Principal Management', Icons.shield_outlined),
];
