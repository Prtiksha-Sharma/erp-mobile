// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveRecord _$LeaveRecordFromJson(Map<String, dynamic> json) => _LeaveRecord(
  leaveId: json['leave_id'] as String,
  leaveType: json['leave_type'] as String,
  fromDate: DateTime.parse(json['from_date'] as String),
  toDate: DateTime.parse(json['to_date'] as String),
  totalDays: _totalDaysFromJson(json['total_days'] as String),
  reason: json['reason'] as String?,
  attachmentUrl: json['attachment_url'] as String?,
  status: $enumDecode(
    _$LeaveStatusEnumMap,
    json['status'],
    unknownValue: LeaveStatus.unknown,
  ),
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$LeaveRecordToJson(_LeaveRecord instance) =>
    <String, dynamic>{
      'leave_id': instance.leaveId,
      'leave_type': instance.leaveType,
      'from_date': instance.fromDate.toIso8601String(),
      'to_date': instance.toDate.toIso8601String(),
      'total_days': _totalDaysToJson(instance.totalDays),
      'reason': instance.reason,
      'attachment_url': instance.attachmentUrl,
      'status': _$LeaveStatusEnumMap[instance.status]!,
      'remarks': instance.remarks,
    };

const _$LeaveStatusEnumMap = {
  LeaveStatus.pending: 'PENDING',
  LeaveStatus.approved: 'APPROVED',
  LeaveStatus.rejected: 'REJECTED',
  LeaveStatus.unknown: 'unknown',
};
