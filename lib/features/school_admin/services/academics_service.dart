import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_academics.dart';
import '../../../core/models/teacher_academics.dart';
import '../../../core/models/teacher_homework.dart';

/// Homework vs Assignment — one table (`academic_homework.type`), two
/// endpoint families on the backend (`/homework…` and `/assignments…`).
enum AcademicsWorkKind {
  homework('homework'),
  assignment('assignments');

  const AcademicsWorkKind(this.path);

  /// The URL segment under /admin/academic.
  final String path;
}

/// Every call the web's academics services (subjectsService,
/// subjectTeachersService, timetableService, syllabusService,
/// lessonPlansService) and homework services (homeworkAdminService,
/// assignmentAdminService) make — backend features/admin/academic/
/// academic.router.js (School Admin, Principal, Vice Principal read; every
/// write re-guarded to School Admin). Plus the active-session lookup the
/// web takes from Redux (see [getActiveSession]).
class AcademicsService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(
    String path,
    T Function(Map<String, dynamic>) fromJson, [
    Map<String, dynamic>? query,
  ]) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  /// The web reads `sessionId`/`sessionLabel` from /schools/by-slug, which
  /// needs the browser's subdomain. GET /admin/staff/class-teacher/overview
  /// resolves the same active session (`is_active`, newest first) for a
  /// School Admin and returns it alongside its rows.
  Future<Result<AcademicsActiveSession>> getActiveSession() => guard(() async {
    final res = await _dio.get('/admin/staff/class-teacher/overview');
    return AcademicsActiveSession.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  // ── Subjects ───────────────────────────────────────────────────────────

  /// `is_active` omitted = every subject (the catalog tab); `true` = the
  /// pickers' active-only list.
  Future<Result<List<AcademicSubject>>> listSubjects({bool? isActive}) =>
      guard(() => _list('/admin/academic/subjects', AcademicSubject.fromJson, {'is_active': ?isActive}));

  Future<Result<void>> createSubject(Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admin/academic/subjects', data: payload));

  Future<Result<void>> updateSubject(String subjectId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/academic/subjects/$subjectId', data: payload));

  /// Soft-deactivate — the backend never hard-deletes a subject.
  Future<Result<void>> deactivateSubject(String subjectId) =>
      guard(() async => _dio.delete('/admin/academic/subjects/$subjectId'));

  Future<Result<void>> activateSubject(String subjectId) =>
      guard(() async => _dio.patch('/admin/academic/subjects/$subjectId', data: {'is_active': true}));

  // ── Class ↔ subject ────────────────────────────────────────────────────

  Future<Result<List<ClassSubjectAssignment>>> listClassSubjects({String? sessionId}) =>
      guard(() => _list('/admin/academic/class-subjects', ClassSubjectAssignment.fromJson, {'session_id': ?sessionId}));

  Future<Result<void>> assignClassSubject({
    required String classId,
    required String subjectId,
    required String sessionId,
  }) => guard(
    () async => _dio.post(
      '/admin/academic/class-subjects',
      data: {'class_id': classId, 'subject_id': subjectId, 'session_id': sessionId},
    ),
  );

  Future<Result<void>> removeClassSubject(String classSubjectId) =>
      guard(() async => _dio.delete('/admin/academic/class-subjects/$classSubjectId'));

  // ── Subject teachers ───────────────────────────────────────────────────

  Future<Result<List<SubjectTeacherAssignment>>> listSubjectTeachers({String? sessionId}) => guard(
    () => _list('/admin/academic/subject-teachers', SubjectTeacherAssignment.fromJson, {'session_id': ?sessionId}),
  );

  /// Upsert: an already-assigned class+section+subject+session slot gets
  /// its teacher replaced, no error.
  Future<Result<void>> assignSubjectTeacher(Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admin/academic/subject-teachers', data: payload));

  Future<Result<void>> removeSubjectTeacher(String subjectTeacherId) =>
      guard(() async => _dio.delete('/admin/academic/subject-teachers/$subjectTeacherId'));

  // ── Timetable ──────────────────────────────────────────────────────────

  Future<Result<List<AdminTimetableEntry>>> listTimetable({
    required String classId,
    required String sectionId,
    String? sessionId,
  }) => guard(
    () => _list('/admin/academic/timetable', AdminTimetableEntry.fromJson, {
      'class_id': classId,
      'section_id': sectionId,
      'session_id': ?sessionId,
    }),
  );

  Future<Result<void>> createTimetableEntry(Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admin/academic/timetable', data: payload));

  Future<Result<void>> updateTimetableEntry(String entryId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/academic/timetable/$entryId', data: payload));

  Future<Result<void>> deleteTimetableEntry(String entryId) =>
      guard(() async => _dio.delete('/admin/academic/timetable/$entryId'));

  Future<Result<TimetableSettings>> getTimetableSettings() => guard(() async {
    final res = await _dio.get('/admin/academic/timetable/settings');
    final data = res.data['data'];
    return data is Map<String, dynamic> ? TimetableSettings.fromJson(data) : const TimetableSettings();
  });

  Future<Result<void>> updateWorkingDays(List<int> days) =>
      guard(() async => _dio.patch('/admin/academic/timetable/settings', data: {'working_days': days}));

  // ── Syllabus ───────────────────────────────────────────────────────────

  Future<Result<List<SyllabusEntry>>> listSyllabus({
    String? classId,
    String? sectionId,
    String? subjectId,
    String? sessionId,
  }) => guard(
    () => _list('/admin/academic/syllabus', SyllabusEntry.fromJson, {
      'class_id': ?classId,
      'section_id': ?sectionId,
      'subject_id': ?subjectId,
      'session_id': ?sessionId,
    }),
  );

  Future<Result<void>> createSyllabus(Map<String, dynamic> payload) =>
      guard(() async => _dio.post('/admin/academic/syllabus', data: payload));

  Future<Result<void>> updateSyllabus(String syllabusId, Map<String, dynamic> payload) =>
      guard(() async => _dio.patch('/admin/academic/syllabus/$syllabusId', data: payload));

  Future<Result<void>> deleteSyllabus(String syllabusId) =>
      guard(() async => _dio.delete('/admin/academic/syllabus/$syllabusId'));

  // ── Lesson plans (read-only oversight) ─────────────────────────────────

  Future<Result<List<AdminLessonPlan>>> listLessonPlans({String? classId, String? subjectId, String? sessionId}) =>
      guard(
        () => _list('/admin/academic/lesson-plans', AdminLessonPlan.fromJson, {
          'class_id': ?classId,
          'subject_id': ?subjectId,
          'session_id': ?sessionId,
        }),
      );

  // ── Homework / assignments (read-only oversight) ───────────────────────

  /// GET /admin/academic/homework sends `type=HOMEWORK` (the web's
  /// Homework tab); /assignments is server-scoped to ASSIGNMENT.
  Future<Result<List<AdminHomeworkRecord>>> listWork(AcademicsWorkKind kind, Map<String, dynamic> query) =>
      guard(() => _list('/admin/academic/${kind.path}', AdminHomeworkRecord.fromJson, query));

  /// Both submission endpoints return the same rows (homework.service.js
  /// #getHomeworkSubmissions) — the teacher model's shape, minus the
  /// teacher-only `effective_status`.
  Future<Result<List<TeacherSubmission>>> listSubmissions(AcademicsWorkKind kind, String homeworkId) =>
      guard(() => _list('/admin/academic/${kind.path}/$homeworkId/submissions', TeacherSubmission.fromJson));

  Future<Result<List<HomeworkComment>>> listComments(AcademicsWorkKind kind, String homeworkId) =>
      guard(() => _list('/admin/academic/${kind.path}/$homeworkId/comments', HomeworkComment.fromJson));
}

/// `YYYY-MM-DD` (the web's `<input type="date">` value).
String academicsIsoDate(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
