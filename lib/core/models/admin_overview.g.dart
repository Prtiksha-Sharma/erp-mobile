// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_overview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminDashboardStats _$AdminDashboardStatsFromJson(Map<String, dynamic> json) =>
    _AdminDashboardStats(
      students: json['students'] == null
          ? null
          : DashboardStudentStats.fromJson(
              json['students'] as Map<String, dynamic>,
            ),
      applications: json['applications'] == null
          ? null
          : DashboardApplicationStats.fromJson(
              json['applications'] as Map<String, dynamic>,
            ),
      transport: json['transport'] == null
          ? null
          : DashboardTransportStats.fromJson(
              json['transport'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdminDashboardStatsToJson(
  _AdminDashboardStats instance,
) => <String, dynamic>{
  'students': instance.students,
  'applications': instance.applications,
  'transport': instance.transport,
};

_DashboardStudentStats _$DashboardStudentStatsFromJson(
  Map<String, dynamic> json,
) => _DashboardStudentStats(
  total: (json['total'] as num?)?.toInt() ?? 0,
  totalActive: (json['total_active'] as num?)?.toInt() ?? 0,
  active: (json['active'] as num?)?.toInt() ?? 0,
  inactive: (json['inactive'] as num?)?.toInt() ?? 0,
  classWiseStrength:
      (json['class_wise_strength'] as List<dynamic>?)
          ?.map(
            (e) => DashboardClassStrength.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <DashboardClassStrength>[],
  genderDistribution:
      (json['gender_distribution'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
);

Map<String, dynamic> _$DashboardStudentStatsToJson(
  _DashboardStudentStats instance,
) => <String, dynamic>{
  'total': instance.total,
  'total_active': instance.totalActive,
  'active': instance.active,
  'inactive': instance.inactive,
  'class_wise_strength': instance.classWiseStrength,
  'gender_distribution': instance.genderDistribution,
};

_DashboardClassStrength _$DashboardClassStrengthFromJson(
  Map<String, dynamic> json,
) => _DashboardClassStrength(
  classId: json['class_id'] as String?,
  className: json['class_name'] as String?,
  total: (json['total'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DashboardClassStrengthToJson(
  _DashboardClassStrength instance,
) => <String, dynamic>{
  'class_id': instance.classId,
  'class_name': instance.className,
  'total': instance.total,
};

_DashboardApplicationStats _$DashboardApplicationStatsFromJson(
  Map<String, dynamic> json,
) => _DashboardApplicationStats(
  total: (json['total'] as num?)?.toInt() ?? 0,
  submitted: (json['submitted'] as num?)?.toInt() ?? 0,
  approved: (json['approved'] as num?)?.toInt() ?? 0,
  rejected: (json['rejected'] as num?)?.toInt() ?? 0,
  enrolled: (json['enrolled'] as num?)?.toInt() ?? 0,
  byStatus:
      (json['by_status'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
);

Map<String, dynamic> _$DashboardApplicationStatsToJson(
  _DashboardApplicationStats instance,
) => <String, dynamic>{
  'total': instance.total,
  'submitted': instance.submitted,
  'approved': instance.approved,
  'rejected': instance.rejected,
  'enrolled': instance.enrolled,
  'by_status': instance.byStatus,
};

_DashboardTransportStats _$DashboardTransportStatsFromJson(
  Map<String, dynamic> json,
) => _DashboardTransportStats(
  totalBuses: (json['total_buses'] as num?)?.toInt() ?? 0,
  activeBuses: (json['active_buses'] as num?)?.toInt() ?? 0,
  totalDrivers: (json['total_drivers'] as num?)?.toInt() ?? 0,
  activeDrivers: (json['active_drivers'] as num?)?.toInt() ?? 0,
  studentsOnTransport: (json['students_on_transport'] as num?)?.toInt() ?? 0,
  delaysFlaggedToday: (json['delays_flagged_today'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DashboardTransportStatsToJson(
  _DashboardTransportStats instance,
) => <String, dynamic>{
  'total_buses': instance.totalBuses,
  'active_buses': instance.activeBuses,
  'total_drivers': instance.totalDrivers,
  'active_drivers': instance.activeDrivers,
  'students_on_transport': instance.studentsOnTransport,
  'delays_flagged_today': instance.delaysFlaggedToday,
};

_DashboardAttendanceToday _$DashboardAttendanceTodayFromJson(
  Map<String, dynamic> json,
) => _DashboardAttendanceToday(
  from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
  to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
  summary:
      (json['summary'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
);

Map<String, dynamic> _$DashboardAttendanceTodayToJson(
  _DashboardAttendanceToday instance,
) => <String, dynamic>{
  'from': instance.from?.toIso8601String(),
  'to': instance.to?.toIso8601String(),
  'summary': instance.summary,
};

_DashboardBirthday _$DashboardBirthdayFromJson(Map<String, dynamic> json) =>
    _DashboardBirthday(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      rollNo: const LooseStringConverter().fromJson(json['roll_no']),
      firstName: json['first_name'] as String?,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      gender: json['gender'] as String?,
      photoUrl: json['photo_url'] as String?,
      className: json['class_name'] as String?,
      sectionName: json['section_name'] as String?,
    );

Map<String, dynamic> _$DashboardBirthdayToJson(_DashboardBirthday instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'roll_no': const LooseStringConverter().toJson(instance.rollNo),
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'dob': instance.dob?.toIso8601String(),
      'gender': instance.gender,
      'photo_url': instance.photoUrl,
      'class_name': instance.className,
      'section_name': instance.sectionName,
    };

_DashboardFeeSnapshot _$DashboardFeeSnapshotFromJson(
  Map<String, dynamic> json,
) => _DashboardFeeSnapshot(
  totalFeeCollected: const DecimalConverter().fromJson(
    json['total_fee_collected'],
  ),
  todaysCollection: const DecimalConverter().fromJson(
    json['todays_collection'],
  ),
  thisMonthCollection: const DecimalConverter().fromJson(
    json['this_month_collection'],
  ),
  pendingAmount: const DecimalConverter().fromJson(json['pending_amount']),
  studentsWithPendingFees:
      (json['students_with_pending_fees'] as num?)?.toInt() ?? 0,
  activeScholarships: (json['active_scholarships'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DashboardFeeSnapshotToJson(
  _DashboardFeeSnapshot instance,
) => <String, dynamic>{
  'total_fee_collected': const DecimalConverter().toJson(
    instance.totalFeeCollected,
  ),
  'todays_collection': const DecimalConverter().toJson(
    instance.todaysCollection,
  ),
  'this_month_collection': const DecimalConverter().toJson(
    instance.thisMonthCollection,
  ),
  'pending_amount': const DecimalConverter().toJson(instance.pendingAmount),
  'students_with_pending_fees': instance.studentsWithPendingFees,
  'active_scholarships': instance.activeScholarships,
};

_DashboardExamRow _$DashboardExamRowFromJson(Map<String, dynamic> json) =>
    _DashboardExamRow(
      examId: json['exam_id'] as String,
      examName: json['exam_name'] as String,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      examType: json['exam_types'] == null
          ? null
          : DashboardExamTypeRef.fromJson(
              json['exam_types'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DashboardExamRowToJson(_DashboardExamRow instance) =>
    <String, dynamic>{
      'exam_id': instance.examId,
      'exam_name': instance.examName,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'exam_types': instance.examType,
    };

_DashboardExamTypeRef _$DashboardExamTypeRefFromJson(
  Map<String, dynamic> json,
) => _DashboardExamTypeRef(
  examTypeId: json['exam_type_id'] as String?,
  typeName: json['type_name'] as String?,
);

Map<String, dynamic> _$DashboardExamTypeRefToJson(
  _DashboardExamTypeRef instance,
) => <String, dynamic>{
  'exam_type_id': instance.examTypeId,
  'type_name': instance.typeName,
};

_DashboardHomeworkRow _$DashboardHomeworkRowFromJson(
  Map<String, dynamic> json,
) => _DashboardHomeworkRow(
  homeworkId: json['homework_id'] as String,
  title: json['title'] as String? ?? '',
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  type: json['type'] as String?,
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DashboardHomeworkRowToJson(
  _DashboardHomeworkRow instance,
) => <String, dynamic>{
  'homework_id': instance.homeworkId,
  'title': instance.title,
  'due_date': instance.dueDate?.toIso8601String(),
  'type': instance.type,
  'classes': instance.classRef,
  'sections': instance.sectionRef,
  'academic_subjects': instance.subject,
};

_DashboardExamSummary _$DashboardExamSummaryFromJson(
  Map<String, dynamic> json,
) => _DashboardExamSummary(
  totalExams: (json['total_exams'] as num?)?.toInt() ?? 0,
  upcomingExams: (json['upcoming_exams'] as num?)?.toInt() ?? 0,
  completedExams: (json['completed_exams'] as num?)?.toInt() ?? 0,
  resultsPublished: (json['results_published'] as num?)?.toInt() ?? 0,
  resultsPendingPublish:
      (json['results_pending_publish'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DashboardExamSummaryToJson(
  _DashboardExamSummary instance,
) => <String, dynamic>{
  'total_exams': instance.totalExams,
  'upcoming_exams': instance.upcomingExams,
  'completed_exams': instance.completedExams,
  'results_published': instance.resultsPublished,
  'results_pending_publish': instance.resultsPendingPublish,
};

_StaffDailyAttendance _$StaffDailyAttendanceFromJson(
  Map<String, dynamic> json,
) => _StaffDailyAttendance(
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  total: (json['total'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => StaffDailyAttendanceRow.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <StaffDailyAttendanceRow>[],
);

Map<String, dynamic> _$StaffDailyAttendanceToJson(
  _StaffDailyAttendance instance,
) => <String, dynamic>{
  'date': instance.date?.toIso8601String(),
  'total': instance.total,
  'data': instance.data,
};

_StaffDailyAttendanceRow _$StaffDailyAttendanceRowFromJson(
  Map<String, dynamic> json,
) => _StaffDailyAttendanceRow(
  staffId: json['staff_id'] as String,
  fullName: json['full_name'] as String?,
  employeeCode: json['employee_code'] as String?,
  designation: json['designation'] as String?,
  attendance: json['attendance'] == null
      ? null
      : StaffAttendanceRecord.fromJson(
          json['attendance'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StaffDailyAttendanceRowToJson(
  _StaffDailyAttendanceRow instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'full_name': instance.fullName,
  'employee_code': instance.employeeCode,
  'designation': instance.designation,
  'attendance': instance.attendance,
};

_StaffBulkMarkResult _$StaffBulkMarkResultFromJson(Map<String, dynamic> json) =>
    _StaffBulkMarkResult(
      marked: (json['marked'] as num?)?.toInt() ?? 0,
      failed: (json['failed'] as num?)?.toInt() ?? 0,
      errors:
          (json['errors'] as List<dynamic>?)
              ?.map(
                (e) => StaffBulkMarkError.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <StaffBulkMarkError>[],
    );

Map<String, dynamic> _$StaffBulkMarkResultToJson(
  _StaffBulkMarkResult instance,
) => <String, dynamic>{
  'marked': instance.marked,
  'failed': instance.failed,
  'errors': instance.errors,
};

_StaffBulkMarkError _$StaffBulkMarkErrorFromJson(Map<String, dynamic> json) =>
    _StaffBulkMarkError(
      staffId: json['staff_id'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$StaffBulkMarkErrorToJson(_StaffBulkMarkError instance) =>
    <String, dynamic>{'staff_id': instance.staffId, 'error': instance.error};

_OverviewAttendanceReport _$OverviewAttendanceReportFromJson(
  Map<String, dynamic> json,
) => _OverviewAttendanceReport(
  from: json['from'] == null ? null : DateTime.parse(json['from'] as String),
  to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
  summary:
      (json['summary'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 20,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => OverviewAttendanceRow.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <OverviewAttendanceRow>[],
);

Map<String, dynamic> _$OverviewAttendanceReportToJson(
  _OverviewAttendanceReport instance,
) => <String, dynamic>{
  'from': instance.from?.toIso8601String(),
  'to': instance.to?.toIso8601String(),
  'summary': instance.summary,
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};

_OverviewAttendanceRow _$OverviewAttendanceRowFromJson(
  Map<String, dynamic> json,
) => _OverviewAttendanceRow(
  attendanceId: json['attendance_id'] as String,
  attendanceDate: json['attendance_date'] == null
      ? null
      : DateTime.parse(json['attendance_date'] as String),
  status: json['status'] as String? ?? '',
  remarks: json['remarks'] as String?,
  student: json['students'] == null
      ? null
      : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OverviewAttendanceRowToJson(
  _OverviewAttendanceRow instance,
) => <String, dynamic>{
  'attendance_id': instance.attendanceId,
  'attendance_date': instance.attendanceDate?.toIso8601String(),
  'status': instance.status,
  'remarks': instance.remarks,
  'students': instance.student,
};

_ActivityLogPage _$ActivityLogPageFromJson(Map<String, dynamic> json) =>
    _ActivityLogPage(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      limit: (json['limit'] as num?)?.toInt() ?? 50,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => ActivityLogEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ActivityLogEntry>[],
    );

Map<String, dynamic> _$ActivityLogPageToJson(_ActivityLogPage instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data,
    };

_ActivityLogEntry _$ActivityLogEntryFromJson(Map<String, dynamic> json) =>
    _ActivityLogEntry(
      logId: json['log_id'] as String,
      userId: json['user_id'] as String?,
      moduleName: json['module_name'] as String?,
      actionType: json['action_type'] as String?,
      recordId: json['record_id'] as String?,
      oldData: json['old_data'],
      newData: json['new_data'],
      ipAddress: json['ip_address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ActivityLogEntryToJson(_ActivityLogEntry instance) =>
    <String, dynamic>{
      'log_id': instance.logId,
      'user_id': instance.userId,
      'module_name': instance.moduleName,
      'action_type': instance.actionType,
      'record_id': instance.recordId,
      'old_data': instance.oldData,
      'new_data': instance.newData,
      'ip_address': instance.ipAddress,
      'created_at': instance.createdAt?.toIso8601String(),
    };
