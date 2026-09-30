import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_certificates.freezed.dart';
part 'student_certificates.g.dart';

/// GET /student/certificates/id-card — see
/// edusoft_backend/src/features/admin/student/certificates.service.js
/// (getIdCard). Note: the backend CREATES a card on this GET if the student
/// has no unexpired one, so it never 404s for "no card yet". There's no
/// photo field — the ID card visual uses initials, same as the web.
@freezed
abstract class StudentIdCard with _$StudentIdCard {
  const factory StudentIdCard({
    @JsonKey(name: 'id_card_id') required String idCardId,
    @JsonKey(name: 'card_number') String? cardNumber,
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    @JsonKey(name: 'expiry_date') DateTime? expiryDate,
    @JsonKey(name: 'student_name') String? studentName,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'class_name') String? className,
    @JsonKey(name: 'section_name') String? sectionName,
    @JsonKey(name: 'institution_name') String? institutionName,
    @JsonKey(name: 'session_name') String? sessionName,
  }) = _StudentIdCard;

  factory StudentIdCard.fromJson(Map<String, dynamic> json) => _$StudentIdCardFromJson(json);
}

/// The four fixed certificate routes (`/student/certificates/<type>`) —
/// there's no generic `:type` param on the backend, so this enum is the
/// complete list, in the same order as the web's tabs.
enum CertificateType {
  bonafide('bonafide', 'Bonafide'),
  character('character', 'Character'),
  study('study', 'Study Certificate'),
  leaving('leaving', 'Leaving Certificate');

  const CertificateType(this.path, this.label);

  final String path;
  final String label;
}

/// GET /student/certificates/{bonafide|character|study|leaving} —
/// certificates.service.js (getCertificate). Generated on the fly, not
/// persisted; `issued_date` is "now".
@freezed
abstract class StudentCertificate with _$StudentCertificate {
  const factory StudentCertificate({
    @JsonKey(name: 'certificate_type') required String certificateType,
    @JsonKey(name: 'issued_date') DateTime? issuedDate,
    @JsonKey(name: 'institution_name') String? institutionName,
    required String content,
    CertificateStudent? student,
  }) = _StudentCertificate;

  factory StudentCertificate.fromJson(Map<String, dynamic> json) => _$StudentCertificateFromJson(json);
}

@freezed
abstract class CertificateStudent with _$CertificateStudent {
  const factory CertificateStudent({
    String? name,
    @JsonKey(name: 'admission_no') String? admissionNo,
  }) = _CertificateStudent;

  factory CertificateStudent.fromJson(Map<String, dynamic> json) => _$CertificateStudentFromJson(json);
}
