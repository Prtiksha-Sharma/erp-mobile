// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttendanceRecord _$AttendanceRecordFromJson(Map<String, dynamic> json) =>
    _AttendanceRecord(
      attendanceId: json['attendance_id'] as String,
      attendanceDate: DateTime.parse(json['attendance_date'] as String),
      status: $enumDecode(
        _$AttendanceStatusEnumMap,
        json['status'],
        unknownValue: AttendanceStatus.unknown,
      ),
      remarks: json['remarks'] as String?,
      checkInTime: json['check_in_time'] == null
          ? null
          : DateTime.parse(json['check_in_time'] as String),
    );

Map<String, dynamic> _$AttendanceRecordToJson(_AttendanceRecord instance) =>
    <String, dynamic>{
      'attendance_id': instance.attendanceId,
      'attendance_date': instance.attendanceDate.toIso8601String(),
      'status': _$AttendanceStatusEnumMap[instance.status]!,
      'remarks': instance.remarks,
      'check_in_time': instance.checkInTime?.toIso8601String(),
    };

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.present: 'PRESENT',
  AttendanceStatus.absent: 'ABSENT',
  AttendanceStatus.late: 'LATE',
  AttendanceStatus.halfDay: 'HALF_DAY',
  AttendanceStatus.weekOff: 'WEEK_OFF',
  AttendanceStatus.unknown: 'unknown',
};
