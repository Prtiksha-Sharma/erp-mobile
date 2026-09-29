// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Child _$ChildFromJson(Map<String, dynamic> json) => _Child(
  studentId: json['student_id'] as String,
  admissionNo: json['admission_no'] as String?,
  studentStatus: json['student_status'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  className: json['class_name'] as String?,
  sectionName: json['section_name'] as String?,
);

Map<String, dynamic> _$ChildToJson(_Child instance) => <String, dynamic>{
  'student_id': instance.studentId,
  'admission_no': instance.admissionNo,
  'student_status': instance.studentStatus,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'class_name': instance.className,
  'section_name': instance.sectionName,
};
