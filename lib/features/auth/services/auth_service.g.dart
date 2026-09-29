// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginUser _$LoginUserFromJson(Map<String, dynamic> json) => _LoginUser(
  userId: json['userId'] as String,
  username: json['username'] as String,
  email: json['email'] as String?,
  mobileNo: json['mobileNo'] as String?,
  fullName: json['fullName'] as String?,
  roles: (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$LoginUserToJson(_LoginUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'mobileNo': instance.mobileNo,
      'fullName': instance.fullName,
      'roles': instance.roles,
    };

_LoginResult _$LoginResultFromJson(Map<String, dynamic> json) => _LoginResult(
  accessToken: json['accessToken'] as String,
  user: LoginUser.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginResultToJson(_LoginResult instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'user': instance.user,
    };
