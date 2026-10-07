// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_campus_transport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FleetDriverRef _$FleetDriverRefFromJson(Map<String, dynamic> json) =>
    _FleetDriverRef(
      driverId: json['driver_id'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$FleetDriverRefToJson(_FleetDriverRef instance) =>
    <String, dynamic>{
      'driver_id': instance.driverId,
      'name': instance.name,
      'phone': instance.phone,
    };

_FleetBusRef _$FleetBusRefFromJson(Map<String, dynamic> json) => _FleetBusRef(
  busId: json['bus_id'] as String?,
  busNumber: json['bus_number'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
);

Map<String, dynamic> _$FleetBusRefToJson(_FleetBusRef instance) =>
    <String, dynamic>{
      'bus_id': instance.busId,
      'bus_number': instance.busNumber,
      'capacity': instance.capacity,
    };

_FleetBus _$FleetBusFromJson(Map<String, dynamic> json) => _FleetBus(
  busId: json['bus_id'] as String,
  busNumber: json['bus_number'] as String? ?? '',
  capacity: (json['capacity'] as num?)?.toInt(),
  insuranceExpiryDate: json['insurance_expiry_date'] == null
      ? null
      : DateTime.parse(json['insurance_expiry_date'] as String),
  fitnessCertificateExpiryDate: json['fitness_certificate_expiry_date'] == null
      ? null
      : DateTime.parse(json['fitness_certificate_expiry_date'] as String),
  plateNumber: json['plate_number'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  drivers: json['drivers'] == null
      ? null
      : FleetDriverRef.fromJson(json['drivers'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FleetBusToJson(_FleetBus instance) => <String, dynamic>{
  'bus_id': instance.busId,
  'bus_number': instance.busNumber,
  'capacity': instance.capacity,
  'insurance_expiry_date': instance.insuranceExpiryDate?.toIso8601String(),
  'fitness_certificate_expiry_date': instance.fitnessCertificateExpiryDate
      ?.toIso8601String(),
  'plate_number': instance.plateNumber,
  'is_active': instance.isActive,
  'drivers': instance.drivers,
};

_FleetDriver _$FleetDriverFromJson(Map<String, dynamic> json) => _FleetDriver(
  driverId: json['driver_id'] as String,
  name: json['name'] as String? ?? '',
  phone: json['phone'] as String?,
  licenseNumber: json['license_number'] as String?,
  licenseExpiryDate: json['license_expiry_date'] == null
      ? null
      : DateTime.parse(json['license_expiry_date'] as String),
  licenseType: json['license_type'] as String?,
  employmentStatus: json['employment_status'] as String?,
  buses: json['buses'] == null
      ? null
      : FleetBusRef.fromJson(json['buses'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FleetDriverToJson(_FleetDriver instance) =>
    <String, dynamic>{
      'driver_id': instance.driverId,
      'name': instance.name,
      'phone': instance.phone,
      'license_number': instance.licenseNumber,
      'license_expiry_date': instance.licenseExpiryDate?.toIso8601String(),
      'license_type': instance.licenseType,
      'employment_status': instance.employmentStatus,
      'buses': instance.buses,
    };

_FleetRouteStop _$FleetRouteStopFromJson(Map<String, dynamic> json) =>
    _FleetRouteStop(
      stopId: json['stop_id'] as String,
      stopName: json['stop_name'] as String? ?? '',
      pickupTime: json['pickup_time'] == null
          ? null
          : DateTime.parse(json['pickup_time'] as String),
      dropTime: json['drop_time'] == null
          ? null
          : DateTime.parse(json['drop_time'] as String),
      stopOrder: (json['stop_order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$FleetRouteStopToJson(_FleetRouteStop instance) =>
    <String, dynamic>{
      'stop_id': instance.stopId,
      'stop_name': instance.stopName,
      'pickup_time': instance.pickupTime?.toIso8601String(),
      'drop_time': instance.dropTime?.toIso8601String(),
      'stop_order': instance.stopOrder,
    };

_FleetRoute _$FleetRouteFromJson(Map<String, dynamic> json) => _FleetRoute(
  routeId: json['route_id'] as String,
  routeName: json['route_name'] as String? ?? '',
  distanceKm: const NullableDecimalConverter().fromJson(json['distance_km']),
  isActive: json['is_active'] as bool? ?? true,
  buses: json['buses'] == null
      ? null
      : FleetBusRef.fromJson(json['buses'] as Map<String, dynamic>),
  routeStops:
      (json['route_stops'] as List<dynamic>?)
          ?.map((e) => FleetRouteStop.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FleetRouteStop>[],
);

Map<String, dynamic> _$FleetRouteToJson(
  _FleetRoute instance,
) => <String, dynamic>{
  'route_id': instance.routeId,
  'route_name': instance.routeName,
  'distance_km': const NullableDecimalConverter().toJson(instance.distanceKm),
  'is_active': instance.isActive,
  'buses': instance.buses,
  'route_stops': instance.routeStops,
};

_FleetRouteRef _$FleetRouteRefFromJson(Map<String, dynamic> json) =>
    _FleetRouteRef(
      routeId: json['route_id'] as String?,
      routeName: json['route_name'] as String?,
      buses: json['buses'] == null
          ? null
          : FleetBusRef.fromJson(json['buses'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FleetRouteRefToJson(_FleetRouteRef instance) =>
    <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
      'buses': instance.buses,
    };

_FleetStudentAssignment _$FleetStudentAssignmentFromJson(
  Map<String, dynamic> json,
) => _FleetStudentAssignment(
  assignmentId: json['assignment_id'] as String,
  route: json['routes'] == null
      ? null
      : FleetRouteRef.fromJson(json['routes'] as Map<String, dynamic>),
  stop: json['route_stops'] == null
      ? null
      : FleetRouteStop.fromJson(json['route_stops'] as Map<String, dynamic>),
  student: json['students'] == null
      ? null
      : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FleetStudentAssignmentToJson(
  _FleetStudentAssignment instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'routes': instance.route,
  'route_stops': instance.stop,
  'students': instance.student,
};

_FleetVehicleAssignment _$FleetVehicleAssignmentFromJson(
  Map<String, dynamic> json,
) => _FleetVehicleAssignment(
  assignmentId: json['assignment_id'] as String,
  role: json['role'] as String?,
  startDate: json['start_date'] == null
      ? null
      : DateTime.parse(json['start_date'] as String),
  endDate: json['end_date'] == null
      ? null
      : DateTime.parse(json['end_date'] as String),
  drivers: json['drivers'] == null
      ? null
      : FleetDriverRef.fromJson(json['drivers'] as Map<String, dynamic>),
  buses: json['buses'] == null
      ? null
      : FleetBusRef.fromJson(json['buses'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FleetVehicleAssignmentToJson(
  _FleetVehicleAssignment instance,
) => <String, dynamic>{
  'assignment_id': instance.assignmentId,
  'role': instance.role,
  'start_date': instance.startDate?.toIso8601String(),
  'end_date': instance.endDate?.toIso8601String(),
  'drivers': instance.drivers,
  'buses': instance.buses,
};

_FleetTrip _$FleetTripFromJson(Map<String, dynamic> json) => _FleetTrip(
  tripId: json['trip_id'] as String,
  tripType: json['trip_type'] as String?,
  tripDate: json['trip_date'] == null
      ? null
      : DateTime.parse(json['trip_date'] as String),
  startTime: json['start_time'] == null
      ? null
      : DateTime.parse(json['start_time'] as String),
  endTime: json['end_time'] == null
      ? null
      : DateTime.parse(json['end_time'] as String),
  status: json['status'] as String?,
  studentCount: (json['student_count'] as num?)?.toInt(),
  drivers: json['drivers'] == null
      ? null
      : FleetDriverRef.fromJson(json['drivers'] as Map<String, dynamic>),
  buses: json['buses'] == null
      ? null
      : FleetBusRef.fromJson(json['buses'] as Map<String, dynamic>),
  route: json['routes'] == null
      ? null
      : FleetRouteRef.fromJson(json['routes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FleetTripToJson(_FleetTrip instance) =>
    <String, dynamic>{
      'trip_id': instance.tripId,
      'trip_type': instance.tripType,
      'trip_date': instance.tripDate?.toIso8601String(),
      'start_time': instance.startTime?.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'status': instance.status,
      'student_count': instance.studentCount,
      'drivers': instance.drivers,
      'buses': instance.buses,
      'routes': instance.route,
    };

_DriverAttendanceReport _$DriverAttendanceReportFromJson(
  Map<String, dynamic> json,
) => _DriverAttendanceReport(
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  total: (json['total'] as num?)?.toInt() ?? 0,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => DriverAttendanceRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DriverAttendanceRow>[],
);

Map<String, dynamic> _$DriverAttendanceReportToJson(
  _DriverAttendanceReport instance,
) => <String, dynamic>{
  'date': instance.date?.toIso8601String(),
  'total': instance.total,
  'data': instance.data,
};

_DriverAttendanceRow _$DriverAttendanceRowFromJson(Map<String, dynamic> json) =>
    _DriverAttendanceRow(
      driverId: json['driver_id'] as String,
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String?,
      attendance: json['attendance'] == null
          ? null
          : DriverAttendanceMark.fromJson(
              json['attendance'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DriverAttendanceRowToJson(
  _DriverAttendanceRow instance,
) => <String, dynamic>{
  'driver_id': instance.driverId,
  'name': instance.name,
  'phone': instance.phone,
  'attendance': instance.attendance,
};

_DriverAttendanceMark _$DriverAttendanceMarkFromJson(
  Map<String, dynamic> json,
) => _DriverAttendanceMark(
  attendanceId: json['attendance_id'] as String?,
  status: json['status'] as String?,
  remarks: json['remarks'] as String?,
);

Map<String, dynamic> _$DriverAttendanceMarkToJson(
  _DriverAttendanceMark instance,
) => <String, dynamic>{
  'attendance_id': instance.attendanceId,
  'status': instance.status,
  'remarks': instance.remarks,
};

_FleetDriverDocument _$FleetDriverDocumentFromJson(Map<String, dynamic> json) =>
    _FleetDriverDocument(
      documentId: json['document_id'] as String,
      documentType: json['document_type'] as String?,
      documentName: json['document_name'] as String?,
      fileName: json['file_name'] as String?,
      fileUrl: json['file_url'] as String?,
      fileSize: const LooseNumConverter().fromJson(json['file_size']),
      expiryDate: json['expiry_date'] == null
          ? null
          : DateTime.parse(json['expiry_date'] as String),
      verificationStatus: json['verification_status'] as String?,
      remarks: json['remarks'] as String?,
      uploadedAt: json['uploaded_at'] == null
          ? null
          : DateTime.parse(json['uploaded_at'] as String),
    );

Map<String, dynamic> _$FleetDriverDocumentToJson(
  _FleetDriverDocument instance,
) => <String, dynamic>{
  'document_id': instance.documentId,
  'document_type': instance.documentType,
  'document_name': instance.documentName,
  'file_name': instance.fileName,
  'file_url': instance.fileUrl,
  'file_size': const LooseNumConverter().toJson(instance.fileSize),
  'expiry_date': instance.expiryDate?.toIso8601String(),
  'verification_status': instance.verificationStatus,
  'remarks': instance.remarks,
  'uploaded_at': instance.uploadedAt?.toIso8601String(),
};

_LiveBoard _$LiveBoardFromJson(Map<String, dynamic> json) => _LiveBoard(
  generatedAt: json['generated_at'] == null
      ? null
      : DateTime.parse(json['generated_at'] as String),
  lateThresholdMinutes: (json['late_threshold_minutes'] as num?)?.toInt(),
  summary: json['summary'] == null
      ? const LiveBoardSummary()
      : LiveBoardSummary.fromJson(json['summary'] as Map<String, dynamic>),
  rows:
      (json['rows'] as List<dynamic>?)
          ?.map((e) => LiveRouteRow.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LiveRouteRow>[],
  openSos:
      (json['open_sos'] as List<dynamic>?)
          ?.map((e) => LiveSosAlert.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <LiveSosAlert>[],
);

Map<String, dynamic> _$LiveBoardToJson(_LiveBoard instance) =>
    <String, dynamic>{
      'generated_at': instance.generatedAt?.toIso8601String(),
      'late_threshold_minutes': instance.lateThresholdMinutes,
      'summary': instance.summary,
      'rows': instance.rows,
      'open_sos': instance.openSos,
    };

_LiveBoardSummary _$LiveBoardSummaryFromJson(Map<String, dynamic> json) =>
    _LiveBoardSummary(
      routes: (json['routes'] as num?)?.toInt() ?? 0,
      onRoad: (json['on_road'] as num?)?.toInt() ?? 0,
      late: (json['late'] as num?)?.toInt() ?? 0,
      notStarted: (json['not_started'] as num?)?.toInt() ?? 0,
      notStartedLate: (json['not_started_late'] as num?)?.toInt() ?? 0,
      completed: (json['completed'] as num?)?.toInt() ?? 0,
      cancelled: (json['cancelled'] as num?)?.toInt() ?? 0,
      openSos: (json['open_sos'] as num?)?.toInt() ?? 0,
      needsAttention: (json['needs_attention'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$LiveBoardSummaryToJson(_LiveBoardSummary instance) =>
    <String, dynamic>{
      'routes': instance.routes,
      'on_road': instance.onRoad,
      'late': instance.late,
      'not_started': instance.notStarted,
      'not_started_late': instance.notStartedLate,
      'completed': instance.completed,
      'cancelled': instance.cancelled,
      'open_sos': instance.openSos,
      'needs_attention': instance.needsAttention,
    };

_LiveRouteRow _$LiveRouteRowFromJson(Map<String, dynamic> json) =>
    _LiveRouteRow(
      routeId: json['route_id'] as String,
      routeName: json['route_name'] as String? ?? '',
      bus: json['bus'] == null
          ? const LiveBusRef()
          : LiveBusRef.fromJson(json['bus'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : LiveDriverRef.fromJson(json['driver'] as Map<String, dynamic>),
      studentsAssigned: (json['students_assigned'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? 'NOT_STARTED',
      direction: json['direction'] as String?,
      firstStopScheduled: json['first_stop_scheduled'] as String?,
      trip: json['trip'] == null
          ? null
          : LiveTripInfo.fromJson(json['trip'] as Map<String, dynamic>),
      delayMinutes: (json['delay_minutes'] as num?)?.toInt(),
      progress: json['progress'] == null
          ? null
          : LiveProgress.fromJson(json['progress'] as Map<String, dynamic>),
      boarding: json['boarding'] == null
          ? null
          : LiveBoarding.fromJson(json['boarding'] as Map<String, dynamic>),
      flags:
          (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const <String>[],
    );

Map<String, dynamic> _$LiveRouteRowToJson(_LiveRouteRow instance) =>
    <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
      'bus': instance.bus,
      'driver': instance.driver,
      'students_assigned': instance.studentsAssigned,
      'status': instance.status,
      'direction': instance.direction,
      'first_stop_scheduled': instance.firstStopScheduled,
      'trip': instance.trip,
      'delay_minutes': instance.delayMinutes,
      'progress': instance.progress,
      'boarding': instance.boarding,
      'flags': instance.flags,
    };

_LiveBusRef _$LiveBusRefFromJson(Map<String, dynamic> json) => _LiveBusRef(
  busNumber: json['bus_number'] as String?,
  plateNumber: json['plate_number'] as String?,
);

Map<String, dynamic> _$LiveBusRefToJson(_LiveBusRef instance) =>
    <String, dynamic>{
      'bus_number': instance.busNumber,
      'plate_number': instance.plateNumber,
    };

_LiveDriverRef _$LiveDriverRefFromJson(Map<String, dynamic> json) =>
    _LiveDriverRef(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$LiveDriverRefToJson(_LiveDriverRef instance) =>
    <String, dynamic>{'name': instance.name, 'phone': instance.phone};

_LiveTripInfo _$LiveTripInfoFromJson(Map<String, dynamic> json) =>
    _LiveTripInfo(
      tripType: json['trip_type'] as String?,
      startedTime: json['started_time'] as String?,
      endedTime: json['ended_time'] as String?,
    );

Map<String, dynamic> _$LiveTripInfoToJson(_LiveTripInfo instance) =>
    <String, dynamic>{
      'trip_type': instance.tripType,
      'started_time': instance.startedTime,
      'ended_time': instance.endedTime,
    };

_LiveProgress _$LiveProgressFromJson(Map<String, dynamic> json) =>
    _LiveProgress(
      confirmed: (json['confirmed'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      lastStop: json['last_stop'] == null
          ? null
          : LiveStopRef.fromJson(json['last_stop'] as Map<String, dynamic>),
      nextStop: json['next_stop'] == null
          ? null
          : LiveStopRef.fromJson(json['next_stop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LiveProgressToJson(_LiveProgress instance) =>
    <String, dynamic>{
      'confirmed': instance.confirmed,
      'total': instance.total,
      'last_stop': instance.lastStop,
      'next_stop': instance.nextStop,
    };

_LiveStopRef _$LiveStopRefFromJson(Map<String, dynamic> json) => _LiveStopRef(
  name: json['name'] as String?,
  time: json['time'] as String?,
  scheduledTime: json['scheduled_time'] as String?,
);

Map<String, dynamic> _$LiveStopRefToJson(_LiveStopRef instance) =>
    <String, dynamic>{
      'name': instance.name,
      'time': instance.time,
      'scheduled_time': instance.scheduledTime,
    };

_LiveBoarding _$LiveBoardingFromJson(Map<String, dynamic> json) =>
    _LiveBoarding(
      present: (json['present'] as num?)?.toInt() ?? 0,
      absent: (json['absent'] as num?)?.toInt() ?? 0,
      unmarked: (json['unmarked'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$LiveBoardingToJson(_LiveBoarding instance) =>
    <String, dynamic>{
      'present': instance.present,
      'absent': instance.absent,
      'unmarked': instance.unmarked,
    };

_LiveSosAlert _$LiveSosAlertFromJson(Map<String, dynamic> json) =>
    _LiveSosAlert(
      sosId: json['sos_id'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      message: json['message'] as String?,
      driver: json['driver'] == null
          ? null
          : LiveDriverRef.fromJson(json['driver'] as Map<String, dynamic>),
      busNumber: json['bus_number'] as String?,
      routeName: json['route_name'] as String?,
    );

Map<String, dynamic> _$LiveSosAlertToJson(_LiveSosAlert instance) =>
    <String, dynamic>{
      'sos_id': instance.sosId,
      'created_at': instance.createdAt?.toIso8601String(),
      'message': instance.message,
      'driver': instance.driver,
      'bus_number': instance.busNumber,
      'route_name': instance.routeName,
    };
