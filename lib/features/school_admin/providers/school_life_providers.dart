import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_school_life_events.dart';
import '../../../core/models/admin_school_life_exams.dart';
import '../../../core/models/admin_school_life_records.dart';
import '../../../core/models/school_admin_settings.dart';
import '../../../core/models/student_brief.dart';
import '../../../core/models/subject_ref.dart';
import '../../../core/models/teacher_exams.dart';
import '../services/school_life_exams_service.dart';
import '../services/school_life_service.dart';

/// Read providers for Exams, Discipline, Leaves, Events and Activities —
/// one per web `use*` query hook. Each watches the logged-in userId (a
/// different admin on the same device never sees cached data) and throws
/// the Failure itself, read back through describeError().
Future<T> _exams<T>(Ref ref, Future<Result<T>> Function(SchoolLifeExamsService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(SchoolLifeExamsService()));
}

Future<T> _life<T>(Ref ref, Future<Result<T>> Function(SchoolLifeService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return _unwrap(await call(SchoolLifeService()));
}

T _unwrap<T>(Result<T> result) => switch (result) {
  Ok(:final value) => value,
  Err(:final failure) => throw failure,
};

// ── Exams (features/exams/hooks) ─────────────────────────────────────────

/// useAdminExamTypeList — `null` = every type, `true` = active only.
final adminExamTypesProvider = FutureProvider.family<List<AdminExamType>, bool?>(
  (ref, isActive) => _exams(ref, (s) => s.listExamTypes(isActive: isActive)),
);

/// useAdminExamList (no filters, like the web list page).
final adminExamsProvider = FutureProvider<List<AdminExam>>((ref) => _exams(ref, (s) => s.listExams()));

/// useAdminExam — one exam's display fields, looked up in the list.
final adminExamProvider = FutureProvider.family<AdminExam?, String>((ref, examId) async {
  final exams = await ref.watch(adminExamsProvider.future);
  return exams.where((e) => e.examId == examId).firstOrNull;
});

/// useAdminExamScheduleList({ examId }).
final adminExamSchedulesProvider = FutureProvider.family<List<AdminExamSchedule>, String>(
  (ref, examId) => _exams(ref, (s) => s.listSchedules(examId)),
);

/// useAdminExamMarksList.
final adminExamMarksProvider = FutureProvider.family<List<ExamMarkEntry>, String>(
  (ref, examScheduleId) => _exams(ref, (s) => s.listMarks(examScheduleId)),
);

/// useAdminExamMarksStatus — keyed by (examId, classId, sectionId).
final adminMarksEntryStatusProvider =
    FutureProvider.family<List<MarksEntryStatus>, ({String examId, String classId, String sectionId})>(
      (ref, k) => _exams(ref, (s) => s.marksEntryStatus(examId: k.examId, classId: k.classId, sectionId: k.sectionId)),
    );

/// useAdminExamResults.
final adminExamResultsProvider =
    FutureProvider.family<AdminExamResultSummary, ({String examId, String classId, String sectionId})>(
      (ref, k) => _exams(ref, (s) => s.resultSummary(k.examId, classId: k.classId, sectionId: k.sectionId)),
    );

/// useAdminStudentReportCard.
final adminReportCardProvider = FutureProvider.family<AdminReportCard, ({String examId, String studentId})>(
  (ref, k) => _exams(ref, (s) => s.reportCard(k.examId, k.studentId)),
);

/// useAdminSubjectOptions.
final adminActiveSubjectsProvider = FutureProvider<List<SubjectRef>>((ref) => _exams(ref, (s) => s.activeSubjects()));

/// The web's `context.sessionId/sessionLabel` (see [ActiveAcademicSession]).
final activeAcademicSessionProvider = FutureProvider<ActiveAcademicSession>(
  (ref) => _exams(ref, (s) => s.activeSession()),
);

// ── Discipline / leaves ──────────────────────────────────────────────────

final adminDisciplineProvider = FutureProvider.family<AdminDisciplinePage, DisciplineListQuery>(
  (ref, q) => _life(ref, (s) => s.listDiscipline(q)),
);

final adminStudentLeavesProvider = FutureProvider.family<AdminStudentLeavePage, SchoolLeaveQuery>(
  (ref, q) => _life(ref, (s) => s.listStudentLeaves(q)),
);

final adminStaffLeavesProvider = FutureProvider.family<AdminStaffLeavePage, SchoolLeaveQuery>(
  (ref, q) => _life(ref, (s) => s.listStaffLeaves(q)),
);

/// useRoleOptionsForStaffLeaves.
final staffLeaveRolesProvider = FutureProvider<List<RoleRef>>((ref) => _life(ref, (s) => s.staffLeaveRoles()));

// ── Events / activities ──────────────────────────────────────────────────

final adminEventsProvider = FutureProvider.family<AdminSchoolEventPage, SchoolEventQuery>(
  (ref, q) => _life(ref, (s) => s.listEvents(q)),
);

final adminActivitiesProvider = FutureProvider.family<AdminSchoolActivityPage, SchoolActivityQuery>(
  (ref, q) => _life(ref, (s) => s.listActivities(q)),
);

final activityParticipantsProvider = FutureProvider.family<List<ActivityParticipant>, String>(
  (ref, activityId) => _life(ref, (s) => s.listParticipants(activityId)),
);

/// useStudentOptionsForActivities(search).
final activityStudentOptionsProvider = FutureProvider.family<List<StudentBrief>, String>(
  (ref, search) => _life(ref, (s) => s.searchStudents(search)),
);
