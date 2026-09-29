import 'package:freezed_annotation/freezed_annotation.dart';

part 'child.freezed.dart';
part 'child.g.dart';

/// Matches GET /parent/children exactly (see
/// edusoft_backend/src/features/parent/children.service.js#listMyChildren)
/// — every field is snake_case on the wire, `student_id` is the only
/// non-nullable one.
///
/// Uses explicit @JsonKey per field rather than a class-level fieldRename —
/// class-level FieldRename.snake didn't reach the generator correctly with
/// the freezed/json_serializable versions pinned in this project (verified
/// by running build_runner: it looked for the literal camelCase key on the
/// wire instead of converting). Explicit is more verbose but deterministic.
@freezed
abstract class Child with _$Child {
  const factory Child({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'student_status') String? studentStatus,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
  }) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
}

extension ChildDisplay on Child {
  String get displayName {
    final name = [firstName, lastName].where((s) => s != null && s.isNotEmpty).join(' ');
    return name.isEmpty ? (admissionNo ?? studentId) : name;
  }
}
