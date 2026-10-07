// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_lookups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminClassOption _$AdminClassOptionFromJson(Map<String, dynamic> json) =>
    _AdminClassOption(
      classId: json['class_id'] as String,
      className: json['class_name'] as String,
      displayOrder: (json['display_order'] as num?)?.toInt(),
      registrationFee: const NullableDecimalConverter().fromJson(
        json['registration_fee'],
      ),
      sections:
          (json['sections'] as List<dynamic>?)
              ?.map((e) => SectionRef.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SectionRef>[],
    );

Map<String, dynamic> _$AdminClassOptionToJson(_AdminClassOption instance) =>
    <String, dynamic>{
      'class_id': instance.classId,
      'class_name': instance.className,
      'display_order': instance.displayOrder,
      'registration_fee': const NullableDecimalConverter().toJson(
        instance.registrationFee,
      ),
      'sections': instance.sections,
    };
