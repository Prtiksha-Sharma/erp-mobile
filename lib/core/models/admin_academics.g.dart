// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_academics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AcademicsActiveSession _$AcademicsActiveSessionFromJson(
  Map<String, dynamic> json,
) => _AcademicsActiveSession(
  sessionId: json['session_id'] as String,
  sessionName: json['session_name'] as String?,
);

Map<String, dynamic> _$AcademicsActiveSessionToJson(
  _AcademicsActiveSession instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'session_name': instance.sessionName,
};

_AcademicSubject _$AcademicSubjectFromJson(Map<String, dynamic> json) =>
    _AcademicSubject(
      subjectId: json['subject_id'] as String,
      institutionId: json['institution_id'] as String?,
      subjectName: json['subject_name'] as String,
      subjectCode: json['subject_code'] as String?,
      subjectType: json['subject_type'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$AcademicSubjectToJson(_AcademicSubject instance) =>
    <String, dynamic>{
      'subject_id': instance.subjectId,
      'institution_id': instance.institutionId,
      'subject_name': instance.subjectName,
      'subject_code': instance.subjectCode,
      'subject_type': instance.subjectType,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };

_ClassSubjectAssignment _$ClassSubjectAssignmentFromJson(
  Map<String, dynamic> json,
) => _ClassSubjectAssignment(
  classSubjectId: json['class_subject_id'] as String,
  classId: json['class_id'] as String,
  subjectId: json['subject_id'] as String,
  sessionId: json['session_id'] as String?,
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ClassSubjectAssignmentToJson(
  _ClassSubjectAssignment instance,
) => <String, dynamic>{
  'class_subject_id': instance.classSubjectId,
  'class_id': instance.classId,
  'subject_id': instance.subjectId,
  'session_id': instance.sessionId,
  'classes': instance.classRef,
  'academic_subjects': instance.subject,
  'academic_sessions': instance.session,
};

_AcademicStaffRef _$AcademicStaffRefFromJson(Map<String, dynamic> json) =>
    _AcademicStaffRef(
      staffId: json['staff_id'] as String?,
      fullName: json['full_name'] as String?,
      employeeCode: json['employee_code'] as String?,
      designation: json['designation'] as String?,
      contactNumber: json['contact_number'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
    );

Map<String, dynamic> _$AcademicStaffRefToJson(_AcademicStaffRef instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'designation': instance.designation,
      'contact_number': instance.contactNumber,
      'profile_photo_url': instance.profilePhotoUrl,
    };

_SubjectTeacherAssignment _$SubjectTeacherAssignmentFromJson(
  Map<String, dynamic> json,
) => _SubjectTeacherAssignment(
  subjectTeacherId: json['subject_teacher_id'] as String,
  staffId: json['staff_id'] as String?,
  classId: json['class_id'] as String?,
  sectionId: json['section_id'] as String?,
  subjectId: json['subject_id'] as String?,
  sessionId: json['session_id'] as String?,
  staff: json['staff_accounts'] == null
      ? null
      : AcademicStaffRef.fromJson(
          json['staff_accounts'] as Map<String, dynamic>,
        ),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubjectTeacherAssignmentToJson(
  _SubjectTeacherAssignment instance,
) => <String, dynamic>{
  'subject_teacher_id': instance.subjectTeacherId,
  'staff_id': instance.staffId,
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'subject_id': instance.subjectId,
  'session_id': instance.sessionId,
  'staff_accounts': instance.staff,
  'classes': instance.classRef,
  'sections': instance.sectionRef,
  'academic_subjects': instance.subject,
  'academic_sessions': instance.session,
};

_AdminTimetableEntry _$AdminTimetableEntryFromJson(Map<String, dynamic> json) =>
    _AdminTimetableEntry(
      timetableEntryId: json['timetable_entry_id'] as String,
      classId: json['class_id'] as String?,
      sectionId: json['section_id'] as String?,
      subjectId: json['subject_id'] as String?,
      staffId: json['staff_id'] as String?,
      sessionId: json['session_id'] as String?,
      dayOfWeek: (json['day_of_week'] as num).toInt(),
      periodNumber: (json['period_number'] as num).toInt(),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      room: json['room'] as String?,
      periodType: json['period_type'] as String? ?? 'CLASS',
      breakLabel: json['break_label'] as String?,
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
      staff: json['staff_accounts'] == null
          ? null
          : AcademicStaffRef.fromJson(
              json['staff_accounts'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdminTimetableEntryToJson(
  _AdminTimetableEntry instance,
) => <String, dynamic>{
  'timetable_entry_id': instance.timetableEntryId,
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'subject_id': instance.subjectId,
  'staff_id': instance.staffId,
  'session_id': instance.sessionId,
  'day_of_week': instance.dayOfWeek,
  'period_number': instance.periodNumber,
  'start_time': instance.startTime?.toIso8601String(),
  'end_time': instance.endTime?.toIso8601String(),
  'room': instance.room,
  'period_type': instance.periodType,
  'break_label': instance.breakLabel,
  'classes': instance.classRef,
  'sections': instance.sectionRef,
  'academic_subjects': instance.subject,
  'staff_accounts': instance.staff,
};

_TimetableSettings _$TimetableSettingsFromJson(Map<String, dynamic> json) =>
    _TimetableSettings(
      workingDays:
          (json['working_days'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const <int>[1, 2, 3, 4, 5, 6],
    );

Map<String, dynamic> _$TimetableSettingsToJson(_TimetableSettings instance) =>
    <String, dynamic>{'working_days': instance.workingDays};

_LessonPlanAuthor _$LessonPlanAuthorFromJson(Map<String, dynamic> json) =>
    _LessonPlanAuthor(
      userId: json['user_id'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$LessonPlanAuthorToJson(_LessonPlanAuthor instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
    };

_AdminLessonPlan _$AdminLessonPlanFromJson(Map<String, dynamic> json) =>
    _AdminLessonPlan(
      lessonPlanId: json['lesson_plan_id'] as String,
      classId: json['class_id'] as String?,
      sectionId: json['section_id'] as String?,
      subjectId: json['subject_id'] as String?,
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
          : SubjectRef.fromJson(
              json['academic_subjects'] as Map<String, dynamic>,
            ),
      author: json['users'] == null
          ? null
          : LessonPlanAuthor.fromJson(json['users'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminLessonPlanToJson(_AdminLessonPlan instance) =>
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
      'users': instance.author,
    };

_AdminHomeworkRecord _$AdminHomeworkRecordFromJson(
  Map<String, dynamic> json,
) => _AdminHomeworkRecord(
  homeworkId: json['homework_id'] as String,
  type: json['type'] as String?,
  classId: json['class_id'] as String?,
  sectionId: json['section_id'] as String?,
  subjectId: json['subject_id'] as String?,
  sessionId: json['session_id'] as String?,
  assignedBy: json['assigned_by'] as String?,
  title: json['title'] as String,
  description: json['description'] as String?,
  attachmentUrl: json['attachment_url'] as String?,
  assignedDate: json['assigned_date'] == null
      ? null
      : DateTime.parse(json['assigned_date'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  sectionRef: json['sections'] == null
      ? null
      : SectionRef.fromJson(json['sections'] as Map<String, dynamic>),
  subject: json['academic_subjects'] == null
      ? null
      : SubjectRef.fromJson(json['academic_subjects'] as Map<String, dynamic>),
  assignedByUser: json['users'] == null
      ? null
      : CommentAuthor.fromJson(json['users'] as Map<String, dynamic>),
  submissions:
      (json['submissions'] as List<dynamic>?)
          ?.map((e) => SubmissionStatusRef.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SubmissionStatusRef>[],
);

Map<String, dynamic> _$AdminHomeworkRecordToJson(
  _AdminHomeworkRecord instance,
) => <String, dynamic>{
  'homework_id': instance.homeworkId,
  'type': instance.type,
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'subject_id': instance.subjectId,
  'session_id': instance.sessionId,
  'assigned_by': instance.assignedBy,
  'title': instance.title,
  'description': instance.description,
  'attachment_url': instance.attachmentUrl,
  'assigned_date': instance.assignedDate?.toIso8601String(),
  'due_date': instance.dueDate?.toIso8601String(),
  'classes': instance.classRef,
  'sections': instance.sectionRef,
  'academic_subjects': instance.subject,
  'users': instance.assignedByUser,
  'submissions': instance.submissions,
};
