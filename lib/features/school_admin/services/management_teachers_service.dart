import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_management.dart';
import '../../../core/models/timetable_entry.dart';

/// Teacher Management (web features/teachers/services/
/// teacherManagementService.js) — backend admin/staff/staff.router.js
/// class-teacher-assignments*, class-teacher/* and reports/*, plus the
/// timetable (academic.router.js) and exam picker. Writes (assign / bulk /
/// remove) are `authorize('School Admin')`. The class and staff pickers
/// reuse the portal's existing providers (adminClassOptionsProvider,
/// staffListProvider) instead of re-fetching.
class TeacherManagementService {
  Dio get _dio => DioClient.instance.dio;

  Map<String, dynamic> _map(Response<dynamic> res) => (res.data['data'] as Map?)?.cast<String, dynamic>() ?? const {};

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson, [Map<String, dynamic>? q]) async {
    final res = await _dio.get(path, queryParameters: q);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  // ── Class Teacher assignments ──────────────────────────────────────────

  Future<Result<List<ClassTeacherAssignmentRecord>>> getAssignments({required String sessionId}) => guard(
    () => _list('/admin/staff/class-teacher-assignments', ClassTeacherAssignmentRecord.fromJson, {
      'session_id': sessionId,
    }),
  );

  Future<Result<void>> assign({
    required String staffId,
    required String classId,
    required String sectionId,
    required String sessionId,
  }) => guard(
    () async => _dio.post(
      '/admin/staff/class-teacher-assignments',
      data: {'staff_id': staffId, 'class_id': classId, 'section_id': sectionId, 'session_id': sessionId},
    ),
  );

  /// [rows] are `{ staff_id, class_id, section_id, session_id }` maps.
  Future<Result<ClassTeacherBulkResult>> bulkAssign(List<Map<String, String>> rows) => guard(() async {
    final res = await _dio.post('/admin/staff/class-teacher-assignments/bulk', data: {'assignments': rows});
    return ClassTeacherBulkResult.fromJson(_map(res));
  });

  Future<Result<void>> remove(String assignmentId) =>
      guard(() async => _dio.delete('/admin/staff/class-teacher-assignments/$assignmentId'));

  Future<Result<ClassTeacherHistoryPage>> getHistory({String classId = '', String sectionId = '', int page = 1}) =>
      guard(() async {
        final res = await _dio.get(
          '/admin/staff/class-teacher-assignments/history',
          queryParameters: {
            if (classId.isNotEmpty) 'class_id': classId,
            if (sectionId.isNotEmpty) 'section_id': sectionId,
            'page': page,
          },
        );
        return ClassTeacherHistoryPage.fromJson(_map(res));
      });

  // ── Insights (no session_id: the backend resolves the active session) ──

  Future<Result<ClassTeacherDashboard>> getDashboard() => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/dashboard');
    return ClassTeacherDashboard.fromJson(_map(res));
  });

  Future<Result<ClassTeacherOverview>> getOverview() => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/overview');
    return ClassTeacherOverview.fromJson(_map(res));
  });

  Future<Result<ClassTeacherAttendanceMonitoring>> getAttendanceMonitoring() => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/attendance-monitoring');
    return ClassTeacherAttendanceMonitoring.fromJson(_map(res));
  });

  Future<Result<ClassTeacherHomeworkMonitoring>> getHomeworkMonitoring() => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/homework-monitoring');
    return ClassTeacherHomeworkMonitoring.fromJson(_map(res));
  });

  /// Blank [examId] = the session's latest exam (backend default).
  Future<Result<ClassTeacherPerformanceMonitoring>> getPerformanceMonitoring(String examId) => guard(() async {
    final res = await _dio.get(
      '/admin/staff/class-teacher/performance-monitoring',
      queryParameters: {if (examId.isNotEmpty) 'exam_id': examId},
    );
    return ClassTeacherPerformanceMonitoring.fromJson(_map(res));
  });

  Future<Result<ClassTeacherRosterStats>> getRosterStats(String assignmentId) => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/$assignmentId/students');
    return ClassTeacherRosterStats.fromJson(_map(res));
  });

  // ── Teacher reports ────────────────────────────────────────────────────

  Future<Result<List<TeacherWorkloadRow>>> getWorkload() =>
      guard(() => _list('/admin/staff/reports/workload', TeacherWorkloadRow.fromJson));

  Future<Result<List<TeacherHomeworkStatusRow>>> getHomeworkStatus() =>
      guard(() => _list('/admin/staff/reports/homework-status', TeacherHomeworkStatusRow.fromJson));

  Future<Result<List<TeacherMarksEntryRow>>> getMarksEntryStatus(String examId) =>
      guard(() => _list('/admin/staff/reports/marks-entry-status', TeacherMarksEntryRow.fromJson, {'exam_id': examId}));

  /// Exam pickers — GET /admin/academic/exams (all sessions, newest first).
  Future<Result<List<ManagementExamOption>>> getExams() =>
      guard(() => _list('/admin/academic/exams', ManagementExamOption.fromJson));

  /// One teacher's periods for a session — GET /admin/academic/timetable.
  Future<Result<List<TimetableEntry>>> getTeacherTimetable({required String staffId, required String sessionId}) =>
      guard(
        () =>
            _list('/admin/academic/timetable', TimetableEntry.fromJson, {'staff_id': staffId, 'session_id': sessionId}),
      );

  // ── Principal Management ───────────────────────────────────────────────

  /// GET /admin/principal-activity?limit= (School Admin only, capped at 50).
  Future<Result<List<PrincipalActivityItem>>> getPrincipalActivity({int limit = 20}) =>
      guard(() => _list('/admin/principal-activity', PrincipalActivityItem.fromJson, {'limit': limit}));
}
