import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_school_life_events.dart';
import '../../../core/models/admin_school_life_records.dart';
import '../../../core/models/school_admin_settings.dart';
import '../../../core/models/student_brief.dart';

/// Discipline Records, Student/Staff Leaves, Events and Activities — the
/// web's adminDisciplineService, leavesAdminService,
/// leavesStaffAdminService, eventsService and activitiesService.
class SchoolLifeService {
  Dio get _dio => DioClient.instance.dio;

  Map<String, dynamic> _data(Response<dynamic> res) => res.data['data'] as Map<String, dynamic>;

  // ── Discipline (admin/student/student.router.js) ───────────────────────

  Future<Result<AdminDisciplinePage>> listDiscipline(DisciplineListQuery q) => guard(() async {
    final res = await _dio.get('/admin/students/discipline', queryParameters: q.toParams());
    return AdminDisciplinePage.fromJson(_data(res));
  });

  /// The list page's only write: `status: RESOLVED` (+ optional remarks);
  /// the backend stamps resolved_at.
  Future<Result<void>> resolveDiscipline(String disciplineId, {String? remarks}) => guard(
    () async =>
        _dio.patch('/admin/students/discipline/$disciplineId', data: {'status': 'RESOLVED', 'remarks': ?remarks}),
  );

  // ── Student leaves (read-only — the Class Teacher approves) ────────────

  Future<Result<AdminStudentLeavePage>> listStudentLeaves(SchoolLeaveQuery q) => guard(() async {
    final res = await _dio.get('/admin/students/leaves', queryParameters: q.toParams());
    return AdminStudentLeavePage.fromJson(_data(res));
  });

  // ── Staff leaves (admin/staff/staff.router.js) ─────────────────────────

  Future<Result<AdminStaffLeavePage>> listStaffLeaves(SchoolLeaveQuery q) => guard(() async {
    final res = await _dio.get('/admin/staff/leaves', queryParameters: q.toParams());
    return AdminStaffLeavePage.fromJson(_data(res));
  });

