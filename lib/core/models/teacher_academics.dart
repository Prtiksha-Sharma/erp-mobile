import 'package:freezed_annotation/freezed_annotation.dart';

import 'academic_refs.dart';
import 'subject_ref.dart';

part 'teacher_academics.freezed.dart';
part 'teacher_academics.g.dart';

/// GET /teacher/subjects — teacher/subjects.service.js#getMyAssignedSubjects:
/// the teacher's own academic_subject_teachers rows for the active session,
/// `include`-ing classes/sections/academic_subjects. Also the source of the
/// class/section/subject pickers and the `session_id` sent when creating
/// homework or a lesson plan (web: deriveAssignmentOptions.js).
@freezed
abstract class SubjectAssignment with _$SubjectAssignment {
  const factory SubjectAssignment({
    @JsonKey(name: 'subject_teacher_id') required String subjectTeacherId,
    @JsonKey(name: 'class_id') required String classId,
    @JsonKey(name: 'section_id') required String sectionId,
    @JsonKey(name: 'subject_id') required String subjectId,
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
  }) = _SubjectAssignment;

  factory SubjectAssignment.fromJson(Map<String, dynamic> json) => _$SubjectAssignmentFromJson(json);
}

/// A picker option derived from [SubjectAssignment]s.
typedef AssignmentOption = ({String id, String label});

/// Class/section/subject options for the create forms, derived from the
/// teacher's own assignments so the picker can never offer a combination
/// the backend would reject (web: utils/deriveAssignmentOptions.js).
({List<AssignmentOption> classes, List<AssignmentOption> sections, List<AssignmentOption> subjects})
    deriveAssignmentOptions(List<SubjectAssignment> assignments, String? classId) {
  final classes = <String, AssignmentOption>{};
  final sections = <String, AssignmentOption>{};
  final subjects = <String, AssignmentOption>{};
  for (final a in assignments) {
    classes[a.classId] = (id: a.classId, label: a.classRef?.className ?? '—');
    if (a.classId == classId) {
      sections[a.sectionId] = (id: a.sectionId, label: a.sectionRef?.sectionName ?? '—');
      subjects[a.subjectId] = (id: a.subjectId, label: a.subject?.subjectName ?? '—');
    }
  }
  return (classes: classes.values.toList(), sections: sections.values.toList(), subjects: subjects.values.toList());
}

/// GET /teacher/lesson-plans — teacher/lessonPlans.service.js#listMyLessonPlans
/// (academic_lesson_plans + classes/sections/academic_subjects). A null
/// `section_id` means the plan covers every section ("All sections").
/// `status` defaults to PLANNED in the DB; the web offers
/// PENDING / IN_PROGRESS / COMPLETED, so it stays a plain String.
@freezed
abstract class LessonPlan with _$LessonPlan {
  const factory LessonPlan({
    @JsonKey(name: 'lesson_plan_id') required String lessonPlanId,
    @JsonKey(name: 'class_id') required String classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'subject_id') required String subjectId,
    @JsonKey(name: 'session_id') String? sessionId,
    required String topic,
    String? description,
    @JsonKey(name: 'planned_date') DateTime? plannedDate,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    String? status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
  }) = _LessonPlan;

  factory LessonPlan.fromJson(Map<String, dynamic> json) => _$LessonPlanFromJson(json);
}

/// GET /teacher/syllabus — teacher/syllabus.service.js#listMySyllabus
/// (academic_syllabus + classes/sections/academic_subjects). Admin creates
/// the record; the teacher only moves `status` between PENDING /
/// IN_PROGRESS / COMPLETED (STATUS_VALUES there).
@freezed
abstract class SyllabusEntry with _$SyllabusEntry {
  const factory SyllabusEntry({
    @JsonKey(name: 'syllabus_id') required String syllabusId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'subject_id') String? subjectId,
    required String title,
    String? description,
    @JsonKey(name: 'attachment_url') String? attachmentUrl,
    String? status,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'sections') SectionRef? sectionRef,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
  }) = _SyllabusEntry;

  factory SyllabusEntry.fromJson(Map<String, dynamic> json) => _$SyllabusEntryFromJson(json);
}
