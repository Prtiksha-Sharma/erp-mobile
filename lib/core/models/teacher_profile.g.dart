// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherEmailRef _$TeacherEmailRefFromJson(Map<String, dynamic> json) =>
    _TeacherEmailRef(email: json['email'] as String);

Map<String, dynamic> _$TeacherEmailRefToJson(_TeacherEmailRef instance) =>
    <String, dynamic>{'email': instance.email};

_TeacherProfile _$TeacherProfileFromJson(Map<String, dynamic> json) =>
    _TeacherProfile(
      staffId: json['staff_id'] as String,
      fullName: json['full_name'] as String,
      designation: json['designation'] as String?,
      department: json['department'] as String?,
      contactNumber: json['contact_number'] as String?,
      qualification: json['qualification'] as String?,
      dateOfJoining: json['date_of_joining'] == null
          ? null
          : DateTime.parse(json['date_of_joining'] as String),
      gender: json['gender'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      emailRef: json['users'] == null
          ? null
          : TeacherEmailRef.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TeacherProfileToJson(_TeacherProfile instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'designation': instance.designation,
      'department': instance.department,
      'contact_number': instance.contactNumber,
      'qualification': instance.qualification,
      'date_of_joining': instance.dateOfJoining?.toIso8601String(),
      'gender': instance.gender,
      'profile_photo_url': instance.profilePhotoUrl,
      'users': instance.emailRef,
    };
