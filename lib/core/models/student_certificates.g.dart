// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_certificates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentIdCard _$StudentIdCardFromJson(Map<String, dynamic> json) =>
    _StudentIdCard(
      idCardId: json['id_card_id'] as String,
      cardNumber: json['card_number'] as String?,
      issueDate: json['issue_date'] == null
          ? null
          : DateTime.parse(json['issue_date'] as String),
      expiryDate: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      studentName: json['student_name'] as String?,
      admissionNo: json['admission_no'] as String?,
      className: json['class_name'] as String?,
      sectionName: json['section_name'] as String?,
      institutionName: json['institution_name'] as String?,
      sessionName: json['session_name'] as String?,
    );

Map<String, dynamic> _$StudentIdCardToJson(_StudentIdCard instance) =>
    <String, dynamic>{
      'id_card_id': instance.idCardId,
      'card_number': instance.cardNumber,
      'issue_date': instance.issueDate?.toIso8601String(),
      'expiry_date': instance.expiryDate?.toIso8601String(),
      'student_name': instance.studentName,
      'admission_no': instance.admissionNo,
      'class_name': instance.className,
      'section_name': instance.sectionName,
      'institution_name': instance.institutionName,
      'session_name': instance.sessionName,
    };

_StudentCertificate _$StudentCertificateFromJson(Map<String, dynamic> json) =>
    _StudentCertificate(
      certificateType: json['certificate_type'] as String,
      issuedDate: json['issued_date'] == null
          ? null
          : DateTime.parse(json['issued_date'] as String),
      institutionName: json['institution_name'] as String?,
      content: json['content'] as String,
      student: json['student'] == null
          ? null
          : CertificateStudent.fromJson(
              json['student'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StudentCertificateToJson(_StudentCertificate instance) =>
    <String, dynamic>{
      'certificate_type': instance.certificateType,
      'issued_date': instance.issuedDate?.toIso8601String(),
      'institution_name': instance.institutionName,
      'content': instance.content,
      'student': instance.student,
    };

_CertificateStudent _$CertificateStudentFromJson(Map<String, dynamic> json) =>
    _CertificateStudent(
      name: json['name'] as String?,
      admissionNo: json['admission_no'] as String?,
    );

Map<String, dynamic> _$CertificateStudentToJson(_CertificateStudent instance) =>
    <String, dynamic>{
      'name': instance.name,
      'admission_no': instance.admissionNo,
    };
