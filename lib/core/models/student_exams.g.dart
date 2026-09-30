// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_exams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExamSchedule _$ExamScheduleFromJson(Map<String, dynamic> json) =>
    _ExamSchedule(
      examScheduleId: json['exam_schedule_id'] as String,
      examDate: json['exam_date'] == null
          ? null
          : DateTime.parse(json['exam_date'] as String),
      startTime: json['start_time'] == null
          ? null
          : DateTime.parse(json['start_time'] as String),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      room: json['room'] as String?,
      maxMarks: const LooseNumConverter().fromJson(json['max_marks']),
      exam: ExamInfo.fromJson(json['exams'] as Map<String, dynamic>),
      subject: json['academic_subjects'] == null
          ? null
          : SubjectRef.fromJson(
              json['academic_subjects'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ExamScheduleToJson(_ExamSchedule instance) =>
    <String, dynamic>{
      'exam_schedule_id': instance.examScheduleId,
      'exam_date': instance.examDate?.toIso8601String(),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'room': instance.room,
      'max_marks': const LooseNumConverter().toJson(instance.maxMarks),
      'exams': instance.exam,
      'academic_subjects': instance.subject,
    };

_ExamInfo _$ExamInfoFromJson(Map<String, dynamic> json) => _ExamInfo(
  examId: json['exam_id'] as String,
  examName: json['exam_name'] as String,
  examType: json['exam_types'] == null
      ? null
      : ExamTypeRef.fromJson(json['exam_types'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ExamInfoToJson(_ExamInfo instance) => <String, dynamic>{
  'exam_id': instance.examId,
  'exam_name': instance.examName,
  'exam_types': instance.examType,
};

_ExamTypeRef _$ExamTypeRefFromJson(Map<String, dynamic> json) =>
    _ExamTypeRef(typeName: json['type_name'] as String?);

Map<String, dynamic> _$ExamTypeRefToJson(_ExamTypeRef instance) =>
    <String, dynamic>{'type_name': instance.typeName};

_ReportCard _$ReportCardFromJson(Map<String, dynamic> json) => _ReportCard(
  isPublished: json['is_published'] as bool? ?? false,
  message: json['message'] as String?,
  student: json['student'] == null
      ? null
      : ReportCardStudent.fromJson(json['student'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReportCardToJson(_ReportCard instance) =>
    <String, dynamic>{
      'is_published': instance.isPublished,
      'message': instance.message,
      'student': instance.student,
    };

_ReportCardStudent _$ReportCardStudentFromJson(Map<String, dynamic> json) =>
    _ReportCardStudent(
      subjects:
          (json['subjects'] as List<dynamic>?)
              ?.map(
                (e) => ReportCardSubject.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      totalObtained: const DecimalConverter().fromJson(json['total_obtained']),
      totalMax: const DecimalConverter().fromJson(json['total_max']),
      percentage: const NullableDecimalConverter().fromJson(json['percentage']),
      rank: const LooseNumConverter().fromJson(json['rank']),
      overallResult: json['overall_result'] as String?,
    );

Map<String, dynamic> _$ReportCardStudentToJson(
  _ReportCardStudent instance,
) => <String, dynamic>{
  'subjects': instance.subjects,
  'total_obtained': const DecimalConverter().toJson(instance.totalObtained),
  'total_max': const DecimalConverter().toJson(instance.totalMax),
  'percentage': const NullableDecimalConverter().toJson(instance.percentage),
  'rank': const LooseNumConverter().toJson(instance.rank),
  'overall_result': instance.overallResult,
};

_ReportCardSubject _$ReportCardSubjectFromJson(Map<String, dynamic> json) =>
    _ReportCardSubject(
      subjectId: json['subject_id'] as String,
      subjectName: json['subject_name'] as String,
      marksObtained: const NullableDecimalConverter().fromJson(
        json['marks_obtained'],
      ),
      isAbsent: json['is_absent'] as bool? ?? false,
      attendanceStatus: json['attendance_status'] as String?,
      maxMarks: const NullableDecimalConverter().fromJson(json['max_marks']),
      passingMarks: const NullableDecimalConverter().fromJson(
        json['passing_marks'],
      ),
      grade: json['grade'] as String?,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$ReportCardSubjectToJson(_ReportCardSubject instance) =>
    <String, dynamic>{
      'subject_id': instance.subjectId,
      'subject_name': instance.subjectName,
      'marks_obtained': const NullableDecimalConverter().toJson(
        instance.marksObtained,
      ),
      'is_absent': instance.isAbsent,
      'attendance_status': instance.attendanceStatus,
      'max_marks': const NullableDecimalConverter().toJson(instance.maxMarks),
      'passing_marks': const NullableDecimalConverter().toJson(
        instance.passingMarks,
      ),
      'grade': instance.grade,
      'result': instance.result,
    };
