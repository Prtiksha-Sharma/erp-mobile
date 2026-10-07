// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_school_life_exams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminExamType _$AdminExamTypeFromJson(Map<String, dynamic> json) =>
    _AdminExamType(
      examTypeId: json['exam_type_id'] as String,
      typeName: json['type_name'] as String,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminExamTypeToJson(_AdminExamType instance) =>
    <String, dynamic>{
      'exam_type_id': instance.examTypeId,
      'type_name': instance.typeName,
      'is_active': instance.isActive,
    };

_AdminExam _$AdminExamFromJson(Map<String, dynamic> json) => _AdminExam(
  examId: json['exam_id'] as String,
  examName: json['exam_name'] as String,
  examTypeId: json['exam_type_id'] as String?,
  sessionId: json['session_id'] as String?,
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  examType: json['exam_types'] == null
      ? null
      : ExamTypeRef.fromJson(json['exam_types'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminExamToJson(_AdminExam instance) =>
    <String, dynamic>{
      'exam_id': instance.examId,
      'exam_name': instance.examName,
      'exam_type_id': instance.examTypeId,
      'session_id': instance.sessionId,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'exam_types': instance.examType,
      'academic_sessions': instance.session,
    };

_AdminExamSchedule _$AdminExamScheduleFromJson(Map<String, dynamic> json) =>
    _AdminExamSchedule(
      examScheduleId: json['exam_schedule_id'] as String,
      examId: json['exam_id'] as String?,
      classId: json['class_id'] as String?,
      sectionId: json['section_id'] as String?,
      subjectId: json['subject_id'] as String?,
      examDate: json['exam_date'] == null
          ? null
          : DateTime.parse(json['exam_date'] as String),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      maxMarks: const LooseNumConverter().fromJson(json['max_marks']),
      passingMarks: const LooseNumConverter().fromJson(json['passing_marks']),
      room: json['room'] as String?,
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

Map<String, dynamic> _$AdminExamScheduleToJson(_AdminExamSchedule instance) =>
    <String, dynamic>{
      'exam_schedule_id': instance.examScheduleId,
      'exam_id': instance.examId,
      'class_id': instance.classId,
      'section_id': instance.sectionId,
      'subject_id': instance.subjectId,
      'exam_date': instance.examDate?.toIso8601String(),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'max_marks': const LooseNumConverter().toJson(instance.maxMarks),
      'passing_marks': const LooseNumConverter().toJson(instance.passingMarks),
      'room': instance.room,
      'classes': instance.classRef,
      'sections': instance.sectionRef,
      'academic_subjects': instance.subject,
    };

_AdminExamResultStudent _$AdminExamResultStudentFromJson(
  Map<String, dynamic> json,
) => _AdminExamResultStudent(
  studentId: json['student_id'] as String,
  admissionNo: json['admission_no'] as String?,
  rollNo: const LooseStringConverter().fromJson(json['roll_no']),
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  subjects:
      (json['subjects'] as List<dynamic>?)
          ?.map((e) => ReportCardSubject.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ReportCardSubject>[],
  totalObtained: const LooseNumConverter().fromJson(json['total_obtained']),
  totalMax: const LooseNumConverter().fromJson(json['total_max']),
  allEntered: json['all_entered'] as bool? ?? false,
  percentage: const LooseNumConverter().fromJson(json['percentage']),
  overallResult: json['overall_result'] as String?,
  rank: const LooseNumConverter().fromJson(json['rank']),
);

Map<String, dynamic> _$AdminExamResultStudentToJson(
  _AdminExamResultStudent instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'admission_no': instance.admissionNo,
  'roll_no': const LooseStringConverter().toJson(instance.rollNo),
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'subjects': instance.subjects,
  'total_obtained': const LooseNumConverter().toJson(instance.totalObtained),
  'total_max': const LooseNumConverter().toJson(instance.totalMax),
  'all_entered': instance.allEntered,
  'percentage': const LooseNumConverter().toJson(instance.percentage),
  'overall_result': instance.overallResult,
  'rank': const LooseNumConverter().toJson(instance.rank),
};

_AdminExamResultSummary _$AdminExamResultSummaryFromJson(
  Map<String, dynamic> json,
) => _AdminExamResultSummary(
  exam: json['exam'] == null
      ? null
      : AdminExam.fromJson(json['exam'] as Map<String, dynamic>),
  classId: json['class_id'] as String?,
  sectionId: json['section_id'] as String?,
  isPublished: json['is_published'] as bool? ?? false,
  classAveragePercentage: const LooseNumConverter().fromJson(
    json['class_average_percentage'],
  ),
  passPercentage: const LooseNumConverter().fromJson(json['pass_percentage']),
  students:
      (json['students'] as List<dynamic>?)
          ?.map(
            (e) => AdminExamResultStudent.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <AdminExamResultStudent>[],
);

Map<String, dynamic> _$AdminExamResultSummaryToJson(
  _AdminExamResultSummary instance,
) => <String, dynamic>{
  'exam': instance.exam,
  'class_id': instance.classId,
  'section_id': instance.sectionId,
  'is_published': instance.isPublished,
  'class_average_percentage': const LooseNumConverter().toJson(
    instance.classAveragePercentage,
  ),
  'pass_percentage': const LooseNumConverter().toJson(instance.passPercentage),
  'students': instance.students,
};

_AdminReportCard _$AdminReportCardFromJson(Map<String, dynamic> json) =>
    _AdminReportCard(
      exam: json['exam'] == null
          ? null
          : AdminExam.fromJson(json['exam'] as Map<String, dynamic>),
      isPublished: json['is_published'] as bool? ?? false,
      classAveragePercentage: const LooseNumConverter().fromJson(
        json['class_average_percentage'],
      ),
      student: json['student'] == null
          ? null
          : AdminExamResultStudent.fromJson(
              json['student'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdminReportCardToJson(_AdminReportCard instance) =>
    <String, dynamic>{
      'exam': instance.exam,
      'is_published': instance.isPublished,
      'class_average_percentage': const LooseNumConverter().toJson(
        instance.classAveragePercentage,
      ),
      'student': instance.student,
    };

_ActiveAcademicSession _$ActiveAcademicSessionFromJson(
  Map<String, dynamic> json,
) => _ActiveAcademicSession(
  sessionId: json['session_id'] as String,
  sessionName: json['session_name'] as String?,
);

Map<String, dynamic> _$ActiveAcademicSessionToJson(
  _ActiveAcademicSession instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'session_name': instance.sessionName,
};
