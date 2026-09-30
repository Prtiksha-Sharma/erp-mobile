import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/message_thread.dart';
import '../../../core/models/school_feed.dart';
import '../../../core/models/staff_profile.dart';
import '../../../core/models/staff_self_service.dart';
import '../../../core/models/student_records.dart';
import '../../../core/models/teacher_academics.dart';
import '../../../core/models/teacher_classroom.dart';
import '../../../core/models/teacher_exams.dart';
import '../../../core/models/teacher_homework.dart';
import '../../../core/models/timetable_entry.dart';
import '../services/teacher_messages_service.dart';
import '../services/teacher_portal_service.dart';

/// Read providers for the teacher portal — one per web `useMy*` hook.
///
/// Every provider watches the logged-in userId (via [_load]) so logging in
/// as a different teacher on the same device re-fetches instead of showing
/// the previous teacher's cached data. Failures are thrown as the Failure
/// itself and read back through describeError(), same as the student portal.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(TeacherPortalService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(TeacherPortalService()));
}

Future<T> _loadMessages<T>(Ref ref, Future<Result<T>> Function(TeacherMessagesService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(TeacherMessagesService()));
}

T _unwrap<T>(Result<T> result) => switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };

/// Whether the JWT carries the literal "Class Teacher" role — the backend
/// hard-403s /teacher/attendance, /leaves and /my-class for anyone else
/// (web: shared/hooks/useIsClassTeacher.js).
final isClassTeacherProvider = Provider<bool>(
  (ref) => ref.watch(authProvider.select((a) => a.user?.roles.contains('Class Teacher') ?? false)),
);

final teacherProfileProvider = FutureProvider<StaffProfile>((ref) => _load(ref, (s) => s.getMyProfile()));

final teacherSubjectsProvider = FutureProvider<List<SubjectAssignment>>((ref) => _load(ref, (s) => s.getMySubjects()));

final teacherTimetableProvider = FutureProvider<List<TimetableEntry>>((ref) => _load(ref, (s) => s.getMyTimetable()));

final teacherLessonPlansProvider = FutureProvider<List<LessonPlan>>((ref) => _load(ref, (s) => s.getMyLessonPlans()));

final teacherSyllabusProvider = FutureProvider<List<SyllabusEntry>>((ref) => _load(ref, (s) => s.getMySyllabus()));

/// Keyed by period (day | week | month | year).
final teacherMyAttendanceProvider = FutureProvider.family<StaffAttendanceSummary, String>(
  (ref, period) => _load(ref, (s) => s.getMyAttendance(period: period)),
);

final teacherMyLeavesProvider = FutureProvider<List<StaffLeave>>((ref) => _load(ref, (s) => s.getMyLeaves()));

final teacherNoticesProvider = FutureProvider<List<SchoolNotice>>((ref) => _load(ref, (s) => s.getMyNotices()));

final teacherEventsProvider = FutureProvider<List<SchoolEvent>>((ref) => _load(ref, (s) => s.getMyEvents()));

final teacherActivitiesProvider = FutureProvider<List<SchoolActivity>>((ref) => _load(ref, (s) => s.getMyActivities()));

/// The active session, taken from the teacher's own subject assignments
/// (the backend resolves them for the institution's active session). The
/// web reads the same id from its Redux context. Null when the teacher has
/// no assignments yet.
final teacherSessionIdProvider = FutureProvider<String?>((ref) async {
  final assignments = await ref.watch(teacherSubjectsProvider.future);
  return assignments.isEmpty ? null : assignments.first.sessionId;
});

/// Homework / Assignments list for the current session.
final teacherWorkProvider = FutureProvider.family<List<TeacherHomework>, WorkType>((ref, kind) async {
  final sessionId = await ref.watch(teacherSessionIdProvider.future);
  return _load(ref, (s) => s.getMyWork(kind, sessionId: sessionId));
});

/// Dashboard "Recent Homework" — every row the teacher assigned, any type
/// (the web dashboard calls /teacher/homework unfiltered).
final teacherDashboardWorkProvider = FutureProvider<List<TeacherHomework>>(
  (ref) => _load(ref, (s) => s.getMyWork(WorkType.homework, allTypes: true)),
);

final teacherSubmissionsProvider =
    FutureProvider.family<List<TeacherSubmission>, ({WorkType kind, String homeworkId})>(
  (ref, p) => _load(ref, (s) => s.getSubmissions(p.kind, p.homeworkId)),
);

final teacherCommentsProvider = FutureProvider.family<List<HomeworkComment>, ({WorkType kind, String homeworkId})>(
  (ref, p) => _load(ref, (s) => s.getComments(p.kind, p.homeworkId)),
);

final teacherExamsProvider = FutureProvider<List<TeacherExam>>((ref) => _load(ref, (s) => s.getMyExams()));

final teacherMarksStatusProvider = FutureProvider.family<List<MarksEntryStatus>, String>(
  (ref, examId) => _load(ref, (s) => s.getMyExamMarksStatus(examId)),
);

final teacherExamMarksProvider = FutureProvider.family<List<ExamMarkEntry>, String>(
  (ref, examScheduleId) => _load(ref, (s) => s.getMyExamMarks(examScheduleId)),
);

// ── Class Teacher only ───────────────────────────────────────────────────

/// Keyed by the calendar day (a date-only DateTime).
final classRosterProvider = FutureProvider.family<ClassAttendanceRoster, DateTime>(
  (ref, date) => _load(ref, (s) => s.getClassRoster(date)),
);

/// Fetched unfiltered; the screen derives the Pending/Approved/Rejected/All
/// tabs from this one list, same as the web.
final classLeavesProvider = FutureProvider<List<StudentLeave>>((ref) => _load(ref, (s) => s.getClassLeaves()));

/// Keyed by search text ('' = everyone).
final myClassStudentsProvider = FutureProvider.family<MyClassRoster, String>(
  (ref, search) => _load(ref, (s) => s.getMyClassStudents(search: search)),
);

final studentPerformanceProvider = FutureProvider.family<StudentPerformance, String>(
  (ref, studentId) => _load(ref, (s) => s.getStudentPerformance(studentId)),
);

final myClassBirthdaysProvider = FutureProvider<ClassBirthdays>((ref) => _load(ref, (s) => s.getMyClassBirthdays()));

// ── Messages ─────────────────────────────────────────────────────────────

final teacherThreadsProvider = FutureProvider<List<MessageThread>>((ref) => _loadMessages(ref, (s) => s.getMyThreads()));

final teacherThreadProvider = FutureProvider.family<MessageThread, String>(
  (ref, threadId) => _loadMessages(ref, (s) => s.getThread(threadId)),
);

final parentPresenceProvider = FutureProvider.family<ParentPresence, String>(
  (ref, userId) => _loadMessages(ref, (s) => s.getParentPresence(userId)),
);
