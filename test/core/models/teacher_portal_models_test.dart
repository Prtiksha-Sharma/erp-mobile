// Parse tests for the teacher-portal models, using payloads shaped exactly
// like the backend's select/include clauses (edusoft_backend/src/features/
// teacher/*.service.js) — see each model's doc comment for its source.

import 'package:decimal/decimal.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/attendance_record.dart';
import 'package:edusoft_mobile/core/models/message_thread.dart';
import 'package:edusoft_mobile/core/models/school_feed.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/models/staff_self_service.dart';
import 'package:edusoft_mobile/core/models/student_brief.dart';
import 'package:edusoft_mobile/core/models/student_records.dart';
import 'package:edusoft_mobile/core/models/teacher_academics.dart';
import 'package:edusoft_mobile/core/models/teacher_classroom.dart';
import 'package:edusoft_mobile/core/models/teacher_exams.dart';
import 'package:edusoft_mobile/core/models/teacher_homework.dart';
import 'package:edusoft_mobile/core/models/timetable_entry.dart';

void main() {
  test('StaffProfile — profile.service.js#getMyProfile select', () {
    final p = StaffProfile.fromJson({
      'staff_id': 'st1',
      'employee_code': 'GHPS-EMP-0015',
      'full_name': 'Ramesh Kumar',
      'designation': 'TGT Mathematics',
      'department': 'Mathematics',
      'date_of_joining': '2021-06-01T00:00:00.000Z',
      'date_of_birth': '1988-02-14T00:00:00.000Z',
      'gender': 'Male',
      'contact_number': '9876543210',
      'address': '12 MG Road, Pune',
      'qualification': 'M.Sc, B.Ed',
      'employment_status': 'ACTIVE',
      'profile_photo_url': null,
      'institution': {'institution_id': 'i1', 'institution_name': 'Green Hills Public School'},
      'branch': null,
      'reports_to': {'staff_id': 'st0', 'full_name': 'Anita Rao', 'designation': 'Principal'},
      'users': {'username': 'GHPS-EMP-0015', 'email': 'ramesh@example.com', 'mobile_no': '9876543210'},
    });
    expect(p.fullName, 'Ramesh Kumar');
    expect(p.institution?.institutionName, 'Green Hills Public School');
    expect(p.user?.email, 'ramesh@example.com');
    expect(p.reportsTo?.fullName, 'Anita Rao');
    expect(p.branch, isNull);
  });

  test('SubjectAssignment + deriveAssignmentOptions', () {
    final rows = [
      for (final (i, (cls, sec, sub)) in [('c8', 'A', 'm'), ('c8', 'B', 'm'), ('c9', 'A', 's')].indexed)
        SubjectAssignment.fromJson({
          'subject_teacher_id': 'stt$i',
          'staff_id': 'st1',
          'class_id': cls,
          'section_id': 'sec-$sec',
          'subject_id': sub,
          'session_id': 'sess1',
          'created_at': '2026-04-01T06:00:00.000Z',
          'classes': {'class_id': cls, 'class_name': cls == 'c8' ? 'Class 8' : 'Class 9'},
          'sections': {'section_id': 'sec-$sec', 'section_name': sec},
          'academic_subjects': {'subject_id': sub, 'subject_name': sub == 'm' ? 'Mathematics' : 'Science'},
        }),
    ];
    expect(rows.first.sessionId, 'sess1');
    expect(rows.first.classRef?.classId, 'c8');
    final opts = deriveAssignmentOptions(rows, 'c8');
    expect(opts.classes.map((o) => o.label), ['Class 8', 'Class 9']);
    expect(opts.sections.map((o) => o.label), ['A', 'B']);
    expect(opts.subjects.map((o) => o.label), ['Mathematics']);
  });

  test('TimetableEntry — teacher/timetable.service.js includes classes/sections', () {
    final e = TimetableEntry.fromJson({
      'timetable_entry_id': 't1',
      'class_id': 'c8',
      'section_id': 's1',
      'subject_id': 'm',
      'staff_id': 'st1',
      'session_id': 'sess1',
      'day_of_week': 3,
      'period_number': 2,
      'start_time': '1970-01-01T09:30:00.000Z',
      'end_time': '1970-01-01T10:15:00.000Z',
      'room': '101',
      'period_type': 'CLASS',
      'break_label': null,
      'classes': {'class_id': 'c8', 'class_name': 'Class 8'},
      'sections': {'section_id': 's1', 'section_name': 'A'},
      'academic_subjects': {'subject_id': 'm', 'subject_name': 'Mathematics'},
    });
    expect(e.classRef?.className, 'Class 8');
    expect(e.sectionRef?.sectionName, 'A');
    expect(e.teacher, isNull);
    expect(e.subject?.subjectId, 'm');
  });

  test('LessonPlan / SyllabusEntry', () {
    final plan = LessonPlan.fromJson({
      'lesson_plan_id': 'lp1',
      'class_id': 'c8',
      'section_id': null,
      'subject_id': 'm',
      'session_id': 'sess1',
      'topic': 'Linear equations',
      'description': null,
      'planned_date': '2026-10-05T00:00:00.000Z',
      'attachment_url': null,
      'status': 'PLANNED',
      'created_by': 'u1',
      'created_at': '2026-09-20T10:00:00.000Z',
      'updated_at': '2026-09-20T10:00:00.000Z',
      'classes': {'class_id': 'c8', 'class_name': 'Class 8'},
      'sections': null,
      'academic_subjects': {'subject_id': 'm', 'subject_name': 'Mathematics'},
    });
    expect(plan.sectionRef, isNull);
    expect(plan.status, 'PLANNED');

    final syl = SyllabusEntry.fromJson({
      'syllabus_id': 'sy1',
      'class_id': 'c8',
      'section_id': 's1',
      'subject_id': 'm',
      'session_id': 'sess1',
      'title': 'Unit 1 — Numbers',
      'status': 'IN_PROGRESS',
      'created_by': 'u0',
      'classes': {'class_id': 'c8', 'class_name': 'Class 8'},
      'sections': {'section_id': 's1', 'section_name': 'A'},
      'academic_subjects': {'subject_id': 'm', 'subject_name': 'Mathematics'},
    });
    expect(syl.title, 'Unit 1 — Numbers');
    expect(syl.status, 'IN_PROGRESS');
  });

  test('Staff attendance + leaves', () {
    final a = StaffAttendanceSummary.fromJson({
      'from': '2026-09-01T00:00:00.000Z',
      'to': '2026-09-30T23:59:59.999Z',
      'total': 3,
      'data': [
        {'attendance_id': 'a1', 'staff_id': 'st1', 'attendance_date': '2026-09-02T00:00:00.000Z', 'status': 'PRESENT', 'remarks': null, 'marked_by': 'u0', 'created_at': null},
        {'attendance_id': 'a2', 'staff_id': 'st1', 'attendance_date': '2026-09-03T00:00:00.000Z', 'status': 'ABSENT'},
        {'attendance_id': 'a3', 'staff_id': 'st1', 'attendance_date': '2026-09-04T00:00:00.000Z', 'status': 'ON_LEAVE'},
      ],
    });
    expect(a.presentCount, 1);
    expect(a.presentPercent, closeTo(33.33, 0.01));
    expect(a.data.last.status, 'ON_LEAVE');
    expect(const StaffAttendanceSummary().presentPercent, isNull);

    final l = StaffLeave.fromJson({
      'leave_id': 'l1',
      'staff_id': 'st1',
      'leave_type': 'Casual Leave',
      'from_date': '2026-10-01T00:00:00.000Z',
      'to_date': '2026-10-02T00:00:00.000Z',
      'total_days': '2',
      'reason': null,
      'attachment_url': null,
      'status': 'CANCELLED',
      'created_at': '2026-09-28T10:00:00.000Z',
    });
    expect(l.totalDays, 2);
    expect(l.status, 'CANCELLED');
  });

  test('Class leave request — StudentLeave with students include', () {
    final l = StudentLeave.fromJson({
      'leave_id': 'sl1',
      'student_id': 'stu1',
      'leave_type': 'Sick Leave',
      'from_date': '2026-09-10T00:00:00.000Z',
      'to_date': '2026-09-10T00:00:00.000Z',
      'total_days': '1',
      'status': 'PENDING',
      'students': {'student_id': 'stu1', 'admission_no': 'ADM-001', 'applicants': {'first_name': 'Asha', 'last_name': 'Patil'}},
    });
    expect(l.student?.displayName, 'Asha Patil');
    expect(l.student?.admissionNo, 'ADM-001');
  });

  test('Homework list, submissions and comments', () {
    final hw = TeacherHomework.fromJson({
      'homework_id': 'hw1',
      'type': 'HOMEWORK',
      'class_id': 'c8',
      'section_id': 's1',
      'subject_id': 'm',
      'session_id': 'sess1',
      'assigned_by': 'u1',
      'title': 'Chapter 4 exercises',
      'description': 'Q1-10',
      'attachment_url': null,
      'assigned_date': '2026-09-25T00:00:00.000Z',
      'due_date': '2026-09-30T00:00:00.000Z',
      'classes': {'class_id': 'c8', 'class_name': 'Class 8'},
      'sections': {'section_id': 's1', 'section_name': 'A'},
      'academic_subjects': {'subject_id': 'm', 'subject_name': 'Mathematics'},
      'submissions': [
        {'submission_id': 'sb1', 'status': 'SUBMITTED'},
        {'submission_id': 'sb2', 'status': 'PENDING'},
      ],
    });
    expect(hw.submissions, hasLength(2));

    final sub = TeacherSubmission.fromJson({
      'submission_id': 'sb2',
      'homework_id': 'hw1',
      'student_id': 'stu1',
      'status': 'PENDING',
      'effective_status': 'MISSING',
      'submitted_at': null,
      'remark': null,
      'students': {'student_id': 'stu1', 'admission_no': 'ADM-001', 'roll_no': 7, 'applicants': {'first_name': 'Asha', 'last_name': null}},
    });
    expect(sub.effectiveStatus, 'MISSING');
    expect(sub.student?.rollNo, '7');
    expect(sub.student?.displayName, 'Asha');

    final c = HomeworkComment.fromJson({
      'comment_id': 'cm1',
      'homework_id': 'hw1',
      'commented_by': 'u1',
      'comment_text': 'Please show working.',
      'created_at': '2026-09-26T08:00:00.000Z',
      'users': {'user_id': 'u1', 'username': 'GHPS-EMP-0015', 'staff_account': {'full_name': 'Ramesh Kumar'}},
    });
    expect(c.author?.staffAccount?.fullName, 'Ramesh Kumar');
  });

  test('Exams, entry status and marks', () {
    final ex = TeacherExam.fromJson({
      'exam_id': 'x1',
      'institution_id': 'i1',
      'exam_type_id': 'et1',
      'session_id': 'sess1',
      'exam_name': 'Half Yearly 2026',
      'start_date': '2026-10-01T00:00:00.000Z',
      'end_date': null,
      'exam_types': {'exam_type_id': 'et1', 'type_name': 'Term'},
      'academic_sessions': {'session_id': 'sess1', 'session_name': '2026-27'},
    });
    expect(ex.examType?.typeName, 'Term');
    expect(ex.session?.sessionName, '2026-27');

    final st = MarksEntryStatus.fromJson({
      'exam_schedule_id': 'es1',
      'class_name': 'Class 8',
      'section_name': 'A',
      'subject_id': 'm',
      'subject_name': 'Mathematics',
      'total_students': 30,
      'entered_count': 12,
      'pending_count': 18,
    });
    expect(st.pendingCount, 18);

    final m = ExamMarkEntry.fromJson({
      'mark_id': 'mk1',
      'exam_schedule_id': 'es1',
      'student_id': 'stu1',
      'marks_obtained': '87.5',
      'is_absent': false,
      'attendance_status': 'PRESENT',
      'grade': null,
      'remarks': null,
      'students': {'student_id': 'stu1', 'admission_no': 'ADM-001', 'roll_no': '7', 'applicants': {'first_name': 'Asha', 'last_name': 'Patil'}},
    });
    expect(m.marksObtained, Decimal.parse('87.5'));
    expect(m.attendanceStatus, 'PRESENT');
  });

  test('Class roster, My Class, performance and birthdays', () {
    final roster = ClassAttendanceRoster.fromJson({
      'date': '2026-09-30T00:00:00.000Z',
      'is_holiday': false,
      'total': 2,
      'data': [
        {
          'student_id': 'stu1',
          'admission_no': 'ADM-001',
          'roll_no': '1',
          'applicants': {'first_name': 'Asha', 'last_name': 'Patil'},
          'current_class': {'class_name': 'Class 8'},
          'current_section': {'section_name': 'A'},
          'attendance': {
            'attendance_id': 'sa1',
            'student_id': 'stu1',
            'attendance_date': '2026-09-30T00:00:00.000Z',
            'status': 'LATE',
            'remarks': null,
            'check_in_time': '1970-01-01T08:20:00.000Z',
            'session_id': 'sess1',
          },
        },
        {'student_id': 'stu2', 'admission_no': 'ADM-002', 'roll_no': null, 'applicants': {'first_name': 'Ravi'}, 'attendance': null},
      ],
    });
    expect(roster.data.first.attendance?.status, AttendanceStatus.late);
    expect(roster.data.last.attendance, isNull);

    final cls = MyClassRoster.fromJson({
      'total': 1,
      'data': [
        {
          'student_id': 'stu1',
          'admission_no': 'ADM-001',
          'roll_no': '1',
          'name': 'Asha Patil',
          'gender': 'Female',
          'dob': '2013-05-10T00:00:00.000Z',
          'parent_name': 'Suresh Patil',
          'contact_number': '9000000000',
          'attendance_pct': 92.5,
          'fee_status': 'NO_RECORD',
          'bus_route': null,
        },
      ],
    });
    expect(cls.data.single.attendancePct, 92.5);

    final perf = StudentPerformance.fromJson({
      'student_id': 'stu1',
      'attendance_trend': [
        {'month': '2026-08', 'attendance_pct': 95},
      ],
      'exam_summary': [
        {'exam_name': 'Term', 'subject_name': 'Mathematics', 'marks_obtained': '87.5', 'max_marks': '100', 'attendance_status': 'PRESENT', 'grade': 'A'},
        {'exam_name': 'Term', 'subject_name': 'English', 'marks_obtained': null, 'max_marks': '100', 'attendance_status': 'ABSENT', 'grade': null},
      ],
    });
    expect(perf.examSummary.first.marksObtained, '87.5');
    expect(perf.attendanceTrend.single.attendancePct, 95);

    final b = ClassBirthdays.fromJson({
      'today': [],
      'upcoming': [
        {'student_id': 'stu1', 'admission_no': 'ADM-001', 'name': 'Asha Patil', 'dob': '2013-10-10T00:00:00.000Z', 'days_away': 10},
      ],
    });
    expect(b.upcoming.single.daysAway, 10);
  });

  test('Notices / events / activities', () {
    expect(
      SchoolNotice.fromJson({'notice_id': 'n1', 'institution_id': 'i1', 'title': 'PTM Saturday', 'notice_date': '2026-09-29T00:00:00.000Z', 'is_active': true}).title,
      'PTM Saturday',
    );
    expect(
      SchoolEvent.fromJson({'event_id': 'e1', 'institution_id': 'i1', 'event_name': 'Sports Day', 'event_date': null}).eventName,
      'Sports Day',
    );
    final a = SchoolActivity.fromJson({
      'activity_id': 'ac1',
      'institution_id': 'i1',
      'activity_name': 'Science Fair',
      'activity_type': 'Competition',
      'target_audience': 'BOTH',
      'activity_date': '2026-11-02T00:00:00.000Z',
      'venue': 'Main Hall',
      'created_by': 'u0',
      'created_at': '2026-09-01T00:00:00.000Z',
      'updated_at': '2026-09-01T00:00:00.000Z',
    });
    expect(a.targetAudience, 'BOTH');
  });

  test('Message threads, messages and presence', () {
    final t = MessageThread.fromJson({
      'thread_id': 'th1',
      'institution_id': 'i1',
      'student_id': 'stu1',
      'parent_account_id': 'pa1',
      'staff_id': 'st1',
      'subject': 'Homework query',
      'status': 'OPEN',
      'last_message_at': '2026-09-30T08:00:00.000Z',
      'students': {'student_id': 'stu1', 'admission_no': 'ADM-001', 'applicants': {'first_name': 'Asha', 'last_name': 'Patil'}},
      'parent_accounts': {'user_id': 'pu1', 'parents': {'first_name': 'Suresh', 'last_name': 'Patil'}},
      'messages': [
        {
          'message_id': 'm1',
          'thread_id': 'th1',
          'sender_user_id': 'pu1',
          'sender_role': 'PARENT',
          'body': '',
          'attachment_url': 'https://res.cloudinary.com/x/image/upload/v1/messages/th1/1.JPG',
          'read_at': null,
          'created_at': '2026-09-30T08:00:00.000Z',
        },
      ],
    });
    expect(t.parentName, 'Suresh Patil');
    expect(t.studentLabel, 'Asha Patil');
    expect(isImageAttachment(t.messages.single.attachmentUrl), isTrue);
    expect(attachmentFileName('https://x/y/report.pdf'), 'report.pdf');

    final noParent = MessageThread.fromJson({'thread_id': 'th2', 'parent_accounts': {'user_id': 'pu2', 'parents': null}});
    expect(noParent.parentName, 'Parent');
    expect(noParent.studentLabel, '—');

    final p = ParentPresence.fromJson({'isOnline': false, 'lastActiveAt': '2026-09-30T07:00:00.000Z'});
    expect(p.isOnline, isFalse);
    expect(p.lastActiveAt, isNotNull);
  });

  test('StudentBrief falls back to admission number', () {
    expect(const StudentBrief(admissionNo: 'ADM-9').displayName, 'ADM-9');
    expect(const StudentBrief().displayName, '—');
  });
}
