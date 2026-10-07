import 'package:flutter/material.dart';

import '../../../core/shell/app_nav_item.dart';

/// The librarian drawer — the web's LIBRARIAN_NAV (sidebarNav.js), one item
/// per portal page, grouped Main / Library / Reports / Account.
const librarianNavSections = <AppNavSection>[
  AppNavSection(items: [AppNavItem(label: 'Dashboard', icon: Icons.dashboard_outlined, path: '/librarian/home')]),
  AppNavSection(
    title: 'Library',
    items: [
      AppNavItem(label: 'Book Catalog', icon: Icons.menu_book_outlined, path: '/librarian/books'),
      AppNavItem(label: 'Issue Book', icon: Icons.library_add_outlined, path: '/librarian/issue'),
      AppNavItem(label: 'Issue Records', icon: Icons.swap_horiz_outlined, path: '/librarian/records'),
      AppNavItem(label: 'Fines', icon: Icons.payments_outlined, path: '/librarian/fines'),
    ],
  ),
  AppNavSection(
    title: 'Reports',
    items: [AppNavItem(label: 'Library Reports', icon: Icons.bar_chart_outlined, path: '/librarian/reports')],
  ),
  AppNavSection(
    title: 'Account',
    items: [AppNavItem(label: 'My Profile', icon: Icons.person_outline, path: '/librarian/profile')],
  ),
];
