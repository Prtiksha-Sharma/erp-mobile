import 'package:freezed_annotation/freezed_annotation.dart';

import 'principal_dashboard.dart';
import 'school_feed.dart';

part 'vice_principal_dashboard.freezed.dart';
part 'vice_principal_dashboard.g.dart';

/// GET /vice-principal/dashboard — vice-principal/dashboard.service.js
/// #getViceprincipalDashboard. Deliberately narrower than
/// [PrincipalDashboard]: no fee figures or new-admissions, per the Vice
/// Principal Portal contract's Dashboard section.
///
/// - `student_attendance_pct` is null when nothing was marked today.
/// - `upcoming_exams` reuses [DashboardExam] and `pending_leave_requests`
///   reuses [PendingLeaveCounts] — identical shapes to the principal
///   dashboard's own fields.
/// - `upcoming_events` (listEvents) and `recent_announcements` (listNotices)
///   are raw rows, same shapes as [SchoolEvent] / [SchoolNotice].
@freezed
abstract class VicePrincipalDashboard with _$VicePrincipalDashboard {
  const factory VicePrincipalDashboard({
    @JsonKey(name: 'total_students') int? totalStudents,
    @JsonKey(name: 'total_teachers') int? totalTeachers,
    @JsonKey(name: 'student_attendance_pct') double? studentAttendancePct,
    @JsonKey(name: 'today_teacher_attendance') TodayTeacherAttendance? todayTeacherAttendance,
    @JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? pendingLeaveRequests,
    @JsonKey(name: 'upcoming_exams') @Default(<DashboardExam>[]) List<DashboardExam> upcomingExams,
    @JsonKey(name: 'upcoming_events') @Default(<SchoolEvent>[]) List<SchoolEvent> upcomingEvents,
    @JsonKey(name: 'pending_homework') @Default(0) int pendingHomework,
    @JsonKey(name: 'recent_announcements') @Default(<SchoolNotice>[]) List<SchoolNotice> recentAnnouncements,
  }) = _VicePrincipalDashboard;

  factory VicePrincipalDashboard.fromJson(Map<String, dynamic> json) =>
      _$VicePrincipalDashboardFromJson(json);
}

/// `today_teacher_attendance` — `{ present, total }` of today's active staff.
@freezed
abstract class TodayTeacherAttendance with _$TodayTeacherAttendance {
  const factory TodayTeacherAttendance({
    @Default(0) int present,
    @Default(0) int total,
  }) = _TodayTeacherAttendance;

  factory TodayTeacherAttendance.fromJson(Map<String, dynamic> json) =>
      _$TodayTeacherAttendanceFromJson(json);
}
