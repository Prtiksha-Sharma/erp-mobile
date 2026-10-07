// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_campus_reception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReceptionistSummary _$ReceptionistSummaryFromJson(Map<String, dynamic> json) =>
    _ReceptionistSummary(
      staffId: json['staff_id'] as String,
      employeeCode: json['employee_code'] as String?,
      fullName: json['full_name'] as String?,
      accountStatus: json['account_status'] as String?,
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      inquiriesHandled: (json['inquiries_handled'] as num?)?.toInt() ?? 0,
      followUpsCount: (json['follow_ups_count'] as num?)?.toInt() ?? 0,
      convertedCount: (json['converted_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ReceptionistSummaryToJson(
  _ReceptionistSummary instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'employee_code': instance.employeeCode,
  'full_name': instance.fullName,
  'account_status': instance.accountStatus,
  'last_login': instance.lastLogin?.toIso8601String(),
  'inquiries_handled': instance.inquiriesHandled,
  'follow_ups_count': instance.followUpsCount,
  'converted_count': instance.convertedCount,
};

_ReceptionistActivity _$ReceptionistActivityFromJson(
  Map<String, dynamic> json,
) => _ReceptionistActivity(
  staffId: json['staff_id'] as String,
  employeeCode: json['employee_code'] as String?,
  fullName: json['full_name'] as String?,
  accountStatus: json['account_status'] as String?,
  lastLogin: json['last_login'] == null
      ? null
      : DateTime.parse(json['last_login'] as String),
  inquiriesHandled: (json['inquiries_handled'] as num?)?.toInt() ?? 0,
  followUpsCount: (json['follow_ups_count'] as num?)?.toInt() ?? 0,
  convertedCount: (json['converted_count'] as num?)?.toInt() ?? 0,
  recentActions:
      (json['recent_actions'] as List<dynamic>?)
          ?.map((e) => ReceptionActionItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ReceptionActionItem>[],
);

Map<String, dynamic> _$ReceptionistActivityToJson(
  _ReceptionistActivity instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'employee_code': instance.employeeCode,
  'full_name': instance.fullName,
  'account_status': instance.accountStatus,
  'last_login': instance.lastLogin?.toIso8601String(),
  'inquiries_handled': instance.inquiriesHandled,
  'follow_ups_count': instance.followUpsCount,
  'converted_count': instance.convertedCount,
  'recent_actions': instance.recentActions,
};

_ReceptionActionItem _$ReceptionActionItemFromJson(Map<String, dynamic> json) =>
    _ReceptionActionItem(
      activityType: json['activity_type'] as String,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      inquiry: json['inquiry'] == null
          ? null
          : ReceptionInquiryRef.fromJson(
              json['inquiry'] as Map<String, dynamic>,
            ),
      status: json['status'] as String?,
      source: json['source'] as String?,
      statusAfter: json['status_after'] as String?,
    );

Map<String, dynamic> _$ReceptionActionItemToJson(
  _ReceptionActionItem instance,
) => <String, dynamic>{
  'activity_type': instance.activityType,
  'timestamp': instance.timestamp?.toIso8601String(),
  'inquiry': instance.inquiry,
  'status': instance.status,
  'source': instance.source,
  'status_after': instance.statusAfter,
};

_ReceptionInquiryRef _$ReceptionInquiryRefFromJson(Map<String, dynamic> json) =>
    _ReceptionInquiryRef(
      inquiryId: json['inquiry_id'] as String?,
      studentName: json['student_name'] as String?,
    );

Map<String, dynamic> _$ReceptionInquiryRefToJson(
  _ReceptionInquiryRef instance,
) => <String, dynamic>{
  'inquiry_id': instance.inquiryId,
  'student_name': instance.studentName,
};
