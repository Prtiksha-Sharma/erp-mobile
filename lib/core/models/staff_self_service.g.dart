// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_self_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StaffAttendanceSummary _$StaffAttendanceSummaryFromJson(
  Map<String, dynamic> json,
) => _StaffAttendanceSummary(
  from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
  to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
  total: (json['total'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => StaffAttendanceRecord.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <StaffAttendanceRecord>[],
);

Map<String, dynamic> _$StaffAttendanceSummaryToJson(
  _StaffAttendanceSummary instance,
) => <String, dynamic>{
  'from': instance.from?.toIso8601String(),
  'to': instance.to?.toIso8601String(),
  'total': instance.total,
  'data': instance.data,
};

_StaffAttendanceRecord _$StaffAttendanceRecordFromJson(
  Map<String, dynamic> json,
) => _StaffAttendanceRecord(
  attendanceId: json['attendance_id'] as String,
  attendanceDate: DateTime.parse(json['attendance_date'] as String),
  status: json['status'] as String,
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$StaffAttendanceRecordToJson(
  _StaffAttendanceRecord instance,
) => <String, dynamic>{
  'attendance_id': instance.attendanceId,
  'attendance_date': instance.attendanceDate.toIso8601String(),
  'status': instance.status,
  'remarks': instance.remarks,
};

_StaffLeave _$StaffLeaveFromJson(Map<String, dynamic> json) => _StaffLeave(
  leaveId: json['leave_id'] as String,
  leaveType: json['leave_type'] as String,
  fromDate: DateTime.parse(json['from_date'] as String),
  toDate: DateTime.parse(json['to_date'] as String),
  totalDays: const LooseNumConverter().fromJson(json['total_days']),
  reason: json['reason'] as String?,
  status: json['status'] as String?,
  remarks: json['remarks'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$StaffLeaveToJson(_StaffLeave instance) =>
    <String, dynamic>{
      'leave_id': instance.leaveId,
      'leave_type': instance.leaveType,
      'from_date': instance.fromDate.toIso8601String(),
      'to_date': instance.toDate.toIso8601String(),
      'total_days': const LooseNumConverter().toJson(instance.totalDays),
      'reason': instance.reason,
      'status': instance.status,
      'remarks': instance.remarks,
      'created_at': instance.createdAt?.toIso8601String(),
    };
