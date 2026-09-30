import 'package:freezed_annotation/freezed_annotation.dart';

part 'academic_refs.freezed.dart';
part 'academic_refs.g.dart';

/// Tiny `{ class_name }` / `{ section_name }` / `{ session_name }` /
/// `{ institution_name }` relation shapes that Prisma nests under many
/// student endpoints (profile, promotion history, enrollments). Shared here
/// the same way subject_ref.dart is, instead of redeclaring them per model.
/// The teacher endpoints select `{ class_id, class_name }` /
/// `{ section_id, section_name }` (teacher/subjects.service.js and friends),
/// so the ids are optional here — null wherever an endpoint omits them.

@freezed
abstract class ClassRef with _$ClassRef {
  const factory ClassRef({
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'class_name') String? className,
  }) = _ClassRef;

  factory ClassRef.fromJson(Map<String, dynamic> json) => _$ClassRefFromJson(json);
}

@freezed
abstract class SectionRef with _$SectionRef {
  const factory SectionRef({
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'section_name') String? sectionName,
  }) = _SectionRef;

  factory SectionRef.fromJson(Map<String, dynamic> json) => _$SectionRefFromJson(json);
}

@freezed
abstract class SessionRef with _$SessionRef {
  const factory SessionRef({@JsonKey(name: 'session_name') String? sessionName}) = _SessionRef;

  factory SessionRef.fromJson(Map<String, dynamic> json) => _$SessionRefFromJson(json);
}

@freezed
abstract class InstitutionRef with _$InstitutionRef {
  const factory InstitutionRef({@JsonKey(name: 'institution_name') String? institutionName}) = _InstitutionRef;

  factory InstitutionRef.fromJson(Map<String, dynamic> json) => _$InstitutionRefFromJson(json);
}

/// "Class 5 - A" style label; falls back to an em dash when both are absent
/// (web: promotion page's classSection()).
String classSectionLabel(String? className, String? sectionName) {
  final parts = [className, sectionName].whereType<String>().where((s) => s.isNotEmpty);
  return parts.isEmpty ? '—' : parts.join(' - ');
}
