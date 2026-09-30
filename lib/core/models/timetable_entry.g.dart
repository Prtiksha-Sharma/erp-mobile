// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherNameRef _$TeacherNameRefFromJson(Map<String, dynamic> json) =>
    _TeacherNameRef(fullName: json['full_name'] as String);

Map<String, dynamic> _$TeacherNameRefToJson(_TeacherNameRef instance) =>
    <String, dynamic>{'full_name': instance.fullName};

_TimetableEntry _$TimetableEntryFromJson(
  Map<String, dynamic> json,
) => _TimetableEntry(
  entryId: json['timetable_entry_id'] as String,
  dayOfWeek: (json['day_of_week'] as num).toInt(),
  periodNumber: (json['period_number'] as num).toInt(),
  startTime: DateTime.parse(json['start_time'] as String),
  endTime: DateTime.parse(json['end_time'] as String),
  room: json['room'] as String?,
  periodType: $enumDecode(
    _$PeriodTypeEnumMap,
    json['period_type'],
    unknownValue: PeriodType.unknown,
  ),
  breakLabel: json['break_label'] as String?,
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
  teacher: json['staff_accounts'] == null
      ? null
      : TeacherNameRef.fromJson(json['staff_accounts'] as Map<String, dynamic>),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TimetableEntryToJson(_TimetableEntry instance) =>
    <String, dynamic>{
      'timetable_entry_id': instance.entryId,
      'day_of_week': instance.dayOfWeek,
      'period_number': instance.periodNumber,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime.toIso8601String(),
      'room': instance.room,
      'period_type': _$PeriodTypeEnumMap[instance.periodType]!,
      'break_label': instance.breakLabel,
      'academic_subjects': instance.subject,
      'staff_accounts': instance.teacher,
      'classes': instance.classRef,
      'sections': instance.sectionRef,
    };

const _$PeriodTypeEnumMap = {
  PeriodType.classPeriod: 'CLASS',
  PeriodType.breakPeriod: 'BREAK',
  PeriodType.unknown: 'unknown',
};
