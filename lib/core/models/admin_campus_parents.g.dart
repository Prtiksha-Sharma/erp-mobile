// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_campus_parents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParentAccount _$ParentAccountFromJson(Map<String, dynamic> json) =>
    _ParentAccount(
      parentAccountId: json['parent_account_id'] as String,
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
      accountStatus: json['account_status'] as String?,
      lockedUntil: json['locked_until'] == null
          ? null
          : DateTime.parse(json['locked_until'] as String),
      failedLoginAttempts: (json['failed_login_attempts'] as num?)?.toInt(),
      lastActiveAt: json['last_active_at'] == null
          ? null
          : DateTime.parse(json['last_active_at'] as String),
      name: json['name'] as String?,
      relationType: json['relation_type'] as String?,
      mobileNo: json['mobile_no'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photo_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      children:
          (json['children'] as List<dynamic>?)
              ?.map(
                (e) => ParentLinkedChild.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ParentLinkedChild>[],
      childrenCount: (json['children_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ParentAccountToJson(_ParentAccount instance) =>
    <String, dynamic>{
      'parent_account_id': instance.parentAccountId,
      'user_id': instance.userId,
      'username': instance.username,
      'account_status': instance.accountStatus,
      'locked_until': instance.lockedUntil?.toIso8601String(),
      'failed_login_attempts': instance.failedLoginAttempts,
      'last_active_at': instance.lastActiveAt?.toIso8601String(),
      'name': instance.name,
      'relation_type': instance.relationType,
      'mobile_no': instance.mobileNo,
      'email': instance.email,
      'photo_url': instance.photoUrl,
      'created_at': instance.createdAt?.toIso8601String(),
      'children': instance.children,
      'children_count': instance.childrenCount,
    };

_ParentLinkedChild _$ParentLinkedChildFromJson(Map<String, dynamic> json) =>
    _ParentLinkedChild(
      parentChildId: json['parent_child_id'] as String,
      studentId: json['student_id'] as String,
      relationType: json['relation_type'] as String?,
      admissionNo: json['admission_no'] as String?,
      studentStatus: json['student_status'] as String?,
      studentName: json['student_name'] as String?,
      className: json['class_name'] as String?,
      sectionName: json['section_name'] as String?,
    );

Map<String, dynamic> _$ParentLinkedChildToJson(_ParentLinkedChild instance) =>
    <String, dynamic>{
      'parent_child_id': instance.parentChildId,
      'student_id': instance.studentId,
      'relation_type': instance.relationType,
      'admission_no': instance.admissionNo,
      'student_status': instance.studentStatus,
      'student_name': instance.studentName,
      'class_name': instance.className,
      'section_name': instance.sectionName,
    };

_ParentAccountPage _$ParentAccountPageFromJson(Map<String, dynamic> json) =>
    _ParentAccountPage(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => ParentAccount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ParentAccount>[],
    );

Map<String, dynamic> _$ParentAccountPageToJson(_ParentAccountPage instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_ParentLoginResult _$ParentLoginResultFromJson(Map<String, dynamic> json) =>
    _ParentLoginResult(
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      linkedExisting: json['linked_existing'] as bool? ?? false,
    );

Map<String, dynamic> _$ParentLoginResultToJson(_ParentLoginResult instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'password': instance.password,
      'linked_existing': instance.linkedExisting,
    };
