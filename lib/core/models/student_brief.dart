import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'student_profile.dart';

part 'student_brief.freezed.dart';
part 'student_brief.g.dart';

/// The small `students: { student_id, admission_no, roll_no, applicants:
/// { first_name, last_name } }` relation the teacher endpoints nest under
/// exam marks, homework submissions, leave requests and message threads
/// (teacher/examMarks.service.js#listMarks, homework.service.js#getSubmissions,
/// leaves.service.js#listMyClassLeaves, messages.service.js). Every field is
/// optional because each endpoint selects a slightly different subset
/// (leaves/messages omit roll_no; the attendance roster adds
/// current_class/current_section).
@freezed
abstract class StudentBrief with _$StudentBrief {
  const factory StudentBrief({
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') @LooseStringConverter() String? rollNo,
    @JsonKey(name: 'applicants') ApplicantInfo? applicant,
    @JsonKey(name: 'current_class') ClassRef? currentClass,
    @JsonKey(name: 'current_section') SectionRef? currentSection,
  }) = _StudentBrief;

  factory StudentBrief.fromJson(Map<String, dynamic> json) => _$StudentBriefFromJson(json);
}

extension StudentBriefDisplay on StudentBrief {
  /// `first last`, falling back to the admission number, then an em dash —
  /// the web's studentName()/studentLabel() helpers.
  String get displayName {
    final name = [applicant?.firstName, applicant?.lastName]
        .whereType<String>()
        .where((s) => s.trim().isNotEmpty)
        .join(' ');
    if (name.isNotEmpty) return name;
    return (admissionNo?.isNotEmpty ?? false) ? admissionNo! : '—';
  }
}
