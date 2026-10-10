import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../hostel_oversight/hostel_oversight.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Parents, Library Oversight, Reception Activity Oversight, Transport, Hostel — web features/parents, library, reception, transport, hostel.
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
/// Hostel is the shared hostel_oversight feature (also used by Vice
/// Principal), here with School Admin's write actions enabled.
List<RouteBase> campusRoutes() => [
  notOnMobileRoute(SchoolAdminPaths.parents, 'Parents', Icons.contact_page_outlined),
  notOnMobileRoute(SchoolAdminPaths.library, 'Library Oversight', Icons.local_library_outlined),
  notOnMobileRoute(SchoolAdminPaths.receptionSummary, 'Activity Oversight', Icons.how_to_reg_outlined),
  notOnMobileRoute(SchoolAdminPaths.transport, 'Transport', Icons.directions_bus_outlined),
  ...hostelOversightRoutes(
    HostelOversightConfig(
      basePath: SchoolAdminPaths.hostel,
      canManage: true,
      frame: (context, {required title, required body, floatingActionButton}) =>
          SchoolAdminPageScaffold(title: title, body: body, floatingActionButton: floatingActionButton),
    ),
  ),
];
