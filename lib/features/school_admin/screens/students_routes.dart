import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Students — web features/students (StudentsListPage, StudentProfilePage).
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
List<RouteBase> studentsRoutes() => [notOnMobileRoute(SchoolAdminPaths.students, 'Students', Icons.groups_outlined)];
