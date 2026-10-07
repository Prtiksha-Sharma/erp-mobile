import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Parents, Library Oversight, Reception Activity Oversight, Transport, Hostel — web features/parents, library, reception, transport, hostel.
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
List<RouteBase> campusRoutes() => [
  notOnMobileRoute(SchoolAdminPaths.parents, 'Parents', Icons.contact_page_outlined),
  notOnMobileRoute(SchoolAdminPaths.library, 'Library Oversight', Icons.local_library_outlined),
  notOnMobileRoute(SchoolAdminPaths.receptionSummary, 'Activity Oversight', Icons.how_to_reg_outlined),
  notOnMobileRoute(SchoolAdminPaths.transport, 'Transport', Icons.directions_bus_outlined),
  notOnMobileRoute(SchoolAdminPaths.hostel, 'Hostel', Icons.home_outlined),
  notOnMobileRoute(SchoolAdminPaths.hostelHostels, 'Hostels', Icons.home_outlined),
  notOnMobileRoute(SchoolAdminPaths.hostelRooms, 'Rooms', Icons.home_outlined),
  notOnMobileRoute(SchoolAdminPaths.hostelStudents, 'Hostel Students', Icons.home_outlined),
  notOnMobileRoute(SchoolAdminPaths.hostelWardens, 'Wardens', Icons.home_outlined),
  notOnMobileRoute(SchoolAdminPaths.hostelReports, 'Hostel Reports', Icons.home_outlined),
];
