// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_admin_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoleRef _$RoleRefFromJson(Map<String, dynamic> json) => _RoleRef(
  roleId: json['role_id'] as String,
  roleName: json['role_name'] as String,
);

Map<String, dynamic> _$RoleRefToJson(_RoleRef instance) => <String, dynamic>{
  'role_id': instance.roleId,
  'role_name': instance.roleName,
};

_PermissionModule _$PermissionModuleFromJson(Map<String, dynamic> json) =>
    _PermissionModule(
      module: json['module'] as String,
      permissions:
          (json['permissions'] as List<dynamic>?)
              ?.map((e) => PermissionEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PermissionEntry>[],
    );

Map<String, dynamic> _$PermissionModuleToJson(_PermissionModule instance) =>
    <String, dynamic>{
      'module': instance.module,
      'permissions': instance.permissions,
    };

_PermissionEntry _$PermissionEntryFromJson(Map<String, dynamic> json) =>
    _PermissionEntry(
      permissionKey: json['permission_key'] as String,
      label: json['label'] as String,
    );

Map<String, dynamic> _$PermissionEntryToJson(_PermissionEntry instance) =>
    <String, dynamic>{
      'permission_key': instance.permissionKey,
      'label': instance.label,
    };

_RolePermissionGrants _$RolePermissionGrantsFromJson(
  Map<String, dynamic> json,
) => _RolePermissionGrants(
  roleId: json['role_id'] as String,
  roleName: json['role_name'] as String?,
  permissionKeys:
      (json['permission_keys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
);

Map<String, dynamic> _$RolePermissionGrantsToJson(
  _RolePermissionGrants instance,
) => <String, dynamic>{
  'role_id': instance.roleId,
  'role_name': instance.roleName,
  'permission_keys': instance.permissionKeys,
};

_SchoolBranch _$SchoolBranchFromJson(Map<String, dynamic> json) =>
    _SchoolBranch(
      branchId: json['branch_id'] as String,
      branchName: json['branch_name'] as String,
      branchCode: json['branch_code'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$SchoolBranchToJson(_SchoolBranch instance) =>
    <String, dynamic>{
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
      'branch_code': instance.branchCode,
      'address': instance.address,
    };

_SchoolSubscription _$SchoolSubscriptionFromJson(Map<String, dynamic> json) =>
    _SchoolSubscription(
      subscriptionStatus: json['subscription_status'] as String?,
      subscriptionStartDate: json['subscription_start_date'] == null
          ? null
          : DateTime.parse(json['subscription_start_date'] as String),
      subscriptionEndDate: json['subscription_end_date'] == null
          ? null
          : DateTime.parse(json['subscription_end_date'] as String),
      subscriptionPlan: json['subscription_plan'] == null
          ? null
          : SubscriptionPlan.fromJson(
              json['subscription_plan'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SchoolSubscriptionToJson(
  _SchoolSubscription instance,
) => <String, dynamic>{
  'subscription_status': instance.subscriptionStatus,
  'subscription_start_date': instance.subscriptionStartDate?.toIso8601String(),
  'subscription_end_date': instance.subscriptionEndDate?.toIso8601String(),
  'subscription_plan': instance.subscriptionPlan,
};

_SubscriptionPlan _$SubscriptionPlanFromJson(Map<String, dynamic> json) =>
    _SubscriptionPlan(
      planName: json['plan_name'] as String,
      price: const DecimalConverter().fromJson(json['price']),
      maxStudents: (json['max_students'] as num?)?.toInt(),
      maxTeachers: (json['max_teachers'] as num?)?.toInt(),
      maxBranches: (json['max_branches'] as num?)?.toInt(),
      maxStorageGb: (json['max_storage_gb'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SubscriptionPlanToJson(_SubscriptionPlan instance) =>
    <String, dynamic>{
      'plan_name': instance.planName,
      'price': const DecimalConverter().toJson(instance.price),
      'max_students': instance.maxStudents,
      'max_teachers': instance.maxTeachers,
      'max_branches': instance.maxBranches,
      'max_storage_gb': instance.maxStorageGb,
    };

_SchoolLogo _$SchoolLogoFromJson(Map<String, dynamic> json) => _SchoolLogo(
  institutionName: json['institution_name'] as String?,
  logoUrl: json['logo_url'] as String?,
);

Map<String, dynamic> _$SchoolLogoToJson(_SchoolLogo instance) =>
    <String, dynamic>{
      'institution_name': instance.institutionName,
      'logo_url': instance.logoUrl,
    };
