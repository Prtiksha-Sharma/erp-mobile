import 'package:flutter/material.dart';

import '../../../core/shell/app_nav_item.dart';

/// The hostel warden drawer — the web's HOSTEL_WARDEN_NAV (sidebarNav.js),
/// one item per portal page. The web portal has no profile page for this
/// role, so neither does mobile.
const hostelWardenNavSections = <AppNavSection>[
  AppNavSection(items: [AppNavItem(label: 'Dashboard', icon: Icons.dashboard_outlined, path: '/hostel/home')]),
  AppNavSection(
    title: 'Daily',
    items: [
      AppNavItem(label: 'Hostel Attendance', icon: Icons.fact_check_outlined, path: '/hostel/attendance'),
      AppNavItem(label: 'Visitor Records', icon: Icons.groups_outlined, path: '/hostel/visitors'),
      AppNavItem(label: 'Mess Management', icon: Icons.restaurant_menu_outlined, path: '/hostel/mess'),
    ],
  ),
  AppNavSection(
    title: 'Hostel',
    items: [
      AppNavItem(label: 'Hostel Residents', icon: Icons.badge_outlined, path: '/hostel/residents'),
      AppNavItem(label: 'Room Allocation', icon: Icons.bed_outlined, path: '/hostel/allocations'),
      AppNavItem(label: 'Rooms Management', icon: Icons.apartment_outlined, path: '/hostel/rooms'),
    ],
  ),
];
