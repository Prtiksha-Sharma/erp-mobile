// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherSummary _$TeacherSummaryFromJson(Map<String, dynamic> json) =>
    _TeacherSummary(
      staffId: json['staff_id'] as String,
      fullName: json['full_name'] as String,
      employeeCode: json['employee_code'] as String?,
      designation: json['designation'] as String?,
      contactNumber: json['contact_number'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
    );

Map<String, dynamic> _$TeacherSummaryToJson(_TeacherSummary instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'designation': instance.designation,
      'contact_number': instance.contactNumber,
      'profile_photo_url': instance.profilePhotoUrl,
    };

_ChildTeachers _$ChildTeachersFromJson(Map<String, dynamic> json) =>
    _ChildTeachers(
      classTeacher: json['class_teacher'] == null
          ? null
          : TeacherSummary.fromJson(
              json['class_teacher'] as Map<String, dynamic>,
            ),
      subjectTeachers: (json['subject_teachers'] as List<dynamic>)
          .map((e) => TeacherSummary.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChildTeachersToJson(_ChildTeachers instance) =>
    <String, dynamic>{
      'class_teacher': instance.classTeacher,
      'subject_teachers': instance.subjectTeachers,
    };
