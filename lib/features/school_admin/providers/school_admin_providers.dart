import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_lookups.dart';
import '../../../core/models/admin_management.dart' show PrincipalActivityItem;
import '../../../core/models/admin_staff.dart';
import '../../../core/models/school_admin_settings.dart';
import '../services/admin_lookups_service.dart';
import '../services/school_admin_settings_service.dart';
import '../services/staff_directory_service.dart';

/// Read providers for the School Admin portal — one per web `use*` query
/// hook in features/staff/ and features/school-admin/.
///
/// Every provider watches the logged-in userId so logging in as a different
/// admin on the same device re-fetches instead of showing the previous
/// school's cached data. Failures are thrown as the Failure itself and read
/// back through describeError(), same as every other portal.
Future<T> _staff<T>(Ref ref, Future<Result<T>> Function(StaffDirectoryService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(StaffDirectoryService()));
}

Future<T> _settings<T>(Ref ref, Future<Result<T>> Function(SchoolAdminSettingsService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(SchoolAdminSettingsService()));
}

T _unwrap<T>(Result<T> result) => switch (result) {
  Ok(:final value) => value,
  Err(:final failure) => throw failure,
};

// ── Staff directory (features/staff/hooks) ───────────────────────────────

/// useStaffList — keyed by the full filter set.
final staffListProvider = FutureProvider.family<StaffPage, StaffQuery>((ref, q) => _staff(ref, (s) => s.listStaff(q)));

final staffSummaryProvider = FutureProvider<StaffSummary>((ref) => _staff(ref, (s) => s.getSummary()));

final staffDetailProvider = FutureProvider.family<StaffMember, String>(
  (ref, staffId) => _staff(ref, (s) => s.getStaff(staffId)),
);

final staffDocumentsProvider = FutureProvider.family<List<StaffDocument>, String>(
  (ref, staffId) => _staff(ref, (s) => s.getDocuments(staffId)),
);

final staffQualificationsProvider = FutureProvider.family<List<StaffQualification>, String>(
  (ref, staffId) => _staff(ref, (s) => s.getQualifications(staffId)),
);

final staffExperienceProvider = FutureProvider.family<List<StaffExperience>, String>(
  (ref, staffId) => _staff(ref, (s) => s.getExperience(staffId)),
);

final staffSalaryStructureProvider = FutureProvider.family<SalaryStructureAssignment?, String>(
  (ref, staffId) => _staff(ref, (s) => s.getSalaryStructure(staffId)),
);

/// usePrincipalActivity — keyed by the item cap (the web asks for 20).
final principalActivityProvider = FutureProvider.family<List<PrincipalActivityItem>, int>(
  (ref, limit) => _staff(ref, (s) => s.getPrincipalActivity(limit: limit)),
);

final staffPrincipalRemarksProvider = FutureProvider.family<List<StaffPrincipalRemark>, String>(
  (ref, staffId) => _staff(ref, (s) => s.getPrincipalRemarks(staffId)),
);

final salaryTemplatesProvider = FutureProvider<List<SalaryTemplate>>(
  (ref) => _staff(ref, (s) => s.getSalaryTemplates()),
);

/// Branch pickers (useBranchOptionsForStaff).
final schoolBranchesProvider = FutureProvider<List<SchoolBranch>>((ref) => _staff(ref, (s) => s.getBranches()));

/// The "Reporting To" picker's options — the web fetches `pageSize: 200`,
/// but GET /admin/staff caps `limit` at 100 server-side, so 100 is what the
/// web actually receives too.
final reportingToOptionsProvider = FutureProvider<List<StaffMember>>(
  (ref) async => (await _staff(ref, (s) => s.listStaff(const StaffQuery(limit: 100)))).data,
);

// ── Role permissions / settings / subscription (features/school-admin) ───

/// useRoles — shared by Role Permissions and Add Staff.
final adminRolesProvider = FutureProvider<List<RoleRef>>((ref) => _settings(ref, (s) => s.getRoles()));

final permissionCatalogProvider = FutureProvider<List<PermissionModule>>(
  (ref) => _settings(ref, (s) => s.getCatalog()),
);

final rolePermissionsProvider = FutureProvider.family<RolePermissionGrants, String>(
  (ref, roleId) => _settings(ref, (s) => s.getRolePermissions(roleId)),
);

final subscriptionProvider = FutureProvider<SchoolSubscription>((ref) => _settings(ref, (s) => s.getSubscription()));

/// The school logo for this session — the web keeps it in Redux
/// (`context.logoUrl`, seeded from /schools/by-slug at login). Mobile has
/// no endpoint that returns the current logo to a School Admin, so it
/// starts unknown and holds whatever POST /admin/settings/logo returned.
final schoolLogoProvider = NotifierProvider<SchoolLogoNotifier, SchoolLogo?>(SchoolLogoNotifier.new);

class SchoolLogoNotifier extends Notifier<SchoolLogo?> {
  @override
  SchoolLogo? build() {
    ref.watch(authProvider.select((a) => a.user?.userId));
    return null;
  }

  void set(SchoolLogo? logo) => state = logo;
}

// ── Shared lookups ───────────────────────────────────────────────────────

/// Classes + sections (GET /admin/students/classes) for every area's
/// class/section filters.
final adminClassOptionsProvider = FutureProvider<List<AdminClassOption>>((ref) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await AdminLookupsService().getClasses());
});
