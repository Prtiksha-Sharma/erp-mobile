// Parses JSON captured LIVE from GET /parent/children/:studentId/homework
// and .../assignments during the Homework slice's planning phase — real
// account, real backend. Includes a genuine data quirk found in that live
// response: a record with due_date/assigned_date in 2016 (almost certainly
// a seed-data typo for 2026), kept here deliberately as a real-world edge
// case the parser and UI must survive, not sanitize away.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/homework_submission.dart';

const _pendingNoRemark = {
  'submission_id': '53ec793c-2ef6-48d7-b2ad-0017a43760f9',
  'homework_id': '72355c7b-8825-4525-b751-3e5970f066a9',
  'status': 'PENDING',
  'submitted_at': null,
  'attachment_url': null,
  'remark': null,
  'remarked_by': null,
  'remarked_at': null,
  'academic_homework': {
    'title': 'Biology homework',
    'description': 'Do it before deadlines',
    'attachment_url': null,
    'assigned_date': '2026-09-04T00:00:00.000Z',
    'due_date': '2026-09-05T00:00:00.000Z',
    'academic_subjects': {'subject_name': 'Science'},
    'users': {'user_id': '612b327c-3a74-4489-a964-5468912f01bc', 'username': 'GHPS-EMP-0015'},
  },
  'effective_status': 'MISSING',
};

// Real live data — the date typo is genuine, not introduced for the test.
const _oddDateRecord = {
  'submission_id': '1cc5dd0b-e35e-42d6-9fca-671e936b22f5',
  'homework_id': '85f76ebe-7284-44fa-93db-10bc7069d0c3',
  'status': 'PENDING',
  'submitted_at': null,
  'attachment_url': null,
  'remark': null,
  'remarked_by': null,
  'remarked_at': null,
  'academic_homework': {
    'title': 'chapter 5',
    'description': 'read this lesson',
    'attachment_url': 'https://preskool.dreamstechnologies.com/html/teacher-dashboard.html',
    'assigned_date': '2016-08-05T00:00:00.000Z',
    'due_date': '2016-08-07T00:00:00.000Z',
    'academic_subjects': {'subject_name': 'English'},
    'users': {'user_id': '612b327c-3a74-4489-a964-5468912f01bc', 'username': 'GHPS-EMP-0015'},
  },
  'effective_status': 'MISSING',
};

void main() {
  group('HomeworkSubmission.fromJson', () {
    test('parses a well-formed record from a live response', () {
      final item = HomeworkSubmission.fromJson(_pendingNoRemark);

      expect(item.status, HomeworkStatus.pending);
      expect(item.effectiveStatus, HomeworkStatus.missing);
      expect(item.remark, isNull);
      expect(item.homework.title, 'Biology homework');
      expect(item.homework.subject.subjectName, 'Science');
      expect(item.homework.assignedBy.username, 'GHPS-EMP-0015');
    });

    test('does not throw on a genuinely odd (real, pre-seed-fix) due date', () {
      final item = HomeworkSubmission.fromJson(_oddDateRecord);

      expect(item.homework.dueDate.year, 2016);
      expect(item.attachmentUrl, isNull); // submission-level — no student submission here
      expect(item.homework.attachmentUrl, isNotNull); // assignment-level — the teacher's link
      expect(item.homework.title, 'chapter 5');
    });

    test('falls back to unknown for an unrecognized status value', () {
      final json = {
        ..._pendingNoRemark,
        'status': 'SOME_FUTURE_STATUS',
        'effective_status': 'SOME_FUTURE_STATUS',
      };

      final item = HomeworkSubmission.fromJson(json);

      expect(item.status, HomeworkStatus.unknown);
      expect(item.effectiveStatus, HomeworkStatus.unknown);
    });
  });
}
