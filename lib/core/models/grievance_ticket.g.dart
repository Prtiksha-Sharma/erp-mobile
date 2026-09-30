// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grievance_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GrievanceApplicantRef _$GrievanceApplicantRefFromJson(
  Map<String, dynamic> json,
) => _GrievanceApplicantRef(
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
);

Map<String, dynamic> _$GrievanceApplicantRefToJson(
  _GrievanceApplicantRef instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
};

_GrievanceStudentRef _$GrievanceStudentRefFromJson(Map<String, dynamic> json) =>
    _GrievanceStudentRef(
      studentId: json['student_id'] as String,
      applicants: GrievanceApplicantRef.fromJson(
        json['applicants'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$GrievanceStudentRefToJson(
  _GrievanceStudentRef instance,
) => <String, dynamic>{
  'student_id': instance.studentId,
  'applicants': instance.applicants,
};

_GrievanceStaffRef _$GrievanceStaffRefFromJson(Map<String, dynamic> json) =>
    _GrievanceStaffRef(fullName: json['full_name'] as String);

Map<String, dynamic> _$GrievanceStaffRefToJson(_GrievanceStaffRef instance) =>
    <String, dynamic>{'full_name': instance.fullName};

_GrievanceResponse _$GrievanceResponseFromJson(Map<String, dynamic> json) =>
    _GrievanceResponse(
      responseId: json['response_id'] as String,
      responderRole: json['responder_role'] as String,
      body: json['body'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$GrievanceResponseToJson(_GrievanceResponse instance) =>
    <String, dynamic>{
      'response_id': instance.responseId,
      'responder_role': instance.responderRole,
      'body': instance.body,
      'created_at': instance.createdAt.toIso8601String(),
    };

_GrievanceTicket _$GrievanceTicketFromJson(Map<String, dynamic> json) =>
    _GrievanceTicket(
      ticketId: json['ticket_id'] as String,
      category: json['category'] as String?,
      subject: json['subject'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      priority: json['priority'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      resolvedAt: json['resolved_at'] == null
          ? null
          : DateTime.parse(json['resolved_at'] as String),
      students: json['students'] == null
          ? null
          : GrievanceStudentRef.fromJson(
              json['students'] as Map<String, dynamic>,
            ),
      staffAccounts: json['staff_accounts'] == null
          ? null
          : GrievanceStaffRef.fromJson(
              json['staff_accounts'] as Map<String, dynamic>,
            ),
      responses: (json['grievance_responses'] as List<dynamic>?)
          ?.map((e) => GrievanceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GrievanceTicketToJson(_GrievanceTicket instance) =>
    <String, dynamic>{
      'ticket_id': instance.ticketId,
      'category': instance.category,
      'subject': instance.subject,
      'description': instance.description,
      'status': instance.status,
      'priority': instance.priority,
      'created_at': instance.createdAt.toIso8601String(),
      'resolved_at': instance.resolvedAt?.toIso8601String(),
      'students': instance.students,
      'staff_accounts': instance.staffAccounts,
      'grievance_responses': instance.responses,
    };
