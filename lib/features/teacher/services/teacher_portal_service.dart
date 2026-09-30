import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/school_feed.dart';
import '../../../core/models/staff_profile.dart';
import '../../../core/models/staff_self_service.dart';
import '../../../core/models/student_records.dart';
import '../../../core/models/teacher_academics.dart';
import '../../../core/models/teacher_classroom.dart';
import '../../../core/models/teacher_exams.dart';
import '../../../core/models/teacher_homework.dart';
import '../../../core/models/timetable_entry.dart';

/// Every `/teacher/*` endpoint except messaging — mirrors the web's
/// teacherPortalService.js plus the three Class-Teacher services the web
/// keeps under other features (attendanceTeacherService.js,
/// leavesTeacherService.js, teacherDashboardService.js). All routes resolve
/// the teacher from the JWT server-side (resolveSubjectTeacher /
/// resolveClassTeacher); no staffId is ever sent.
///
/// Class-Teacher-only routes (attendance, leaves, my-class) 403 for a plain
/// Teacher — screens gate on [TeacherRoles.isClassTeacher] first, like the
/// web's useIsClassTeacher().
class TeacherPortalService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson,
      {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson, {Map<String, dynamic>? query}) async {
    final res = await _dio.get(path, queryParameters: query);
    return fromJson(res.data['data'] as Map<String, dynamic>);
  }

  // ── Profile ────────────────────────────────────────────────────────────
  Future<Result<StaffProfile>> getMyProfile() => guard(() => _one('/teacher/profile', StaffProfile.fromJson));

  /// Only contact_number / address / profile_photo_url are accepted
  /// (profile.service.js SELF_EDITABLE_FIELDS). An empty field is sent as
  /// null, same as the web's useEditProfileForm.
  Future<Result<StaffProfile>> updateMyProfile({String? contactNumber, String? address}) => guard(() async {
        final res = await _dio.patch('/teacher/profile', data: {
          'contact_number': _blankToNull(contactNumber),
          'address': _blankToNull(address),
        });
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// "Delete" on the web's photo editor — PATCH profile_photo_url: null.
  Future<Result<StaffProfile>> removeMyProfilePhoto() => guard(() async {
        final res = await _dio.patch('/teacher/profile', data: {'profile_photo_url': null});
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  /// Multipart field `photo` (lib/staffPhotoUpload.js: JPG/PNG/WebP, 2 MB).
  /// The MIME type must be explicit — multer rejects octet-stream.
  Future<Result<StaffProfile>> uploadMyProfilePhoto(UploadFile photo) => guard(() async {
        final res = await _dio.post('/teacher/profile/photo', data: FormData.fromMap({'photo': photo.toMultipart()}));
        return StaffProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  // ── Subjects / timetable / lesson plans / syllabus ─────────────────────
  Future<Result<List<SubjectAssignment>>> getMySubjects() =>
      guard(() => _list('/teacher/subjects', SubjectAssignment.fromJson));

  Future<Result<List<TimetableEntry>>> getMyTimetable() =>
      guard(() => _list('/teacher/timetable', TimetableEntry.fromJson));

  Future<Result<List<LessonPlan>>> getMyLessonPlans() =>
      guard(() => _list('/teacher/lesson-plans', LessonPlan.fromJson));

  /// Body mirrors the web's useLessonPlanForm create payload — optional
  /// fields are omitted entirely when blank.
  Future<Result<void>> createLessonPlan({
    required String classId,
    String? sectionId,
    required String subjectId,
    required String sessionId,
    required String topic,
    String? description,
    DateTime? plannedDate,
    String? attachmentUrl,
  }) =>
      guard(() async {
        await _dio.post('/teacher/lesson-plans', data: {
          'class_id': classId,
          'subject_id': subjectId,
          'session_id': sessionId,
          'topic': topic.trim(),
          'section_id': ?_blankToNull(sectionId),
          'description': ?_blankToNull(description),
          if (plannedDate != null) 'planned_date': isoDate(plannedDate),
          'attachment_url': ?_blankToNull(attachmentUrl),
        });
      });

  /// Web's edit payload: blank description/attachment are left unchanged
  /// (omitted), a blank planned date clears it (null).
  Future<Result<void>> updateLessonPlan(
    String lessonPlanId, {
    required String topic,
    String? description,
    DateTime? plannedDate,
    String? attachmentUrl,
    required String status,
  }) =>
      guard(() async {
        await _dio.patch('/teacher/lesson-plans/$lessonPlanId', data: {
          'topic': topic.trim(),
          'description': ?_blankToNull(description),
          'planned_date': plannedDate == null ? null : isoDate(plannedDate),
          'attachment_url': ?_blankToNull(attachmentUrl),
          'status': status,
        });
      });

  Future<Result<void>> deleteLessonPlan(String lessonPlanId) =>
      guard(() async => _dio.delete('/teacher/lesson-plans/$lessonPlanId'));

  Future<Result<List<SyllabusEntry>>> getMySyllabus() =>
      guard(() => _list('/teacher/syllabus', SyllabusEntry.fromJson));

  Future<Result<void>> updateSyllabusProgress(String syllabusId, String status) =>
      guard(() async => _dio.patch('/teacher/syllabus/$syllabusId', data: {'status': status}));

  // ── Marks entry ────────────────────────────────────────────────────────
  Future<Result<List<TeacherExam>>> getMyExams() => guard(() => _list('/teacher/exams', TeacherExam.fromJson));

  Future<Result<List<MarksEntryStatus>>> getMyExamMarksStatus(String examId) =>
      guard(() => _list('/teacher/exam-marks/status', MarksEntryStatus.fromJson, query: {'exam_id': examId}));

  Future<Result<List<ExamMarkEntry>>> getMyExamMarks(String examScheduleId) =>
      guard(() => _list('/teacher/exam-schedules/$examScheduleId/marks', ExamMarkEntry.fromJson));

  /// Exactly one field per call, like the web's blur-save table: marks
  /// (null clears), attendance_status, or remarks (null clears). The server
  /// validates marks against max_marks and returns that message verbatim.
  Future<Result<void>> updateMyExamMark(String markId, Map<String, dynamic> patch) =>
      guard(() async => _dio.patch('/teacher/exam-marks/$markId', data: patch));

  // ── Own attendance & leaves ────────────────────────────────────────────
  Future<Result<StaffAttendanceSummary>> getMyAttendance({String period = 'month'}) => guard(
      () => _one('/teacher/my-attendance', StaffAttendanceSummary.fromJson, query: {'period': period}));

  Future<Result<List<StaffLeave>>> getMyLeaves() => guard(() => _list('/teacher/my-leaves', StaffLeave.fromJson));

  Future<Result<void>> applyMyLeave({
    required String leaveType,
    required DateTime fromDate,
    required DateTime toDate,
    String? reason,
  }) =>
      guard(() async {
        await _dio.post('/teacher/my-leaves', data: {
          'leave_type': leaveType,
          'from_date': isoDate(fromDate),
          'to_date': isoDate(toDate),
          'reason': ?_blankToNull(reason),
        });
      });

  Future<Result<void>> cancelMyLeave(String leaveId) =>
      guard(() async => _dio.patch('/teacher/my-leaves/$leaveId/cancel'));

  // ── Notices / events / activities ──────────────────────────────────────
  Future<Result<List<SchoolNotice>>> getMyNotices() => guard(() => _list('/teacher/notices', SchoolNotice.fromJson));

  Future<Result<List<SchoolEvent>>> getMyEvents() => guard(() => _list('/teacher/events', SchoolEvent.fromJson));

  Future<Result<List<SchoolActivity>>> getMyActivities() =>
      guard(() => _list('/teacher/activities', SchoolActivity.fromJson));

  // ── Homework & assignments ─────────────────────────────────────────────
  /// [type] null = every row the teacher assigned (the web dashboard's
  /// "Recent Homework" reads it that way); the Homework tab passes HOMEWORK
  /// so assignments don't also show up under it.
  Future<Result<List<TeacherHomework>>> getMyWork(WorkType kind, {String? sessionId, bool allTypes = false}) =>
      guard(() => _list('/teacher/${kind.path}', TeacherHomework.fromJson, query: {
            if (kind == WorkType.homework && !allTypes) 'type': 'HOMEWORK',
            'session_id': ?sessionId,
          }));

  Future<Result<void>> createWork(
    WorkType kind, {
    required String classId,
    required String sectionId,
    required String subjectId,
    required String sessionId,
    required String title,
    required DateTime dueDate,
    DateTime? assignedDate,
    String? description,
    String? attachmentUrl,
  }) =>
      guard(() async {
        await _dio.post('/teacher/${kind.path}', data: {
          'class_id': classId,
          'section_id': sectionId,
          'subject_id': subjectId,
          'session_id': sessionId,
          'title': title.trim(),
          'due_date': isoDate(dueDate),
          'description': ?_blankToNull(description),
          if (assignedDate != null) 'assigned_date': isoDate(assignedDate),
          'attachment_url': ?_blankToNull(attachmentUrl),
        });
      });

  Future<Result<void>> updateWork(
    WorkType kind,
    String homeworkId, {
    required String title,
    required DateTime dueDate,
    String? description,
    String? attachmentUrl,
  }) =>
      guard(() async {
        await _dio.patch('/teacher/${kind.path}/$homeworkId', data: {
          'title': title.trim(),
          'due_date': isoDate(dueDate),
          'description': ?_blankToNull(description),
          'attachment_url': ?_blankToNull(attachmentUrl),
        });
      });

  Future<Result<void>> deleteWork(WorkType kind, String homeworkId) =>
      guard(() async => _dio.delete('/teacher/${kind.path}/$homeworkId'));

  Future<Result<List<TeacherSubmission>>> getSubmissions(WorkType kind, String homeworkId) =>
      guard(() => _list('/teacher/${kind.path}/$homeworkId/submissions', TeacherSubmission.fromJson));

  Future<Result<void>> addRemark(WorkType kind, String homeworkId, String submissionId, String remark) => guard(
      () async => _dio.patch('/teacher/${kind.path}/$homeworkId/submissions/$submissionId/remark', data: {'remark': remark}));

  Future<Result<List<HomeworkComment>>> getComments(WorkType kind, String homeworkId) =>
      guard(() => _list('/teacher/${kind.path}/$homeworkId/comments', HomeworkComment.fromJson));

  Future<Result<void>> addComment(WorkType kind, String homeworkId, String text) => guard(
      () async => _dio.post('/teacher/${kind.path}/$homeworkId/comments', data: {'comment_text': text.trim()}));

  // ── Class Teacher only ─────────────────────────────────────────────────
  Future<Result<ClassAttendanceRoster>> getClassRoster(DateTime date) =>
      guard(() => _one('/teacher/attendance', ClassAttendanceRoster.fromJson, query: {'date': isoDate(date)}));

  /// [checkInTime] is `HH:mm`, only sent for LATE (web handleMark).
  Future<Result<void>> markAttendance({
    required String studentId,
    required DateTime date,
    required String status,
    String? checkInTime,
  }) =>
      guard(() async {
        await _dio.post('/teacher/attendance/mark', data: {
          'student_id': studentId,
          'attendance_date': isoDate(date),
          'status': status,
          if (status == 'LATE' && checkInTime != null) 'check_in_time': checkInTime,
        });
      });

  /// POST /teacher/attendance — returns `{ marked, failed, results, errors }`.
  Future<Result<({int marked, int failed})>> markAllPresent(DateTime date, List<String> studentIds) => guard(() async {
        final res = await _dio.post('/teacher/attendance', data: {
          'attendance_date': isoDate(date),
          'records': [
            for (final id in studentIds) {'student_id': id, 'status': 'PRESENT'},
          ],
        });
        final data = res.data['data'] as Map<String, dynamic>? ?? const {};
        return (marked: (data['marked'] as num?)?.toInt() ?? 0, failed: (data['failed'] as num?)?.toInt() ?? 0);
      });

  Future<Result<List<StudentLeave>>> getClassLeaves() => guard(() => _list('/teacher/leaves', StudentLeave.fromJson));

  Future<Result<void>> decideLeave(String leaveId, {required bool approve, String? remarks}) => guard(() async {
        await _dio.patch('/teacher/leaves/$leaveId/${approve ? 'approve' : 'reject'}', data: {
          'remarks': ?_blankToNull(remarks),
        });
      });

  Future<Result<MyClassRoster>> getMyClassStudents({String? search}) => guard(() =>
      _one('/teacher/my-class/students', MyClassRoster.fromJson, query: {'search': ?_blankToNull(search)}));

  Future<Result<StudentPerformance>> getStudentPerformance(String studentId) =>
      guard(() => _one('/teacher/my-class/students/$studentId/performance', StudentPerformance.fromJson));

  Future<Result<ClassBirthdays>> getMyClassBirthdays() =>
      guard(() => _one('/teacher/my-class/birthdays', ClassBirthdays.fromJson));

  static String? _blankToNull(String? v) => (v == null || v.trim().isEmpty) ? null : v.trim();
}

/// `YYYY-MM-DD` from the picked calendar day — what the web's
/// `<input type="date">` sends.
String isoDate(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

/// Homework and Assignments are the same academic_homework table on two
/// URL prefixes (teacher/academic.router.js).
enum WorkType {
  homework('homework', 'Homework'),
  assignment('assignments', 'Assignment');

  const WorkType(this.path, this.label);

  final String path;
  final String label;
}

/// A picked file ready for a multipart upload, already validated against
/// the backend's multer limits.
class UploadFile {
  const UploadFile({required this.name, required this.bytes, required this.mimeType});

  final String name;
  final List<int> bytes;
  final String mimeType;

  MultipartFile toMultipart() =>
      MultipartFile.fromBytes(bytes, filename: name, contentType: DioMediaType.parse(mimeType));
}
