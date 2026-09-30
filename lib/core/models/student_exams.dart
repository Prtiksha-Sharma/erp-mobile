import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'subject_ref.dart';

part 'student_exams.freezed.dart';
part 'student_exams.g.dart';

/// GET /student/exams — student/exams.service.js (listMyExams). One row per
/// subject per exam; the screen groups rows by `exams.exam_id`, same as the
/// web's groupByExam(). Marks are Prisma Decimal (JSON strings).
@freezed
abstract class ExamSchedule with _$ExamSchedule {
  const factory ExamSchedule({
    @JsonKey(name: 'exam_schedule_id') required String examScheduleId,
    @JsonKey(name: 'exam_date') DateTime? examDate,
    // @db.Time — epoch-anchored; read with formatClockTime().
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    String? room,
    @JsonKey(name: 'max_marks') @LooseNumConverter() num? maxMarks,
    @JsonKey(name: 'exams') required ExamInfo exam,
    @JsonKey(name: 'academic_subjects') SubjectRef? subject,
  }) = _ExamSchedule;

  factory ExamSchedule.fromJson(Map<String, dynamic> json) => _$ExamScheduleFromJson(json);
}

@freezed
abstract class ExamInfo with _$ExamInfo {
  const factory ExamInfo({
    @JsonKey(name: 'exam_id') required String examId,
    @JsonKey(name: 'exam_name') required String examName,
    @JsonKey(name: 'exam_types') ExamTypeRef? examType,
  }) = _ExamInfo;

  factory ExamInfo.fromJson(Map<String, dynamic> json) => _$ExamInfoFromJson(json);
}

@freezed
abstract class ExamTypeRef with _$ExamTypeRef {
  const factory ExamTypeRef({@JsonKey(name: 'type_name') String? typeName}) = _ExamTypeRef;

  factory ExamTypeRef.fromJson(Map<String, dynamic> json) => _$ExamTypeRefFromJson(json);
}

/// One exam with all of its subject rows — built client-side from the flat
/// schedule list, in first-seen order.
class ExamGroup {
  ExamGroup({required this.exam, required this.subjects});

  final ExamInfo exam;
  final List<ExamSchedule> subjects;
}

List<ExamGroup> groupSchedulesByExam(List<ExamSchedule> schedules) {
  final groups = <String, ExamGroup>{};
  for (final s in schedules) {
    groups.putIfAbsent(s.exam.examId, () => ExamGroup(exam: s.exam, subjects: [])).subjects.add(s);
  }
  return groups.values.toList();
}

/// GET /student/exams/:examId/report-card — admin/academic/examResults.service.js.
/// Always 200: when results aren't entered/published, `is_published` is
/// false, `student` is null and `message` explains why.
@freezed
abstract class ReportCard with _$ReportCard {
  const factory ReportCard({
    @JsonKey(name: 'is_published') @Default(false) bool isPublished,
    String? message,
    ReportCardStudent? student,
  }) = _ReportCard;

  factory ReportCard.fromJson(Map<String, dynamic> json) => _$ReportCardFromJson(json);
}

@freezed
abstract class ReportCardStudent with _$ReportCardStudent {
  const factory ReportCardStudent({
    @Default([]) List<ReportCardSubject> subjects,
    @JsonKey(name: 'total_obtained') @DecimalConverter() required Decimal totalObtained,
    @JsonKey(name: 'total_max') @DecimalConverter() required Decimal totalMax,
    @JsonKey(name: 'percentage') @NullableDecimalConverter() Decimal? percentage,
    @LooseNumConverter() num? rank,
    @JsonKey(name: 'overall_result') String? overallResult,
  }) = _ReportCardStudent;

  factory ReportCardStudent.fromJson(Map<String, dynamic> json) => _$ReportCardStudentFromJson(json);
}

@freezed
abstract class ReportCardSubject with _$ReportCardSubject {
  const factory ReportCardSubject({
    @JsonKey(name: 'subject_id') required String subjectId,
    @JsonKey(name: 'subject_name') required String subjectName,
    @JsonKey(name: 'marks_obtained') @NullableDecimalConverter() Decimal? marksObtained,
    @JsonKey(name: 'is_absent') @Default(false) bool isAbsent,
    @JsonKey(name: 'attendance_status') String? attendanceStatus,
    @JsonKey(name: 'max_marks') @NullableDecimalConverter() Decimal? maxMarks,
    @JsonKey(name: 'passing_marks') @NullableDecimalConverter() Decimal? passingMarks,
    String? grade,
    String? result,
  }) = _ReportCardSubject;

  factory ReportCardSubject.fromJson(Map<String, dynamic> json) => _$ReportCardSubjectFromJson(json);
}

extension ReportCardSubjectDisplay on ReportCardSubject {
  /// `is_absent` is being migrated to `attendance_status` on the backend —
  /// honor either so this keeps working through that expand/contract.
  bool get wasAbsent => isAbsent || attendanceStatus == 'ABSENT';
}
