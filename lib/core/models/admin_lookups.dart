import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';

part 'admin_lookups.freezed.dart';
part 'admin_lookups.g.dart';

/// GET /admin/students/classes — admin/student/student.service.js
/// #getClasses (`select { class_id, class_name, display_order,
/// registration_fee, sections { section_id, section_name } }`, sorted by
/// sortClasses). The class/section picker shared by every School Admin
/// page that filters by class (15 web pages use this one endpoint).
@freezed
abstract class AdminClassOption with _$AdminClassOption {
  const factory AdminClassOption({
    @JsonKey(name: 'class_id') required String classId,
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'display_order') int? displayOrder,
    @JsonKey(name: 'registration_fee') @NullableDecimalConverter() Decimal? registrationFee,
    @Default(<SectionRef>[]) List<SectionRef> sections,
  }) = _AdminClassOption;

  factory AdminClassOption.fromJson(Map<String, dynamic> json) => _$AdminClassOptionFromJson(json);
}
