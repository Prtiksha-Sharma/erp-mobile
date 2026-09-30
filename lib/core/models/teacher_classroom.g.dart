// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClassAttendanceRoster _$ClassAttendanceRosterFromJson(
  Map<String, dynamic> json,
) => _ClassAttendanceRoster(
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  isHoliday: json['is_holiday'] as bool? ?? false,
  total: (json['total'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => RosterStudent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <RosterStudent>[],
);

Map<String, dynamic> _$ClassAttendanceRosterToJson(
  _ClassAttendanceRoster instance,
) => <String, dynamic>{
  'date': instance.date?.toIso8601String(),
  'is_holiday': instance.isHoliday,
  'total': instance.total,
  'data': instance.data,
};

_RosterStudent _$RosterStudentFromJson(
  Map<String, dynamic> json,
) => _RosterStudent(
  studentId: json['student_id'] as String,
  admissionNo: json['admission_no'] as String?,
  rollNo: const LooseStringConverter().fromJson(json['roll_no']),
  applicant: json['applicants'] == null
      ? null
      : ApplicantInfo.fromJson(json['applicants'] as Map<String, dynamic>),
  currentClass: json['current_class'] == null
      ? null
      : ClassRef.fromJson(json['current_class'] as Map<String, dynamic>),
  currentSection: json['current_section'] == null
      ? null
      : SectionRef.fromJson(json['current_section'] as Map<String, dynamic>),
  attendance: json['attendance'] == null
      ? null
      : AttendanceRecord.fromJson(json['attendance'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RosterStudentToJson(_RosterStudent instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'roll_no': const LooseStringConverter().toJson(instance.rollNo),
      'applicants': instance.applicant,
      'current_class': instance.currentClass,
      'current_section': instance.currentSection,
      'attendance': instance.attendance,
    };

_MyClassRoster _$MyClassRosterFromJson(Map<String, dynamic> json) =>
    _MyClassRoster(
      total: (json['total'] as num?)?.toInt() ?? 0,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => MyClassStudent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MyClassStudent>[],
    );

Map<String, dynamic> _$MyClassRosterToJson(_MyClassRoster instance) =>
    <String, dynamic>{'total': instance.total, 'data': instance.data};

_MyClassStudent _$MyClassStudentFromJson(Map<String, dynamic> json) =>
    _MyClassStudent(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      rollNo: const LooseStringConverter().fromJson(json['roll_no']),
      name: json['name'] as String,
      gender: json['gender'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      parentName: json['parent_name'] as String?,
      contactNumber: json['contact_number'] as String?,
      attendancePct: const LooseNumConverter().fromJson(json['attendance_pct']),
      feeStatus: json['fee_status'] as String?,
      busRoute: json['bus_route'] as String?,
    );

Map<String, dynamic> _$MyClassStudentToJson(
  _MyClassStudent instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'admission_no': instance.admissionNo,
  'roll_no': const LooseStringConverter().toJson(instance.rollNo),
  'name': instance.name,
  'gender': instance.gender,
  'dob': instance.dob?.toIso8601String(),
  'parent_name': instance.parentName,
  'contact_number': instance.contactNumber,
  'attendance_pct': const LooseNumConverter().toJson(instance.attendancePct),
  'fee_status': instance.feeStatus,
  'bus_route': instance.busRoute,
};

_StudentPerformance _$StudentPerformanceFromJson(Map<String, dynamic> json) =>
    _StudentPerformance(
      studentId: json['student_id'] as String?,
      attendanceTrend:
          (json['attendance_trend'] as List<dynamic>?)
              ?.map(
                (e) => AttendanceTrendPoint.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <AttendanceTrendPoint>[],
      examSummary:
          (json['exam_summary'] as List<dynamic>?)
              ?.map((e) => ExamSummaryRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ExamSummaryRow>[],
    );

Map<String, dynamic> _$StudentPerformanceToJson(_StudentPerformance instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'attendance_trend': instance.attendanceTrend,
      'exam_summary': instance.examSummary,
    };

_AttendanceTrendPoint _$AttendanceTrendPointFromJson(
  Map<String, dynamic> json,
) => _AttendanceTrendPoint(
  month: json['month'] as String,
  attendancePct: const LooseNumConverter().fromJson(json['attendance_pct']),
);

Map<String, dynamic> _$AttendanceTrendPointToJson(
  _AttendanceTrendPoint instance,
) => <String, dynamic>{
  'month': instance.month,
  'attendance_pct': const LooseNumConverter().toJson(instance.attendancePct),
};

_ExamSummaryRow _$ExamSummaryRowFromJson(Map<String, dynamic> json) =>
    _ExamSummaryRow(
      examName: json['exam_name'] as String?,
      subjectName: json['subject_name'] as String?,
      marksObtained: const LooseStringConverter().fromJson(
        json['marks_obtained'],
      ),
      maxMarks: const LooseStringConverter().fromJson(json['max_marks']),
      attendanceStatus: json['attendance_status'] as String?,
      grade: json['grade'] as String?,
    );

Map<String, dynamic> _$ExamSummaryRowToJson(
  _ExamSummaryRow instance,
) => <String, dynamic>{
  'exam_name': instance.examName,
  'subject_name': instance.subjectName,
  'marks_obtained': const LooseStringConverter().toJson(instance.marksObtained),
  'max_marks': const LooseStringConverter().toJson(instance.maxMarks),
  'attendance_status': instance.attendanceStatus,
  'grade': instance.grade,
};

_ClassBirthdays _$ClassBirthdaysFromJson(Map<String, dynamic> json) =>
    _ClassBirthdays(
      today:
          (json['today'] as List<dynamic>?)
              ?.map((e) => BirthdayEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BirthdayEntry>[],
      upcoming:
          (json['upcoming'] as List<dynamic>?)
              ?.map((e) => BirthdayEntry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BirthdayEntry>[],
    );

Map<String, dynamic> _$ClassBirthdaysToJson(_ClassBirthdays instance) =>
    <String, dynamic>{'today': instance.today, 'upcoming': instance.upcoming};

_BirthdayEntry _$BirthdayEntryFromJson(Map<String, dynamic> json) =>
    _BirthdayEntry(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      name: json['name'] as String,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      daysAway: (json['days_away'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$BirthdayEntryToJson(_BirthdayEntry instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'name': instance.name,
      'dob': instance.dob?.toIso8601String(),
      'days_away': instance.daysAway,
    };
