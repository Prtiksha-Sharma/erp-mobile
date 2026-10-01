import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/driver_home_screen.dart';

/// Smallest role in the app by design — mirrors the web's single-page
/// driver-portal (profile, My Trip, route/stops with a "Reached" button).
/// One route, one tab; no hub screens needed at this scope.
class DriverModule implements RoleModule {
  @override
  AppRole get role => AppRole.driver;

  @override
  String get homePath => '/driver/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: '/driver/home',
          builder: (context, state) => const DriverHomeScreen(),
        ),
      ];

  @override
  List<NavTab> tabs() => const [
        NavTab(label: 'Home', icon: Icons.home_outlined, path: '/driver/home', moduleKey: 'dashboard'),
      ];
}
