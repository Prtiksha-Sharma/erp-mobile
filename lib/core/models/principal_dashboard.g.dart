// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrincipalDashboard _$PrincipalDashboardFromJson(Map<String, dynamic> json) =>
    _PrincipalDashboard(
      totalStudents: (json['total_students'] as num?)?.toInt(),
      totalTeachers: (json['total_teachers'] as num?)?.toInt(),
      totalStaff: (json['total_staff'] as num?)?.toInt(),
      todayAttendance:
          (json['today_attendance'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          ) ??
          const <String, int>{},
      studentAttendancePct: (json['student_attendance_pct'] as num?)
          ?.toDouble(),
      feeCollectionToday: const DecimalConverter().fromJson(
        json['fee_collection_today'],
      ),
      pendingFeeAmount: const DecimalConverter().fromJson(
        json['pending_fee_amount'],
      ),
      pendingLeaveRequests: json['pending_leave_requests'] == null
          ? null
          : PendingLeaveCounts.fromJson(
              json['pending_leave_requests'] as Map<String, dynamic>,
            ),
      newAdmissions: (json['new_admissions'] as num?)?.toInt() ?? 0,
      upcomingExams:
          (json['upcoming_exams'] as List<dynamic>?)
              ?.map((e) => DashboardExam.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DashboardExam>[],
      announcements:
          (json['announcements'] as List<dynamic>?)
              ?.map((e) => SchoolNotice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SchoolNotice>[],
      upcomingEvents:
          (json['upcoming_events'] as List<dynamic>?)
              ?.map((e) => SchoolEvent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SchoolEvent>[],
      classTeacherVacancy: json['class_teacher_vacancy'] == null
          ? null
          : ClassTeacherVacancy.fromJson(
              json['class_teacher_vacancy'] as Map<String, dynamic>,
            ),
      complaintsOpen: (json['complaints_open'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PrincipalDashboardToJson(_PrincipalDashboard instance) =>
    <String, dynamic>{
      'total_students': instance.totalStudents,
      'total_teachers': instance.totalTeachers,
      'total_staff': instance.totalStaff,
      'today_attendance': instance.todayAttendance,
      'student_attendance_pct': instance.studentAttendancePct,
      'fee_collection_today': const DecimalConverter().toJson(
        instance.feeCollectionToday,
      ),
      'pending_fee_amount': const DecimalConverter().toJson(
        instance.pendingFeeAmount,
      ),
      'pending_leave_requests': instance.pendingLeaveRequests,
      'new_admissions': instance.newAdmissions,
      'upcoming_exams': instance.upcomingExams,
      'announcements': instance.announcements,
      'upcoming_events': instance.upcomingEvents,
      'class_teacher_vacancy': instance.classTeacherVacancy,
      'complaints_open': instance.complaintsOpen,
    };

_PendingLeaveCounts _$PendingLeaveCountsFromJson(Map<String, dynamic> json) =>
    _PendingLeaveCounts(
      staff: (json['staff'] as num?)?.toInt() ?? 0,
      student: (json['student'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PendingLeaveCountsToJson(_PendingLeaveCounts instance) =>
    <String, dynamic>{'staff': instance.staff, 'student': instance.student};

_DashboardExam _$DashboardExamFromJson(Map<String, dynamic> json) =>
    _DashboardExam(
      examId: json['exam_id'] as String,
      examName: json['exam_name'] as String,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      examType: json['exam_type'] as String?,
    );

Map<String, dynamic> _$DashboardExamToJson(_DashboardExam instance) =>
    <String, dynamic>{
      'exam_id': instance.examId,
      'exam_name': instance.examName,
      'start_date': instance.startDate?.toIso8601String(),
      'exam_type': instance.examType,
    };

_ClassTeacherVacancy _$ClassTeacherVacancyFromJson(Map<String, dynamic> json) =>
    _ClassTeacherVacancy(
      totalSections: (json['total_sections'] as num?)?.toInt() ?? 0,
      unassigned: (json['unassigned'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ClassTeacherVacancyToJson(
  _ClassTeacherVacancy instance,
) => <String, dynamic>{
  'total_sections': instance.totalSections,
  'unassigned': instance.unassigned,
};
