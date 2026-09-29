import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_ref.freezed.dart';
part 'subject_ref.g.dart';

/// Shared across any endpoint that nests `academic_subjects: { subject_name }`
/// — first seen in Homework, reused as-is by Timetable. Extracted here once
/// the same shape was needed a second time.
@freezed
abstract class SubjectRef with _$SubjectRef {
  const factory SubjectRef({
    @JsonKey(name: 'subject_name') required String subjectName,
  }) = _SubjectRef;

  factory SubjectRef.fromJson(Map<String, dynamic> json) => _$SubjectRefFromJson(json);
}
