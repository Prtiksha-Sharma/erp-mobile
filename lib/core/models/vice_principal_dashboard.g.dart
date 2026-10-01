// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vice_principal_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VicePrincipalDashboard _$VicePrincipalDashboardFromJson(
  Map<String, dynamic> json,
) => _VicePrincipalDashboard(
  totalStudents: (json['total_students'] as num?)?.toInt(),
  totalTeachers: (json['total_teachers'] as num?)?.toInt(),
  studentAttendancePct: (json['student_attendance_pct'] as num?)?.toDouble(),
  todayTeacherAttendance: json['today_teacher_attendance'] == null
      ? null
      : TodayTeacherAttendance.fromJson(
          json['today_teacher_attendance'] as Map<String, dynamic>,
        ),
  pendingLeaveRequests: json['pending_leave_requests'] == null
      ? null
      : PendingLeaveCounts.fromJson(
          json['pending_leave_requests'] as Map<String, dynamic>,
        ),
  upcomingExams:
      (json['upcoming_exams'] as List<dynamic>?)
          ?.map((e) => DashboardExam.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DashboardExam>[],
  upcomingEvents:
      (json['upcoming_events'] as List<dynamic>?)
          ?.map((e) => SchoolEvent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SchoolEvent>[],
  pendingHomework: (json['pending_homework'] as num?)?.toInt() ?? 0,
  recentAnnouncements:
      (json['recent_announcements'] as List<dynamic>?)
          ?.map((e) => SchoolNotice.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SchoolNotice>[],
);

Map<String, dynamic> _$VicePrincipalDashboardToJson(
  _VicePrincipalDashboard instance,
) => <String, dynamic>{
  'total_students': instance.totalStudents,
  'total_teachers': instance.totalTeachers,
  'student_attendance_pct': instance.studentAttendancePct,
  'today_teacher_attendance': instance.todayTeacherAttendance,
  'pending_leave_requests': instance.pendingLeaveRequests,
  'upcoming_exams': instance.upcomingExams,
  'upcoming_events': instance.upcomingEvents,
  'pending_homework': instance.pendingHomework,
  'recent_announcements': instance.recentAnnouncements,
};

_TodayTeacherAttendance _$TodayTeacherAttendanceFromJson(
  Map<String, dynamic> json,
) => _TodayTeacherAttendance(
  present: (json['present'] as num?)?.toInt() ?? 0,
  total: (json['total'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TodayTeacherAttendanceToJson(
  _TodayTeacherAttendance instance,
) => <String, dynamic>{'present': instance.present, 'total': instance.total};
