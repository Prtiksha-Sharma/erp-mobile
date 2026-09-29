// Both JSON payloads captured LIVE from GET /parent/children/:studentId/teachers
// and GET /parent/teachers/:staffId (real account, real backend). The
// empty subject_teachers array is genuine live data, not a constructed
// edge case — this class currently has none assigned.

import 'package:flutter_test/flutter_test.dart';

import 'package:edusoft_mobile/core/models/teacher_profile.dart';
import 'package:edusoft_mobile/core/models/teacher_summary.dart';

const _childTeachersResponse = {
  'class_teacher': {
    'staff_id': '26a02b0d-fb43-4226-8973-15d2d7368fbd',
    'full_name': 'Rohit Sharma',
    'employee_code': 'GHPS-EMP-0003',
    'designation': null,
    'contact_number': '9876543210',
    'profile_photo_url':
        'https://res.cloudinary.com/h1ilkscf/image/upload/v1787223781/staff-photos/26a02b0d-fb43-4226-8973-15d2d7368fbd/photo_1787223780251.jpg',
  },
  'subject_teachers': [],
};

const _teacherProfileResponse = {
  'staff_id': '26a02b0d-fb43-4226-8973-15d2d7368fbd',
  'full_name': 'Rohit Sharma',
  'designation': null,
  'department': null,
  'contact_number': '9876543210',
  'qualification': 'M.sc',
  'date_of_joining': '2026-07-01T00:00:00.000Z',
  'gender': 'Male',
  'profile_photo_url':
      'https://res.cloudinary.com/h1ilkscf/image/upload/v1787223781/staff-photos/26a02b0d-fb43-4226-8973-15d2d7368fbd/photo_1787223780251.jpg',
  'users': {'email': 'rohit.sharma@example.com'},
};

void main() {
  group('ChildTeachers.fromJson', () {
    test('parses class_teacher and a genuinely empty subject_teachers list', () {
      final result = ChildTeachers.fromJson(_childTeachersResponse);

      expect(result.classTeacher?.fullName, 'Rohit Sharma');
      expect(result.classTeacher?.designation, isNull);
      expect(result.subjectTeachers, isEmpty);
    });

    test('handles a null class_teacher without throwing', () {
      final json = {..._childTeachersResponse, 'class_teacher': null};

      final result = ChildTeachers.fromJson(json);

      expect(result.classTeacher, isNull);
    });
  });

  group('TeacherProfile.fromJson', () {
    test('parses the richer detail shape, including the nested email', () {
      final profile = TeacherProfile.fromJson(_teacherProfileResponse);

      expect(profile.qualification, 'M.sc');
      expect(profile.gender, 'Male');
      expect(profile.dateOfJoining?.year, 2026);
      expect(profile.emailRef?.email, 'rohit.sharma@example.com');
      expect(profile.designation, isNull);
      expect(profile.department, isNull);
    });
  });
}
