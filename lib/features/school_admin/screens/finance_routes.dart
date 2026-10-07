import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Fees, HR & Payroll — web features/fees, features/payroll (PayrollPage at /admin/hr).
/// Every page not ported yet routes to [SchoolAdminNotOnMobileScreen].
List<RouteBase> financeRoutes() => [
  notOnMobileRoute(SchoolAdminPaths.fees, 'Fees', Icons.currency_rupee),
  notOnMobileRoute(SchoolAdminPaths.hr, 'HR & Payroll', Icons.work_outline),
];
