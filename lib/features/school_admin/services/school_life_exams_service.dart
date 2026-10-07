import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_school_life_exams.dart';
import '../../../core/models/subject_ref.dart';
import '../../../core/models/teacher_exams.dart';

/// Every `/admin/academic/exam*` call the web's features/exams services
/// make (adminExamTypeService, adminExamService, adminExamScheduleService,
/// adminExamMarkService, adminExamResultService) — backend
/// features/admin/academic/academic.router.js, writes `authorize('School
/// Admin')`. Plus the subject picker (GET /admin/academic/subjects) and the
/// active-session lookup "Add Exam" needs.
class SchoolLifeExamsService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(
    String path,
    T Function(Map<String, dynamic>) fromJson, {
    Map<String, dynamic>? query,
  }) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  // ── Exam types ─────────────────────────────────────────────────────────

  /// [isActive] null lists every type (Exam Types page); `true` only the
  /// selectable ones (Add Exam / the "Active Exam Types" tile).
  Future<Result<List<AdminExamType>>> listExamTypes({bool? isActive}) => guard(
    () => _list(
      '/admin/academic/exam-types',
      AdminExamType.fromJson,
      query: {if (isActive != null) 'is_active': isActive},
    ),
  );

  Future<Result<void>> createExamType(String typeName) =>
      guard(() async => _dio.post('/admin/academic/exam-types', data: {'type_name': typeName}));

  Future<Result<void>> updateExamType(String examTypeId, String typeName) =>
      guard(() async => _dio.patch('/admin/academic/exam-types/$examTypeId', data: {'type_name': typeName}));

  /// Soft deactivate — the backend never hard-deletes an exam type.
  Future<Result<void>> deactivateExamType(String examTypeId) =>
      guard(() async => _dio.delete('/admin/academic/exam-types/$examTypeId'));

  // ── Exams ──────────────────────────────────────────────────────────────

  Future<Result<List<AdminExam>>> listExams() => guard(() => _list('/admin/academic/exams', AdminExam.fromJson));

  /// Blank dates are omitted, like the web's useAdminExamForm.
  Future<Result<void>> createExam({
    required String examTypeId,
    required String sessionId,
    required String examName,
    String? startDate,
    String? endDate,
  }) => guard(
    () async => _dio.post(
      '/admin/academic/exams',
      data: {
        'exam_type_id': examTypeId,
        'session_id': sessionId,
        'exam_name': examName,
        'start_date': ?startDate,
        'end_date': ?endDate,
      },
    ),
  );

  /// exam_type_id/session_id are immutable after creation (PATCH only
  /// takes exam_name/start_date/end_date).
  Future<Result<void>> updateExam(String examId, {required String examName, String? startDate, String? endDate}) =>
      guard(
        () async => _dio.patch(
          '/admin/academic/exams/$examId',
          data: {'exam_name': examName, 'start_date': ?startDate, 'end_date': ?endDate},
        ),
      );

  /// 409s once schedules exist under the exam.
  Future<Result<void>> deleteExam(String examId) => guard(() async => _dio.delete('/admin/academic/exams/$examId'));

  // ── Schedules (datesheet) ──────────────────────────────────────────────

  Future<Result<List<AdminExamSchedule>>> listSchedules(String examId) =>
      guard(() => _list('/admin/academic/exam-schedules', AdminExamSchedule.fromJson, query: {'exam_id': examId}));

  /// [datesheet] is the web's `datesheet` object (exam_date/start_time/
  /// end_time only when set, max_marks/passing_marks always, room when set).
  Future<Result<void>> createSchedule({
    required String examId,
    required String classId,
    required String sectionId,
    required String subjectId,
    required Map<String, dynamic> datesheet,
  }) => guard(
    () async => _dio.post(
      '/admin/academic/exam-schedules',
      data: {'exam_id': examId, 'class_id': classId, 'section_id': sectionId, 'subject_id': subjectId, ...datesheet},
    ),
  );

  /// Datesheet fields only — class/section/subject aren't editable.
  Future<Result<void>> updateSchedule(String examScheduleId, Map<String, dynamic> datesheet) =>
      guard(() async => _dio.patch('/admin/academic/exam-schedules/$examScheduleId', data: datesheet));

  /// 409s once any mark on the schedule is entered or marked absent.
  Future<Result<void>> deleteSchedule(String examScheduleId) =>
      guard(() async => _dio.delete('/admin/academic/exam-schedules/$examScheduleId'));

  // ── Marks ──────────────────────────────────────────────────────────────

  Future<Result<List<ExamMarkEntry>>> listMarks(String examScheduleId) =>
      guard(() => _list('/admin/academic/exam-schedules/$examScheduleId/marks', ExamMarkEntry.fromJson));

  /// One field per call, exactly like the web's per-field commit
  /// (`marks_obtained` / `attendance_status` / `grade` / `remarks`). 400s
  /// when marks exceed the schedule's max_marks.
  Future<Result<void>> updateMark(String markId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/academic/exam-marks/$markId', data: payload));

  /// exam_id, class_id and section_id are all required by the backend.
  Future<Result<List<MarksEntryStatus>>> marksEntryStatus({
    required String examId,
    required String classId,
    required String sectionId,
  }) => guard(
    () => _list(
      '/admin/academic/exam-marks/status',
      MarksEntryStatus.fromJson,
      query: {'exam_id': examId, 'class_id': classId, 'section_id': sectionId},
    ),
  );

  // ── Results ────────────────────────────────────────────────────────────

  Future<Result<AdminExamResultSummary>> resultSummary(
    String examId, {
    required String classId,
    required String sectionId,
  }) => guard(() async {
    final res = await _dio.get(
      '/admin/academic/exams/$examId/results',
      queryParameters: {'class_id': classId, 'section_id': sectionId},
    );
    return AdminExamResultSummary.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<AdminReportCard>> reportCard(String examId, String studentId) => guard(() async {
    final res = await _dio.get('/admin/academic/exams/$examId/results/$studentId/report-card');
    return AdminReportCard.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// Idempotent upsert — one call publishes or unpublishes a class/section.
  Future<Result<void>> setPublishStatus(
    String examId, {
    required String classId,
    required String sectionId,
    required bool isPublished,
  }) => guard(
    () async => _dio.patch(
      '/admin/academic/exams/$examId/publish-status',
      data: {'class_id': classId, 'section_id': sectionId, 'is_published': isPublished},
    ),
  );

  // ── Lookups ────────────────────────────────────────────────────────────

  /// useAdminSubjectOptions — active subjects only.
  Future<Result<List<SubjectRef>>> activeSubjects() =>
      guard(() => _list('/admin/academic/subjects', SubjectRef.fromJson, query: {'is_active': true}));

  /// The active session (see [ActiveAcademicSession]). 400s with "No active
  /// academic session found for your institution" when there is none.
  Future<Result<ActiveAcademicSession>> activeSession() => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/overview');
    return ActiveAcademicSession.fromJson(res.data['data'] as Map<String, dynamic>);
  });
}
