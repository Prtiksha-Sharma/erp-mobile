// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_academics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectAssignment _$SubjectAssignmentFromJson(Map<String, dynamic> json) =>
    _SubjectAssignment(
      subjectTeacherId: json['subject_teacher_id'] as String,
      classId: json['class_id'] as String,
      sectionId: json['section_id'] as String,
      subjectId: json['subject_id'] as String,
      sessionId: json['session_id'] as String,
      classRef: json['classes'] == null
          ? null
          : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
      sectionRef: json['sections'] == null
          ? null
          : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
      subject: json['academic_subjects'] == null
          ? null
          : SubjectRef.fromJson(
              json['academic_subjects'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SubjectAssignmentToJson(_SubjectAssignment instance) =>
    <String, dynamic>{
      'subject_teacher_id': instance.subjectTeacherId,
      'class_id': instance.classId,
      'section_id': instance.sectionId,
      'subject_id': instance.subjectId,
      'session_id': instance.sessionId,
      'classes': instance.classRef,
      'sections': instance.sectionRef,
      'academic_subjects': instance.subject,
    };

_LessonPlan _$LessonPlanFromJson(Map<String, dynamic> json) => _LessonPlan(
  lessonPlanId: json['lesson_plan_id'] as String,
  classId: json['class_id'] as String,
  sectionId: json['section_id'] as String?,
  subjectId: json['subject_id'] as String,
  sessionId: json['session_id'] as String?,
  topic: json['topic'] as String,
  description: json['description'] as String?,
  plannedDate: json['planned_date'] == null
      ? null
      : DateTime.parse(json['planned_date'] as String),
  attachmentUrl: json['attachment_url'] as String?,
  status: json['status'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LessonPlanToJson(_LessonPlan instance) =>
    <String, dynamic>{
      'lesson_plan_id': instance.lessonPlanId,
      'class_id': instance.classId,
      'section_id': instance.sectionId,
      'subject_id': instance.subjectId,
      'session_id': instance.sessionId,
      'topic': instance.topic,
      'description': instance.description,
      'planned_date': instance.plannedDate?.toIso8601String(),
      'attachment_url': instance.attachmentUrl,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'classes': instance.classRef,
      'sections': instance.sectionRef,
      'academic_subjects': instance.subject,
    };

_SyllabusEntry _$SyllabusEntryFromJson(Map<String, dynamic> json) =>
    _SyllabusEntry(
      syllabusId: json['syllabus_id'] as String,
      classId: json['class_id'] as String?,
      sectionId: json['section_id'] as String?,
      subjectId: json['subject_id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String?,
      attachmentUrl: json['attachment_url'] as String?,
      status: json['status'] as String?,
      classRef: json['classes'] == null
          ? null
          : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
      sectionRef: json['sections'] == null
          ? null
          : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
      subject: json['academic_subjects'] == null
          ? null
          : SubjectRef.fromJson(
              json['academic_subjects'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SyllabusEntryToJson(_SyllabusEntry instance) =>
    <String, dynamic>{
      'syllabus_id': instance.syllabusId,
      'class_id': instance.classId,
      'section_id': instance.sectionId,
      'subject_id': instance.subjectId,
      'title': instance.title,
      'description': instance.description,
      'attachment_url': instance.attachmentUrl,
      'status': instance.status,
      'classes': instance.classRef,
      'sections': instance.sectionRef,
      'academic_subjects': instance.subject,
    };
