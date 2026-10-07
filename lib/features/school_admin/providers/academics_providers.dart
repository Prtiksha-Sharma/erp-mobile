import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_academics.dart';
import '../../../core/models/teacher_academics.dart';
import '../../../core/models/teacher_homework.dart';
import '../services/academics_service.dart';

/// Read providers for the School Admin Academics area (web
/// features/academics/{subjects,subject-teachers,timetable,syllabus,
/// lesson-plans} and features/homework) — one per web `use*` query hook.
///
/// Each watches the logged-in userId (a different admin on the same device
/// re-fetches) and throws the Failure itself, same as
/// school_admin_providers.dart. Class/section pickers reuse
/// `adminClassOptionsProvider`; staff pickers reuse `staffListProvider` /
/// `reportingToOptionsProvider` from there.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(AcademicsService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AcademicsService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

/// The web's Redux `sessionId`/`sessionLabel`. Null when the school has no
/// active session (the backend's 400 "No active academic session…"): the
/// web then simply omits `session_id` from list calls and can't assign
/// anything that needs one — mobile does the same. Any other failure
/// (network, 5xx) is thrown so dependent lists show it with Retry.
final academicsActiveSessionProvider = FutureProvider<AcademicsActiveSession?>((ref) async {
  try {
    return await _load(ref, (s) => s.getActiveSession());
  } on ValidationFailure {
    return null;
  }
});

Future<String?> _sessionId(Ref ref) async => (await ref.watch(academicsActiveSessionProvider.future))?.sessionId;

// ── Subjects ─────────────────────────────────────────────────────────────

/// useSubjectList — `null` = every subject (catalog), `true` = active only
/// (every picker).
final academicSubjectsProvider = FutureProvider.family<List<AcademicSubject>, bool?>(
  (ref, isActive) => _load(ref, (s) => s.listSubjects(isActive: isActive)),
);

/// useClassSubjects — every class↔subject row of the active session in one
/// call. The web disables this query while there's no session; so does
/// this (empty list).
final classSubjectAssignmentsProvider = FutureProvider<List<ClassSubjectAssignment>>((ref) async {
  final sessionId = await _sessionId(ref);
  if (sessionId == null) return const [];
  return _load(ref, (s) => s.listClassSubjects(sessionId: sessionId));
});

// ── Subject teachers ─────────────────────────────────────────────────────

final subjectTeacherAssignmentsProvider = FutureProvider<List<SubjectTeacherAssignment>>((ref) async {
  final sessionId = await _sessionId(ref);
  return _load(ref, (s) => s.listSubjectTeachers(sessionId: sessionId));
});

// ── Timetable ────────────────────────────────────────────────────────────

/// useTimetable — only ever watched once both a class and a section are
/// picked (the web's `enabled: !!classId && !!sectionId`).
final adminTimetableProvider = FutureProvider.family<List<AdminTimetableEntry>, ({String classId, String sectionId})>((
  ref,
  key,
) async {
  final sessionId = await _sessionId(ref);
  final rows = await _load(
    ref,
    (s) => s.listTimetable(classId: key.classId, sectionId: key.sectionId, sessionId: sessionId),
  );
  return [...rows]..sort((a, b) {
    final d = a.dayOfWeek.compareTo(b.dayOfWeek);
    return d != 0 ? d : a.periodNumber.compareTo(b.periodNumber);
  });
});

/// useTimetableSettings — falls back to Mon–Sat like the web's `select`.
final timetableSettingsProvider = FutureProvider<TimetableSettings>(
  (ref) => _load(ref, (s) => s.getTimetableSettings()),
);

// ── Syllabus ─────────────────────────────────────────────────────────────

typedef SyllabusFilter = ({String classId, String sectionId, String subjectId});

final adminSyllabusProvider = FutureProvider.family<List<SyllabusEntry>, SyllabusFilter>((ref, f) async {
  final sessionId = await _sessionId(ref);
  return _load(
    ref,
    (s) => s.listSyllabus(
      classId: f.classId.isEmpty ? null : f.classId,
      sectionId: f.sectionId.isEmpty ? null : f.sectionId,
      subjectId: f.subjectId.isEmpty ? null : f.subjectId,
      sessionId: sessionId,
    ),
  );
});

// ── Lesson plans ─────────────────────────────────────────────────────────

final adminLessonPlansProvider = FutureProvider.family<List<AdminLessonPlan>, ({String classId, String subjectId})>((
  ref,
  f,
) async {
  final sessionId = await _sessionId(ref);
  return _load(
    ref,
    (s) => s.listLessonPlans(
      classId: f.classId.isEmpty ? null : f.classId,
      subjectId: f.subjectId.isEmpty ? null : f.subjectId,
      sessionId: sessionId,
    ),
  );
});

// ── Homework & assignments ───────────────────────────────────────────────

/// The shared AcademicRecordFilters set. Dates are `YYYY-MM-DD`; the range
/// is only sent when both ends are set (the backend needs both together).
typedef AcademicsWorkFilter = ({
  String classId,
  String sectionId,
  String subjectId,
  String assignedBy,
  String from,
  String to,
});

const AcademicsWorkFilter emptyAcademicsWorkFilter = (
  classId: '',
  sectionId: '',
  subjectId: '',
  assignedBy: '',
  from: '',
  to: '',
);

final adminWorkListProvider =
    FutureProvider.family<List<AdminHomeworkRecord>, (AcademicsWorkKind, AcademicsWorkFilter)>((ref, key) async {
      final (kind, f) = key;
      final sessionId = await _sessionId(ref);
      return _load(
        ref,
        (s) => s.listWork(kind, {
          if (f.classId.isNotEmpty) 'class_id': f.classId,
          if (f.sectionId.isNotEmpty) 'section_id': f.sectionId,
          if (f.subjectId.isNotEmpty) 'subject_id': f.subjectId,
          'session_id': ?sessionId,
          if (f.assignedBy.isNotEmpty) 'assigned_by': f.assignedBy,
          if (f.from.isNotEmpty && f.to.isNotEmpty) ...{'from': f.from, 'to': f.to},
          if (kind == AcademicsWorkKind.homework) 'type': 'HOMEWORK',
        }),
      );
    });

final adminWorkSubmissionsProvider = FutureProvider.family<List<TeacherSubmission>, (AcademicsWorkKind, String)>(
  (ref, key) => _load(ref, (s) => s.listSubmissions(key.$1, key.$2)),
);

final adminWorkCommentsProvider = FutureProvider.family<List<HomeworkComment>, (AcademicsWorkKind, String)>(
  (ref, key) => _load(ref, (s) => s.listComments(key.$1, key.$2)),
);
