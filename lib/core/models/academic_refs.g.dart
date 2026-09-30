// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_refs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassRef _$ClassRefFromJson(Map<String, dynamic> json) =>
    _ClassRef(className: json['class_name'] as String?);

Map<String, dynamic> _$ClassRefToJson(_ClassRef instance) => <String, dynamic>{
  'class_name': instance.className,
};

_SectionRef _$SectionRefFromJson(Map<String, dynamic> json) =>
    _SectionRef(sectionName: json['section_name'] as String?);

Map<String, dynamic> _$SectionRefToJson(_SectionRef instance) =>
    <String, dynamic>{'section_name': instance.sectionName};

_SessionRef _$SessionRefFromJson(Map<String, dynamic> json) =>
    _SessionRef(sessionName: json['session_name'] as String?);

Map<String, dynamic> _$SessionRefToJson(_SessionRef instance) =>
    <String, dynamic>{'session_name': instance.sessionName};

_InstitutionRef _$InstitutionRefFromJson(Map<String, dynamic> json) =>
    _InstitutionRef(institutionName: json['institution_name'] as String?);

Map<String, dynamic> _$InstitutionRefToJson(_InstitutionRef instance) =>
    <String, dynamic>{'institution_name': instance.institutionName};