  Future<Result<List<RoleRef>>> staffLeaveRoles() => guard(() async {
    final res = await _dio.get('/admin/staff/leaves/roles');
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => RoleRef.fromJson(e as Map<String, dynamic>)).toList();
  });

  /// [approve] picks PATCH …/approve vs …/reject; blank remarks are omitted.
  Future<Result<void>> decideStaffLeave(String leaveId, {required bool approve, String? remarks}) => guard(
    () async =>
        _dio.patch('/admin/staff/leaves/$leaveId/${approve ? 'approve' : 'reject'}', data: {'remarks': ?remarks}),
  );

  // ── Events (admin/events/events.router.js) ─────────────────────────────

  Future<Result<AdminSchoolEventPage>> listEvents(SchoolEventQuery q) => guard(() async {
    final res = await _dio.get('/admin/events', queryParameters: q.toParams());
    return AdminSchoolEventPage.fromJson(_data(res));
  });

  /// [payload] is `{ event_name, description?, event_date? }` (web useEventForm).
  Future<Result<void>> createEvent(Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admin/events', data: payload));

  Future<Result<void>> updateEvent(String eventId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/events/$eventId', data: payload));

  Future<Result<void>> deleteEvent(String eventId) => guard(() async => _dio.delete('/admin/events/$eventId'));

  // ── Activities (admin/activities/activities.router.js) ─────────────────

  Future<Result<AdminSchoolActivityPage>> listActivities(SchoolActivityQuery q) => guard(() async {
    final res = await _dio.get('/admin/activities', queryParameters: q.toParams());
    return AdminSchoolActivityPage.fromJson(_data(res));
  });

  Future<Result<void>> createActivity(Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admin/activities', data: payload));

  Future<Result<void>> updateActivity(String activityId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/activities/$activityId', data: payload));

  /// Real delete; cascades to the participant roster.
  Future<Result<void>> deleteActivity(String activityId) =>
      guard(() async => _dio.delete('/admin/activities/$activityId'));

  Future<Result<List<ActivityParticipant>>> listParticipants(String activityId) => guard(() async {
    final res = await _dio.get('/admin/activities/$activityId/participants');
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => ActivityParticipant.fromJson(e as Map<String, dynamic>)).toList();
  });

  Future<Result<AddParticipantsResult>> addParticipants(
    String activityId, {
    required List<String> studentIds,
    required List<String> staffIds,
  }) => guard(() async {
    final res = await _dio.post(
      '/admin/activities/$activityId/participants',
      data: {'student_ids': studentIds, 'staff_ids': staffIds},
    );
    return AddParticipantsResult.fromJson(_data(res));
  });

  /// Blank result/remarks are sent as null (clears them), like the web.
  Future<Result<void>> updateParticipant(String activityId, String participantId, {String? result, String? remarks}) =>
      guard(
        () async => _dio.patch(
          '/admin/activities/$activityId/participants/$participantId',
          data: {'result': result, 'remarks': remarks},
        ),
      );

  Future<Result<void>> removeParticipant(String activityId, String participantId) =>
      guard(() async => _dio.delete('/admin/activities/$activityId/participants/$participantId'));

  /// Add Participants' student picker — GET /admin/students?search=&limit=50
  /// (admin/student/student.service.js STUDENT_LIST_SELECT; StudentBrief
  /// reads its student_id/admission_no/roll_no/applicants/current_class/
  /// current_section).
  Future<Result<List<StudentBrief>>> searchStudents(String search) => guard(() async {
    final res = await _dio.get('/admin/students', queryParameters: {'search': search, 'limit': 50});
    final data = (res.data['data'] as Map<String, dynamic>)['data'] as List? ?? const [];
    return data.map((e) => StudentBrief.fromJson(e as Map<String, dynamic>)).toList();
  });
}

/// GET /admin/students/discipline filters (web AdminDisciplineListPage).
/// A record so it's value-equal and can key a family provider. `from`/`to`
/// are only sent when both are set — the backend ignores a half range.
typedef DisciplineListQuery = ({
  String status,
  String severity,
  String classId,
  String sectionId,
  String from,
  String to,
  int page,
});

extension DisciplineListQueryParams on DisciplineListQuery {
  Map<String, dynamic> toParams() => {
    if (status.isNotEmpty) 'status': status,
    if (severity.isNotEmpty) 'severity': severity,
    if (classId.isNotEmpty) 'class_id': classId,
    if (sectionId.isNotEmpty) 'section_id': sectionId,
    if (from.isNotEmpty && to.isNotEmpty) 'from': from,
    if (from.isNotEmpty && to.isNotEmpty) 'to': to,
    'page': page,
  };
}

/// Student/Staff leave filters (useLeavesList / useStaffLeavesList):
/// page size 20; `role` only applies to staff leaves.
typedef SchoolLeaveQuery = ({String status, String leaveType, String role, int page});

extension SchoolLeaveQueryParams on SchoolLeaveQuery {
  Map<String, dynamic> toParams() => {
    'page': page,
    'limit': 20,
    if (status.isNotEmpty) 'status': status,
    if (leaveType.isNotEmpty) 'leave_type': leaveType,
    if (role.isNotEmpty) 'role': role,
  };
}

/// GET /admin/events (useEventList): `from`/`to` are `YYYY-MM-DD`.
typedef SchoolEventQuery = ({String from, String to, int page, int limit});

extension SchoolEventQueryParams on SchoolEventQuery {
  Map<String, dynamic> toParams() => {
    if (from.isNotEmpty) 'from': from,
    if (to.isNotEmpty) 'to': to,
    'page': page,
    'limit': limit,
  };
}

/// GET /admin/activities (useActivityList).
typedef SchoolActivityQuery = ({String from, String to, String targetAudience, int page, int limit});

extension SchoolActivityQueryParams on SchoolActivityQuery {
  Map<String, dynamic> toParams() => {
    if (from.isNotEmpty) 'from': from,
    if (to.isNotEmpty) 'to': to,
    if (targetAudience.isNotEmpty) 'target_audience': targetAudience,
    'page': page,
    'limit': limit,
  };
}
