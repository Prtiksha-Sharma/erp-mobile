// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_school_life_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminDisciplineRow _$AdminDisciplineRowFromJson(Map<String, dynamic> json) =>
    _AdminDisciplineRow(
      disciplineId: json['discipline_id'] as String,
      studentId: json['student_id'] as String?,
      incidentDate: json['incident_date'] == null
          ? null
          : DateTime.parse(json['incident_date'] as String),
      incidentType: json['incident_type'] as String,
      description: json['description'] as String?,
      severity: json['severity'] as String?,
      actionTaken: json['action_taken'] as String?,
      status: json['status'] as String?,
      resolvedAt: json['resolved_at'] == null
          ? null
          : DateTime.parse(json['resolved_at'] as String),
      remarks: json['remarks'] as String?,
      student: json['students'] == null
          ? null
          : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminDisciplineRowToJson(_AdminDisciplineRow instance) =>
    <String, dynamic>{
      'discipline_id': instance.disciplineId,
      'student_id': instance.studentId,
      'incident_date': instance.incidentDate?.toIso8601String(),
      'incident_type': instance.incidentType,
      'description': instance.description,
      'severity': instance.severity,
      'action_taken': instance.actionTaken,
      'status': instance.status,
      'resolved_at': instance.resolvedAt?.toIso8601String(),
      'remarks': instance.remarks,
      'students': instance.student,
    };

_AdminDisciplinePage _$AdminDisciplinePageFromJson(Map<String, dynamic> json) =>
    _AdminDisciplinePage(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => AdminDisciplineRow.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <AdminDisciplineRow>[],
    );

Map<String, dynamic> _$AdminDisciplinePageToJson(
  _AdminDisciplinePage instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};

_AdminStudentLeaveRow _$AdminStudentLeaveRowFromJson(
  Map<String, dynamic> json,
) => _AdminStudentLeaveRow(
  leaveId: json['leave_id'] as String,
  studentId: json['student_id'] as String?,
  leaveType: json['leave_type'] as String?,
  fromDate: json['from_date'] == null
      ? null
      : DateTime.parse(json['from_date'] as String),
  toDate: json['to_date'] == null
      ? null
      : DateTime.parse(json['to_date'] as String),
  totalDays: const LooseNumConverter().fromJson(json['total_days']),
  reason: json['reason'] as String?,
  status: json['status'] as String?,
  approvedAt: json['approved_at'] == null
      ? null
      : DateTime.parse(json['approved_at'] as String),
  remarks: json['remarks'] as String?,
  student: json['students'] == null
      ? null
      : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminStudentLeaveRowToJson(
  _AdminStudentLeaveRow instance,
) => <String, dynamic>{
  'leave_id': instance.leaveId,
  'student_id': instance.studentId,
  'leave_type': instance.leaveType,
  'from_date': instance.fromDate?.toIso8601String(),
  'to_date': instance.toDate?.toIso8601String(),
  'total_days': const LooseNumConverter().toJson(instance.totalDays),
  'reason': instance.reason,
  'status': instance.status,
  'approved_at': instance.approvedAt?.toIso8601String(),
  'remarks': instance.remarks,
  'students': instance.student,
};

_AdminStudentLeavePage _$AdminStudentLeavePageFromJson(
  Map<String, dynamic> json,
) => _AdminStudentLeavePage(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => AdminStudentLeaveRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AdminStudentLeaveRow>[],
);

Map<String, dynamic> _$AdminStudentLeavePageToJson(
  _AdminStudentLeavePage instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};

_LeaveStaffRef _$LeaveStaffRefFromJson(Map<String, dynamic> json) =>
    _LeaveStaffRef(
      staffId: json['staff_id'] as String?,
      fullName: json['full_name'] as String?,
      employeeCode: json['employee_code'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$LeaveStaffRefToJson(_LeaveStaffRef instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'designation': instance.designation,
    };

_AdminStaffLeaveRow _$AdminStaffLeaveRowFromJson(Map<String, dynamic> json) =>
    _AdminStaffLeaveRow(
      leaveId: json['leave_id'] as String,
      staffId: json['staff_id'] as String?,
      leaveType: json['leave_type'] as String?,
      fromDate: json['from_date'] == null
          ? null
          : DateTime.parse(json['from_date'] as String),
      toDate: json['to_date'] == null
          ? null
          : DateTime.parse(json['to_date'] as String),
      totalDays: const LooseNumConverter().fromJson(json['total_days']),
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      approvedAt: json['approved_at'] == null
          ? null
          : DateTime.parse(json['approved_at'] as String),
      remarks: json['remarks'] as String?,
      staff: json['staff_accounts'] == null
          ? null
          : LeaveStaffRef.fromJson(
              json['staff_accounts'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdminStaffLeaveRowToJson(_AdminStaffLeaveRow instance) =>
    <String, dynamic>{
      'leave_id': instance.leaveId,
      'staff_id': instance.staffId,
      'leave_type': instance.leaveType,
      'from_date': instance.fromDate?.toIso8601String(),
      'to_date': instance.toDate?.toIso8601String(),
      'total_days': const LooseNumConverter().toJson(instance.totalDays),
      'reason': instance.reason,
      'status': instance.status,
      'approved_at': instance.approvedAt?.toIso8601String(),
      'remarks': instance.remarks,
      'staff_accounts': instance.staff,
    };

_AdminStaffLeavePage _$AdminStaffLeavePageFromJson(Map<String, dynamic> json) =>
    _AdminStaffLeavePage(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 20,
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => AdminStaffLeaveRow.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <AdminStaffLeaveRow>[],
    );

Map<String, dynamic> _$AdminStaffLeavePageToJson(
  _AdminStaffLeavePage instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};
