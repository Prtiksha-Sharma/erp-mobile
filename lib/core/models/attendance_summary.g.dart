// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceSummary _$AttendanceSummaryFromJson(Map<String, dynamic> json) =>
    _AttendanceSummary(
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      total: (json['total'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => AttendanceRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AttendanceSummaryToJson(_AttendanceSummary instance) =>
    <String, dynamic>{
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'total': instance.total,
      'data': instance.data,
    };
