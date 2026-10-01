import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'school_feed.dart';

part 'principal_dashboard.freezed.dart';
part 'principal_dashboard.g.dart';

/// GET /principal/dashboard — principal/dashboard.service.js
/// #getPrincipalDashboard, one aggregated response for every dashboard card.
///
/// - Counts (`total_*`, `new_admissions`, `complaints_open`) are Prisma
///   `count()`s / `Set.size` — plain JSON numbers.
/// - `fee_collection_today` / `pending_fee_amount` are service-computed
///   (admin/fees/dashboard.service.js `Number(_sum)`, utils/feeDues.js
///   `total_pending`), so they arrive as JSON numbers, read as Decimal.
/// - `today_attendance` is reports.service.js#getAttendanceSummaryReport's
///   `summary`: `{ <status>: count }` for whichever statuses were marked.
/// - `student_attendance_pct` is null when nothing was marked today.
/// - `announcements` are raw `notices` rows (listNotices), `upcoming_events`
///   are `events` rows (listEvents) plus a flattened `approval_status` —
///   Prisma `@map`s the activity_* columns, so the wire names are event_*.
@freezed
abstract class PrincipalDashboard with _$PrincipalDashboard {
  const factory PrincipalDashboard({
    @JsonKey(name: 'total_students') int? totalStudents,
    @JsonKey(name: 'total_teachers') int? totalTeachers,
    @JsonKey(name: 'total_staff') int? totalStaff,
    @JsonKey(name: 'today_attendance') @Default(<String, int>{}) Map<String, int> todayAttendance,
    @JsonKey(name: 'student_attendance_pct') double? studentAttendancePct,
    @JsonKey(name: 'fee_collection_today') @DecimalConverter() required Decimal feeCollectionToday,
    @JsonKey(name: 'pending_fee_amount') @DecimalConverter() required Decimal pendingFeeAmount,
    @JsonKey(name: 'pending_leave_requests') PendingLeaveCounts? pendingLeaveRequests,
    @JsonKey(name: 'new_admissions') @Default(0) int newAdmissions,
    @JsonKey(name: 'upcoming_exams') @Default(<DashboardExam>[]) List<DashboardExam> upcomingExams,
    @Default(<SchoolNotice>[]) List<SchoolNotice> announcements,
    @JsonKey(name: 'upcoming_events') @Default(<SchoolEvent>[]) List<SchoolEvent> upcomingEvents,
    @JsonKey(name: 'class_teacher_vacancy') ClassTeacherVacancy? classTeacherVacancy,
    @JsonKey(name: 'complaints_open') @Default(0) int complaintsOpen,
  }) = _PrincipalDashboard;

  factory PrincipalDashboard.fromJson(Map<String, dynamic> json) => _$PrincipalDashboardFromJson(json);
}

/// `pending_leave_requests` — `.total` of the staff and student pending
/// leave lists.
@freezed
abstract class PendingLeaveCounts with _$PendingLeaveCounts {
  const factory PendingLeaveCounts({
    @Default(0) int staff,
    @Default(0) int student,
  }) = _PendingLeaveCounts;

  factory PendingLeaveCounts.fromJson(Map<String, dynamic> json) => _$PendingLeaveCountsFromJson(json);
}

/// One `upcoming_exams` row — the service maps exams to
/// `{ exam_id, exam_name, start_date, exam_type }` (exam_type is the
/// exam_types.type_name, or null).
@freezed
abstract class DashboardExam with _$DashboardExam {
  const factory DashboardExam({
    @JsonKey(name: 'exam_id') required String examId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'exam_type') String? examType,
  }) = _DashboardExam;

  factory DashboardExam.fromJson(Map<String, dynamic> json) => _$DashboardExamFromJson(json);
}

/// `class_teacher_vacancy` — classTeacherInsights.service.js#getOverview's
/// section count and how many have no Class Teacher assigned.
@freezed
abstract class ClassTeacherVacancy with _$ClassTeacherVacancy {
  const factory ClassTeacherVacancy({
    @JsonKey(name: 'total_sections') @Default(0) int totalSections,
    @Default(0) int unassigned,
  }) = _ClassTeacherVacancy;

  factory ClassTeacherVacancy.fromJson(Map<String, dynamic> json) => _$ClassTeacherVacancyFromJson(json);
}
