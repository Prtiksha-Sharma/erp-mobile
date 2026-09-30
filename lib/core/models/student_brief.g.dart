// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_brief.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentBrief _$StudentBriefFromJson(Map<String, dynamic> json) =>
    _StudentBrief(
      studentId: json['student_id'] as String?,
      admissionNo: json['admission_no'] as String?,
      rollNo: const LooseStringConverter().fromJson(json['roll_no']),
      applicant: json['applicants'] == null
          ? null
          : ApplicantInfo.fromJson(json['applicants'] as Map<String, dynamic>),
      currentClass: json['current_class'] == null
          ? null
          : ClassRef.fromJson(json['current_class'] as Map<String, dynamic>),
      currentSection: json['current_section'] == null
          ? null
          : SectionRef.fromJson(
              json['current_section'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StudentBriefToJson(_StudentBrief instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'roll_no': const LooseStringConverter().toJson(instance.rollNo),
      'applicants': instance.applicant,
      'current_class': instance.currentClass,
      'current_section': instance.currentSection,
    };
