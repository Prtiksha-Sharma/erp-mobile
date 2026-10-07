// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_management.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassTeacherDashboard _$ClassTeacherDashboardFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherDashboard(
  sessionId: json['session_id'] as String,
  totalTeachers: (json['total_teachers'] as num?)?.toInt() ?? 0,
  totalClassTeachers: (json['total_class_teachers'] as num?)?.toInt() ?? 0,
  teachersWithoutClassAssignment:
      (json['teachers_without_class_assignment'] as num?)?.toInt() ?? 0,
  todayTeacherAttendance:
      (json['today_teacher_attendance'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ) ??
      const <String, int>{},
  leaveRequestsPending: (json['leave_requests_pending'] as num?)?.toInt() ?? 0,
  recentlyAssigned:
      (json['recently_assigned_class_teachers'] as List<dynamic>?)
          ?.map(
            (e) => RecentClassTeacherAssignment.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      const <RecentClassTeacherAssignment>[],
);

Map<String, dynamic> _$ClassTeacherDashboardToJson(
  _ClassTeacherDashboard instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'total_teachers': instance.totalTeachers,
  'total_class_teachers': instance.totalClassTeachers,
  'teachers_without_class_assignment': instance.teachersWithoutClassAssignment,
  'today_teacher_attendance': instance.todayTeacherAttendance,
  'leave_requests_pending': instance.leaveRequestsPending,
  'recently_assigned_class_teachers': instance.recentlyAssigned,
};

_RecentClassTeacherAssignment _$RecentClassTeacherAssignmentFromJson(
  Map<String, dynamic> json,
) => _RecentClassTeacherAssignment(
  assignmentId: json['assignment_id'] as String,
  teacherName: json['teacher_name'] as String?,
  employeeCode: json['employee_code'] as String?,
  className: json['class_name'] as String?,
  sectionName: json['section_name'] as String?,
  assignedAt: json['assigned_at'] == null
      ? null
      : DateTime.parse(json['assigned_at'] as String),
);

Map<String, dynamic> _$RecentClassTeacherAssignmentToJson(
  _RecentClassTeacherAssignment instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'teacher_name': instance.teacherName,
  'employee_code': instance.employeeCode,
  'class_name': instance.className,
  'section_name': instance.sectionName,
  'assigned_at': instance.assignedAt?.toIso8601String(),
};

_ClassTeacherAssignmentRecord _$ClassTeacherAssignmentRecordFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherAssignmentRecord(
  assignmentId: json['assignment_id'] as String,
  staffId: json['staff_id'] as String?,
  classId: json['class_id'] as String?,
  sectionId: json['section_id'] as String?,
  sessionId: json['session_id'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  staff: json['staff_accounts'] == null
      ? null
      : ClassTeacherStaffRef.fromJson(
          json['staff_accounts'] as Map<String, dynamic>,
        ),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : AssignmentSessionRef.fromJson(
          json['academic_sessions'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ClassTeacherAssignmentRecordToJson(
  _ClassTeacherAssignmentRecord instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'staff_id': instance.staffId,
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'session_id': instance.sessionId,
  'created_at': instance.createdAt?.toIso8601String(),
  'staff_accounts': instance.staff,
  'classes': instance.classRef,
  'sections': instance.sectionRef,
  'academic_sessions': instance.session,
};

_ClassTeacherStaffRef _$ClassTeacherStaffRefFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherStaffRef(
  staffId: json['staff_id'] as String?,
  fullName: json['full_name'] as String?,
  employeeCode: json['employee_code'] as String?,
  designation: json['designation'] as String?,
  contactNumber: json['contact_number'] as String?,
  profilePhotoUrl: json['profile_photo_url'] as String?,
);

Map<String, dynamic> _$ClassTeacherStaffRefToJson(
  _ClassTeacherStaffRef instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'full_name': instance.fullName,
  'employee_code': instance.employeeCode,
  'designation': instance.designation,
  'contact_number': instance.contactNumber,
  'profile_photo_url': instance.profilePhotoUrl,
};

_AssignmentSessionRef _$AssignmentSessionRefFromJson(
  Map<String, dynamic> json,
) => _AssignmentSessionRef(
  sessionId: json['session_id'] as String?,
  sessionName: json['session_name'] as String?,
);

Map<String, dynamic> _$AssignmentSessionRefToJson(
  _AssignmentSessionRef instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'session_name': instance.sessionName,
};

_ClassTeacherBulkResult _$ClassTeacherBulkResultFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherBulkResult(
  assigned: (json['assigned'] as num?)?.toInt() ?? 0,
  failed: (json['failed'] as num?)?.toInt() ?? 0,
  errors:
      (json['errors'] as List<dynamic>?)
          ?.map(
            (e) => ClassTeacherBulkError.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ClassTeacherBulkError>[],
);

Map<String, dynamic> _$ClassTeacherBulkResultToJson(
  _ClassTeacherBulkResult instance,
) => <String, dynamic>{
  'assigned': instance.assigned,
  'failed': instance.failed,
  'errors': instance.errors,
};

_ClassTeacherBulkError _$ClassTeacherBulkErrorFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherBulkError(
  classId: json['class_id'] as String?,
  sectionId: json['section_id'] as String?,
  error: json['error'] as String?,
);

Map<String, dynamic> _$ClassTeacherBulkErrorToJson(
  _ClassTeacherBulkError instance,
) => <String, dynamic>{
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'error': instance.error,
};

_ClassTeacherHistoryPage _$ClassTeacherHistoryPageFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherHistoryPage(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  limit: (json['limit'] as num?)?.toInt() ?? 50,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => ClassTeacherHistoryLog.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ClassTeacherHistoryLog>[],
);

Map<String, dynamic> _$ClassTeacherHistoryPageToJson(
  _ClassTeacherHistoryPage instance,
) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'data': instance.data,
};

_ClassTeacherHistoryLog _$ClassTeacherHistoryLogFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherHistoryLog(
  logId: json['log_id'] as String,
  actionType: json['action_type'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  oldData: json['old_data'] == null
      ? null
      : ClassTeacherAuditData.fromJson(
          json['old_data'] as Map<String, dynamic>,
        ),
  newData: json['new_data'] == null
      ? null
      : ClassTeacherAuditData.fromJson(
          json['new_data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ClassTeacherHistoryLogToJson(
  _ClassTeacherHistoryLog instance,
) => <String, dynamic>{
  'log_id': instance.logId,
  'action_type': instance.actionType,
  'created_at': instance.createdAt?.toIso8601String(),
  'old_data': instance.oldData,
  'new_data': instance.newData,
};

_ClassTeacherAuditData _$ClassTeacherAuditDataFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherAuditData(
  staffId: json['staff_id'] as String?,
  classId: json['class_id'] as String?,
  sectionId: json['section_id'] as String?,
  sessionId: json['session_id'] as String?,
);

Map<String, dynamic> _$ClassTeacherAuditDataToJson(
  _ClassTeacherAuditData instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'session_id': instance.sessionId,
};

_ClassTeacherOverview _$ClassTeacherOverviewFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherOverview(
  sessionId: json['session_id'] as String?,
  sessionName: json['session_name'] as String?,
  totalSections: (json['total_sections'] as num?)?.toInt() ?? 0,
  assigned: (json['assigned'] as num?)?.toInt() ?? 0,
  unassigned: (json['unassigned'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => ClassTeacherOverviewRow.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ClassTeacherOverviewRow>[],
);

Map<String, dynamic> _$ClassTeacherOverviewToJson(
  _ClassTeacherOverview instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'session_name': instance.sessionName,
  'total_sections': instance.totalSections,
  'assigned': instance.assigned,
  'unassigned': instance.unassigned,
  'data': instance.data,
};

_ClassTeacherOverviewRow _$ClassTeacherOverviewRowFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherOverviewRow(
  classId: json['class_id'] as String?,
  className: json['class_name'] as String?,
  sectionId: json['section_id'] as String,
  sectionName: json['section_name'] as String?,
  assignmentId: json['assignment_id'] as String?,
  status: json['status'] as String?,
  classTeacher: json['class_teacher'] == null
      ? null
      : OverviewClassTeacher.fromJson(
          json['class_teacher'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ClassTeacherOverviewRowToJson(
  _ClassTeacherOverviewRow instance,
) => <String, dynamic>{
  'class_id': instance.classId,
  'class_name': instance.className,
  'section_id': instance.sectionId,
  'section_name': instance.sectionName,
  'assignment_id': instance.assignmentId,
  'status': instance.status,
  'class_teacher': instance.classTeacher,
};

_OverviewClassTeacher _$OverviewClassTeacherFromJson(
  Map<String, dynamic> json,
) => _OverviewClassTeacher(
  staffId: json['staff_id'] as String?,
  fullName: json['full_name'] as String?,
  employeeCode: json['employee_code'] as String?,
  contactNumber: json['contact_number'] as String?,
  email: json['email'] as String?,
  employmentStatus: json['employment_status'] as String?,
  accountStatus: json['account_status'] as String?,
);

Map<String, dynamic> _$OverviewClassTeacherToJson(
  _OverviewClassTeacher instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'full_name': instance.fullName,
  'employee_code': instance.employeeCode,
  'contact_number': instance.contactNumber,
  'email': instance.email,
  'employment_status': instance.employmentStatus,
  'account_status': instance.accountStatus,
};

_ClassTeacherAttendanceMonitoring _$ClassTeacherAttendanceMonitoringFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherAttendanceMonitoring(
  sessionId: json['session_id'] as String?,
  expectedWorkingDaysThisMonth:
      (json['expected_working_days_this_month'] as num?)?.toInt(),
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) =>
                ClassTeacherAttendanceRow.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ClassTeacherAttendanceRow>[],
);

Map<String, dynamic> _$ClassTeacherAttendanceMonitoringToJson(
  _ClassTeacherAttendanceMonitoring instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'expected_working_days_this_month': instance.expectedWorkingDaysThisMonth,
  'data': instance.data,
};

_ClassTeacherAttendanceRow _$ClassTeacherAttendanceRowFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherAttendanceRow(
  assignmentId: json['assignment_id'] as String,
  className: json['class_name'] as String?,
  sectionName: json['section_name'] as String?,
  totalStudents: (json['total_students'] as num?)?.toInt() ?? 0,
  markedToday: (json['marked_today'] as num?)?.toInt() ?? 0,
  isFullyMarkedToday: json['is_fully_marked_today'] as bool? ?? false,
  lastMarkedDate: json['last_marked_date'] == null
      ? null
      : DateTime.parse(json['last_marked_date'] as String),
  monthlyCompletionPct: const LooseNumConverter().fromJson(
    json['monthly_completion_pct'],
  ),
);

Map<String, dynamic> _$ClassTeacherAttendanceRowToJson(
  _ClassTeacherAttendanceRow instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'class_name': instance.className,
  'section_name': instance.sectionName,
  'total_students': instance.totalStudents,
  'marked_today': instance.markedToday,
  'is_fully_marked_today': instance.isFullyMarkedToday,
  'last_marked_date': instance.lastMarkedDate?.toIso8601String(),
  'monthly_completion_pct': const LooseNumConverter().toJson(
    instance.monthlyCompletionPct,
  ),
};

_ClassTeacherHomeworkMonitoring _$ClassTeacherHomeworkMonitoringFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherHomeworkMonitoring(
  sessionId: json['session_id'] as String?,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => ClassTeacherHomeworkRow.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ClassTeacherHomeworkRow>[],
);

Map<String, dynamic> _$ClassTeacherHomeworkMonitoringToJson(
  _ClassTeacherHomeworkMonitoring instance,
) => <String, dynamic>{'session_id': instance.sessionId, 'data': instance.data};

_ClassTeacherHomeworkRow _$ClassTeacherHomeworkRowFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherHomeworkRow(
  assignmentId: json['assignment_id'] as String,
  className: json['class_name'] as String?,
  sectionName: json['section_name'] as String?,
  homeworkGivenToday: (json['homework_given_today'] as num?)?.toInt() ?? 0,
  pendingHomework: (json['pending_homework'] as num?)?.toInt() ?? 0,
  lastHomeworkDate: json['last_homework_date'] == null
      ? null
      : DateTime.parse(json['last_homework_date'] as String),
  submissionCompletionPct: const LooseNumConverter().fromJson(
    json['submission_completion_pct'],
  ),
);

Map<String, dynamic> _$ClassTeacherHomeworkRowToJson(
  _ClassTeacherHomeworkRow instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'class_name': instance.className,
  'section_name': instance.sectionName,
  'homework_given_today': instance.homeworkGivenToday,
  'pending_homework': instance.pendingHomework,
  'last_homework_date': instance.lastHomeworkDate?.toIso8601String(),
  'submission_completion_pct': const LooseNumConverter().toJson(
    instance.submissionCompletionPct,
  ),
};

_ClassTeacherPerformanceMonitoring _$ClassTeacherPerformanceMonitoringFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherPerformanceMonitoring(
  sessionId: json['session_id'] as String?,
  exam: json['exam'] == null
      ? null
      : ManagementExamOption.fromJson(json['exam'] as Map<String, dynamic>),
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) =>
                ClassTeacherPerformanceRow.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <ClassTeacherPerformanceRow>[],
);

Map<String, dynamic> _$ClassTeacherPerformanceMonitoringToJson(
  _ClassTeacherPerformanceMonitoring instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'exam': instance.exam,
  'data': instance.data,
};

_ClassTeacherPerformanceRow _$ClassTeacherPerformanceRowFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherPerformanceRow(
  assignmentId: json['assignment_id'] as String,
  className: json['class_name'] as String?,
  sectionName: json['section_name'] as String?,
  classAveragePercentage: const LooseNumConverter().fromJson(
    json['class_average_percentage'],
  ),
  passPercentage: const LooseNumConverter().fromJson(json['pass_percentage']),
);

Map<String, dynamic> _$ClassTeacherPerformanceRowToJson(
  _ClassTeacherPerformanceRow instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'class_name': instance.className,
  'section_name': instance.sectionName,
  'class_average_percentage': const LooseNumConverter().toJson(
    instance.classAveragePercentage,
  ),
  'pass_percentage': const LooseNumConverter().toJson(instance.passPercentage),
};

_ManagementExamOption _$ManagementExamOptionFromJson(
  Map<String, dynamic> json,
) => _ManagementExamOption(
  examId: json['exam_id'] as String,
  examName: json['exam_name'] as String,
);

Map<String, dynamic> _$ManagementExamOptionToJson(
  _ManagementExamOption instance,
) => <String, dynamic>{
  'exam_id': instance.examId,
  'exam_name': instance.examName,
};

_ClassTeacherRosterStats _$ClassTeacherRosterStatsFromJson(
  Map<String, dynamic> json,
) => _ClassTeacherRosterStats(
  classId: json['class_id'] as String?,
  sectionId: json['section_id'] as String?,
  sessionId: json['session_id'] as String?,
  total: (json['total'] as num?)?.toInt() ?? 0,
  boys: (json['boys'] as num?)?.toInt() ?? 0,
  girls: (json['girls'] as num?)?.toInt() ?? 0,
  newAdmissions: (json['new_admissions'] as num?)?.toInt() ?? 0,
  pendingDocuments: (json['pending_documents'] as num?)?.toInt() ?? 0,
  studentsOnLeaveToday: (json['students_on_leave_today'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ClassTeacherRosterStatsToJson(
  _ClassTeacherRosterStats instance,
) => <String, dynamic>{
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'session_id': instance.sessionId,
  'total': instance.total,
  'boys': instance.boys,
  'girls': instance.girls,
  'new_admissions': instance.newAdmissions,
  'pending_documents': instance.pendingDocuments,
  'students_on_leave_today': instance.studentsOnLeaveToday,
};

_TeacherWorkloadRow _$TeacherWorkloadRowFromJson(Map<String, dynamic> json) =>
    _TeacherWorkloadRow(
      staffId: json['staff_id'] as String,
      fullName: json['full_name'] as String,
      employeeCode: json['employee_code'] as String?,
      designation: json['designation'] as String?,
      periodsPerWeek: (json['periods_per_week'] as num?)?.toInt() ?? 0,
      sectionsTaught: (json['sections_taught'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TeacherWorkloadRowToJson(_TeacherWorkloadRow instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'designation': instance.designation,
      'periods_per_week': instance.periodsPerWeek,
      'sections_taught': instance.sectionsTaught,
    };

_TeacherHomeworkStatusRow _$TeacherHomeworkStatusRowFromJson(
  Map<String, dynamic> json,
) => _TeacherHomeworkStatusRow(
  staffId: json['staff_id'] as String,
  fullName: json['full_name'] as String,
  employeeCode: json['employee_code'] as String?,
  assignedCount: (json['assigned_count'] as num?)?.toInt() ?? 0,
  totalSubmissions: (json['total_submissions'] as num?)?.toInt() ?? 0,
  gradedSubmissions: (json['graded_submissions'] as num?)?.toInt() ?? 0,
  pendingSubmissions: (json['pending_submissions'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TeacherHomeworkStatusRowToJson(
  _TeacherHomeworkStatusRow instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'full_name': instance.fullName,
  'employee_code': instance.employeeCode,
  'assigned_count': instance.assignedCount,
  'total_submissions': instance.totalSubmissions,
  'graded_submissions': instance.gradedSubmissions,
  'pending_submissions': instance.pendingSubmissions,
};

_TeacherMarksEntryRow _$TeacherMarksEntryRowFromJson(
  Map<String, dynamic> json,
) => _TeacherMarksEntryRow(
  staffId: json['staff_id'] as String,
  fullName: json['full_name'] as String,
  employeeCode: json['employee_code'] as String?,
  className: json['class_name'] as String?,
  sectionName: json['section_name'] as String?,
  subjectName: json['subject_name'] as String?,
  totalStudents: (json['total_students'] as num?)?.toInt() ?? 0,
  enteredCount: (json['entered_count'] as num?)?.toInt() ?? 0,
  pendingCount: (json['pending_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TeacherMarksEntryRowToJson(
  _TeacherMarksEntryRow instance,
) => <String, dynamic>{
  'staff_id': instance.staffId,
  'full_name': instance.fullName,
  'employee_code': instance.employeeCode,
  'class_name': instance.className,
  'section_name': instance.sectionName,
  'subject_name': instance.subjectName,
  'total_students': instance.totalStudents,
  'entered_count': instance.enteredCount,
  'pending_count': instance.pendingCount,
};

_PrincipalActivityItem _$PrincipalActivityItemFromJson(
  Map<String, dynamic> json,
) => _PrincipalActivityItem(
  activityType: json['activity_type'] as String?,
  targetType: json['target_type'] as String?,
  targetId: json['target_id'] as String?,
  targetName: json['target_name'] as String?,
  remarkText: json['remark_text'] as String?,
  performedBy: json['performed_by'] as String?,
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
);

Map<String, dynamic> _$PrincipalActivityItemToJson(
  _PrincipalActivityItem instance,
) => <String, dynamic>{
  'activity_type': instance.activityType,
  'target_type': instance.targetType,
  'target_id': instance.targetId,
  'target_name': instance.targetName,
  'remark_text': instance.remarkText,
  'performed_by': instance.performedBy,
  'timestamp': instance.timestamp?.toIso8601String(),
};
