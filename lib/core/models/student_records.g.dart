// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StudentDocument _$StudentDocumentFromJson(Map<String, dynamic> json) =>
    _StudentDocument(
      documentId: json['document_id'] as String,
      documentName: json['document_name'] as String,
      fileName: json['file_name'] as String?,
      fileUrl: json['file_url'] as String?,
      fileSize: const LooseNumConverter().fromJson(json['file_size']),
      verificationStatus: json['verification_status'] as String?,
      uploadedAt: json['uploaded_at'] == null
          ? null
          : DateTime.parse(json['uploaded_at'] as String),
    );

Map<String, dynamic> _$StudentDocumentToJson(_StudentDocument instance) =>
    <String, dynamic>{
      'document_id': instance.documentId,
      'document_name': instance.documentName,
      'file_name': instance.fileName,
      'file_url': instance.fileUrl,
      'file_size': const LooseNumConverter().toJson(instance.fileSize),
      'verification_status': instance.verificationStatus,
      'uploaded_at': instance.uploadedAt?.toIso8601String(),
    };

_StudentLeave _$StudentLeaveFromJson(Map<String, dynamic> json) =>
    _StudentLeave(
      leaveId: json['leave_id'] as String,
      leaveType: json['leave_type'] as String,
      fromDate: DateTime.parse(json['from_date'] as String),
      toDate: DateTime.parse(json['to_date'] as String),
      totalDays: const LooseNumConverter().fromJson(json['total_days']),
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$StudentLeaveToJson(_StudentLeave instance) =>
    <String, dynamic>{
      'leave_id': instance.leaveId,
      'leave_type': instance.leaveType,
      'from_date': instance.fromDate.toIso8601String(),
      'to_date': instance.toDate.toIso8601String(),
      'total_days': const LooseNumConverter().toJson(instance.totalDays),
      'reason': instance.reason,
      'status': instance.status,
      'remarks': instance.remarks,
    };

_MedicalInfo _$MedicalInfoFromJson(Map<String, dynamic> json) => _MedicalInfo(
  bloodGroup: json['blood_group'] as String?,
  heightCm: const LooseStringConverter().fromJson(json['height_cm']),
  weightKg: const LooseStringConverter().fromJson(json['weight_kg']),
  allergies: json['allergies'] as String?,
  medicalConditions: json['medical_conditions'] as String?,
  doctorName: json['doctor_name'] as String?,
  doctorContact: json['doctor_contact'] as String?,
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$MedicalInfoToJson(_MedicalInfo instance) =>
    <String, dynamic>{
      'blood_group': instance.bloodGroup,
      'height_cm': const LooseStringConverter().toJson(instance.heightCm),
      'weight_kg': const LooseStringConverter().toJson(instance.weightKg),
      'allergies': instance.allergies,
      'medical_conditions': instance.medicalConditions,
      'doctor_name': instance.doctorName,
      'doctor_contact': instance.doctorContact,
      'remarks': instance.remarks,
    };

_DisciplineRecord _$DisciplineRecordFromJson(Map<String, dynamic> json) =>
    _DisciplineRecord(
      disciplineId: json['discipline_id'] as String,
      incidentDate: json['incident_date'] == null
          ? null
          : DateTime.parse(json['incident_date'] as String),
      incidentType: json['incident_type'] as String,
      description: json['description'] as String?,
      severity: json['severity'] as String?,
      actionTaken: json['action_taken'] as String?,
      status: json['status'] as String?,
      resolvedAt: json['resolved_at'] == null
          ? null
          : DateTime.parse(json['resolved_at'] as String),
      remarks: json['remarks'] as String?,
      attachmentUrl: json['attachment_url'] as String?,
    );

Map<String, dynamic> _$DisciplineRecordToJson(_DisciplineRecord instance) =>
    <String, dynamic>{
      'discipline_id': instance.disciplineId,
      'incident_date': instance.incidentDate?.toIso8601String(),
      'incident_type': instance.incidentType,
      'description': instance.description,
      'severity': instance.severity,
      'action_taken': instance.actionTaken,
      'status': instance.status,
      'resolved_at': instance.resolvedAt?.toIso8601String(),
      'remarks': instance.remarks,
      'attachment_url': instance.attachmentUrl,
    };

_PromotionRecord _$PromotionRecordFromJson(Map<String, dynamic> json) =>
    _PromotionRecord(
      promotionId: json['promotion_id'] as String,
      promotionStatus: json['promotion_status'] as String?,
      promotedAt: json['promoted_at'] == null
          ? null
          : DateTime.parse(json['promoted_at'] as String),
      remarks: json['remarks'] as String?,
      fromSession: json['from_session'] == null
          ? null
          : SessionRef.fromJson(json['from_session'] as Map<String, dynamic>),
      toSession: json['to_session'] == null
          ? null
          : SessionRef.fromJson(json['to_session'] as Map<String, dynamic>),
      fromClass: json['from_class'] == null
          ? null
          : ClassRef.fromJson(json['from_class'] as Map<String, dynamic>),
      toClass: json['to_class'] == null
          ? null
          : ClassRef.fromJson(json['to_class'] as Map<String, dynamic>),
      fromSection: json['from_section'] == null
          ? null
          : SectionRef.fromJson(json['from_section'] as Map<String, dynamic>),
      toSection: json['to_section'] == null
          ? null
          : SectionRef.fromJson(json['to_section'] as Map<String, dynamic>),
      promotedBy: json['promoted_by_user'] == null
          ? null
          : PromotedByRef.fromJson(
              json['promoted_by_user'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PromotionRecordToJson(_PromotionRecord instance) =>
    <String, dynamic>{
      'promotion_id': instance.promotionId,
      'promotion_status': instance.promotionStatus,
      'promoted_at': instance.promotedAt?.toIso8601String(),
      'remarks': instance.remarks,
      'from_session': instance.fromSession,
      'to_session': instance.toSession,
      'from_class': instance.fromClass,
      'to_class': instance.toClass,
      'from_section': instance.fromSection,
      'to_section': instance.toSection,
      'promoted_by_user': instance.promotedBy,
    };

_PromotedByRef _$PromotedByRefFromJson(Map<String, dynamic> json) =>
    _PromotedByRef(username: json['username'] as String?);

Map<String, dynamic> _$PromotedByRefToJson(_PromotedByRef instance) =>
    <String, dynamic>{'username': instance.username};

_TransportAssignment _$TransportAssignmentFromJson(Map<String, dynamic> json) =>
    _TransportAssignment(
      route: TransportRoute.fromJson(json['route'] as Map<String, dynamic>),
      stop: json['stop'] == null
          ? null
          : TransportStop.fromJson(json['stop'] as Map<String, dynamic>),
      bus: json['bus'] == null
          ? null
          : TransportBus.fromJson(json['bus'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : TransportDriver.fromJson(json['driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransportAssignmentToJson(
  _TransportAssignment instance,
) => <String, dynamic>{
  'route': instance.route,
  'stop': instance.stop,
  'bus': instance.bus,
  'driver': instance.driver,
};

_TransportRoute _$TransportRouteFromJson(Map<String, dynamic> json) =>
    _TransportRoute(routeName: json['route_name'] as String);

Map<String, dynamic> _$TransportRouteToJson(_TransportRoute instance) =>
    <String, dynamic>{'route_name': instance.routeName};

_TransportStop _$TransportStopFromJson(Map<String, dynamic> json) =>
    _TransportStop(
      stopName: json['stop_name'] as String?,
      pickupTime: json['pickup_time'] == null
          ? null
          : DateTime.parse(json['pickup_time'] as String),
      dropTime: json['drop_time'] == null
          ? null
          : DateTime.parse(json['drop_time'] as String),
    );

Map<String, dynamic> _$TransportStopToJson(_TransportStop instance) =>
    <String, dynamic>{
      'stop_name': instance.stopName,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      'drop_time': instance.dropTime?.toIso8601String(),
    };

_TransportBus _$TransportBusFromJson(Map<String, dynamic> json) =>
    _TransportBus(busNumber: json['bus_number'] as String?);

Map<String, dynamic> _$TransportBusToJson(_TransportBus instance) =>
    <String, dynamic>{'bus_number': instance.busNumber};

_TransportDriver _$TransportDriverFromJson(Map<String, dynamic> json) =>
    _TransportDriver(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$TransportDriverToJson(_TransportDriver instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'photo_url': instance.photoUrl,
    };
