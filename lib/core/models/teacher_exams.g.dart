// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_exams.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TeacherExam _$TeacherExamFromJson(Map<String, dynamic> json) => _TeacherExam(
  examId: json['exam_id'] as String,
  examName: json['exam_name'] as String,
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

Map<String, dynamic> _$TeacherExamToJson(_TeacherExam instance) =>
    <String, dynamic>{
      'exam_id': instance.examId,
      'exam_name': instance.examName,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'exam_types': instance.examType,
      'academic_sessions': instance.session,
    };

_MarksEntryStatus _$MarksEntryStatusFromJson(Map<String, dynamic> json) =>
    _MarksEntryStatus(
      examScheduleId: json['exam_schedule_id'] as String,
      className: json['class_name'] as String?,
      sectionName: json['section_name'] as String?,
      subjectId: json['subject_id'] as String?,
      subjectName: json['subject_name'] as String?,
      totalStudents: (json['total_students'] as num?)?.toInt() ?? 0,
      enteredCount: (json['entered_count'] as num?)?.toInt() ?? 0,
      pendingCount: (json['pending_count'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MarksEntryStatusToJson(_MarksEntryStatus instance) =>
    <String, dynamic>{
      'exam_schedule_id': instance.examScheduleId,
      'class_name': instance.className,
      'section_name': instance.sectionName,
      'subject_id': instance.subjectId,
      'subject_name': instance.subjectName,
      'total_students': instance.totalStudents,
      'entered_count': instance.enteredCount,
      'pending_count': instance.pendingCount,
    };

_ExamMarkEntry _$ExamMarkEntryFromJson(Map<String, dynamic> json) =>
    _ExamMarkEntry(
      markId: json['mark_id'] as String,
      examScheduleId: json['exam_schedule_id'] as String?,
      studentId: json['student_id'] as String?,
      marksObtained: const NullableDecimalConverter().fromJson(
        json['marks_obtained'],
      ),
      isAbsent: json['is_absent'] as bool? ?? false,
      attendanceStatus: json['attendance_status'] as String? ?? 'PENDING',
      grade: json['grade'] as String?,
      remarks: json['remarks'] as String?,
      student: json['students'] == null
          ? null
          : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ExamMarkEntryToJson(_ExamMarkEntry instance) =>
    <String, dynamic>{
      'mark_id': instance.markId,
      'exam_schedule_id': instance.examScheduleId,
      'student_id': instance.studentId,
      'marks_obtained': const NullableDecimalConverter().toJson(
        instance.marksObtained,
      ),
      'is_absent': instance.isAbsent,
      'attendance_status': instance.attendanceStatus,
      'grade': instance.grade,
      'remarks': instance.remarks,
      'students': instance.student,
    };
