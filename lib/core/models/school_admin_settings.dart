import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';

part 'school_admin_settings.freezed.dart';
part 'school_admin_settings.g.dart';

/// GET /admin/roles — role-permissions.service.js#getRoles
/// (`select { role_id, role_name }`, Super Admin / School Admin excluded).
/// Shared by Role Permissions' role picker and Add Staff's role checkboxes.
@freezed
abstract class RoleRef with _$RoleRef {
  const factory RoleRef({
    @JsonKey(name: 'role_id') required String roleId,
    @JsonKey(name: 'role_name') required String roleName,
  }) = _RoleRef;

  factory RoleRef.fromJson(Map<String, dynamic> json) => _$RoleRefFromJson(json);
}

/// GET /admin/role-permissions/catalog — role-permissions.service.js
/// #getCatalog: one entry per `permissions.module`.
@freezed
abstract class PermissionModule with _$PermissionModule {
  const factory PermissionModule({
    required String module,
    @Default(<PermissionEntry>[]) List<PermissionEntry> permissions,
  }) = _PermissionModule;

  factory PermissionModule.fromJson(Map<String, dynamic> json) => _$PermissionModuleFromJson(json);
}

@freezed
abstract class PermissionEntry with _$PermissionEntry {
  const factory PermissionEntry({
    @JsonKey(name: 'permission_key') required String permissionKey,
    required String label,
  }) = _PermissionEntry;

  factory PermissionEntry.fromJson(Map<String, dynamic> json) => _$PermissionEntryFromJson(json);
}

/// GET/PUT /admin/role-permissions/:roleId — getRolePermissions /
/// saveRolePermissions, both `{ role_id, role_name, permission_keys }`.
@freezed
abstract class RolePermissionGrants with _$RolePermissionGrants {
  const factory RolePermissionGrants({
    @JsonKey(name: 'role_id') required String roleId,
    @JsonKey(name: 'role_name') String? roleName,
    @JsonKey(name: 'permission_keys') @Default(<String>[]) List<String> permissionKeys,
  }) = _RolePermissionGrants;

  factory RolePermissionGrants.fromJson(Map<String, dynamic> json) => _$RolePermissionGrantsFromJson(json);
}

/// GET /school/branches — school/branches.service.js BRANCH_SELECT
/// (ACTIVE, non-deleted branches of the caller's own institution).
@freezed
abstract class SchoolBranch with _$SchoolBranch {
  const factory SchoolBranch({
    @JsonKey(name: 'branch_id') required String branchId,
    @JsonKey(name: 'branch_name') required String branchName,
    @JsonKey(name: 'branch_code') String? branchCode,
    String? address,
  }) = _SchoolBranch;

  factory SchoolBranch.fromJson(Map<String, dynamic> json) => _$SchoolBranchFromJson(json);
}

/// GET /admin/settings/subscription — admin/settings/settings.service.js
/// #getSubscription. `subscription_plan` is null when no plan is assigned.
@freezed
abstract class SchoolSubscription with _$SchoolSubscription {
  const factory SchoolSubscription({
    @JsonKey(name: 'subscription_status') String? subscriptionStatus,
    @JsonKey(name: 'subscription_start_date') DateTime? subscriptionStartDate,
    @JsonKey(name: 'subscription_end_date') DateTime? subscriptionEndDate,
    @JsonKey(name: 'subscription_plan') SubscriptionPlan? subscriptionPlan,
  }) = _SchoolSubscription;

  factory SchoolSubscription.fromJson(Map<String, dynamic> json) => _$SchoolSubscriptionFromJson(json);
}

@freezed
abstract class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    @JsonKey(name: 'plan_name') required String planName,
    @DecimalConverter() required Decimal price,
    @JsonKey(name: 'max_students') int? maxStudents,
    @JsonKey(name: 'max_teachers') int? maxTeachers,
    @JsonKey(name: 'max_branches') int? maxBranches,
    @JsonKey(name: 'max_storage_gb') int? maxStorageGb,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanFromJson(json);
}

/// POST /admin/settings/logo — super-admin/institutions.service.js
/// #uploadLogo's `select { institution_id, institution_name, logo_url }`.
@freezed
abstract class SchoolLogo with _$SchoolLogo {
  const factory SchoolLogo({
    @JsonKey(name: 'institution_name') String? institutionName,
    @JsonKey(name: 'logo_url') String? logoUrl,
  }) = _SchoolLogo;

  factory SchoolLogo.fromJson(Map<String, dynamic> json) => _$SchoolLogoFromJson(json);
}
