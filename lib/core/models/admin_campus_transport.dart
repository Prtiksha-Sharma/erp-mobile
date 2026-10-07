import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'student_brief.dart';

part 'admin_campus_transport.freezed.dart';
part 'admin_campus_transport.g.dart';

// Read-only transport oversight — admin/transport/overview.service.js
// (GET /admin/transport/*) and transport/liveBoard.service.js
// (GET /admin/transport-live/board). Statuses stay Strings so an unknown
// value never crashes a screen.

/// `drivers: { driver_id, name, phone }` / `buses: { bus_id, bus_number }`
/// — the small relations every list nests.
@freezed
abstract class FleetDriverRef with _$FleetDriverRef {
  const factory FleetDriverRef({
    @JsonKey(name: 'driver_id') String? driverId,
    String? name,
    String? phone,
  }) = _FleetDriverRef;

  factory FleetDriverRef.fromJson(Map<String, dynamic> json) => _$FleetDriverRefFromJson(json);
}

@freezed
abstract class FleetBusRef with _$FleetBusRef {
  const factory FleetBusRef({
    @JsonKey(name: 'bus_id') String? busId,
    @JsonKey(name: 'bus_number') String? busNumber,
    int? capacity,
  }) = _FleetBusRef;

  factory FleetBusRef.fromJson(Map<String, dynamic> json) => _$FleetBusRefFromJson(json);
}

/// GET /admin/transport/buses — listBuses: every `buses` column +
/// `drivers { driver_id, name, phone }` (the 1:1 assigned driver).
@freezed
abstract class FleetBus with _$FleetBus {
  const factory FleetBus({
    @JsonKey(name: 'bus_id') required String busId,
    @JsonKey(name: 'bus_number') @Default('') String busNumber,
    int? capacity,
    @JsonKey(name: 'insurance_expiry_date') DateTime? insuranceExpiryDate,
    @JsonKey(name: 'fitness_certificate_expiry_date') DateTime? fitnessCertificateExpiryDate,
    @JsonKey(name: 'plate_number') String? plateNumber,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    FleetDriverRef? drivers,
  }) = _FleetBus;

  factory FleetBus.fromJson(Map<String, dynamic> json) => _$FleetBusFromJson(json);
}

/// GET /admin/transport/drivers — listDrivers: every `drivers` column +
/// `buses { bus_id, bus_number }`.
@freezed
abstract class FleetDriver with _$FleetDriver {
  const factory FleetDriver({
    @JsonKey(name: 'driver_id') required String driverId,
    @Default('') String name,
    String? phone,
    @JsonKey(name: 'license_number') String? licenseNumber,
    @JsonKey(name: 'license_expiry_date') DateTime? licenseExpiryDate,
    @JsonKey(name: 'license_type') String? licenseType,
    @JsonKey(name: 'employment_status') String? employmentStatus,
    FleetBusRef? buses,
  }) = _FleetDriver;

  factory FleetDriver.fromJson(Map<String, dynamic> json) => _$FleetDriverFromJson(json);
}

/// A `route_stops` row (listRoutes includes every column, ordered by
/// stop_order). pickup/drop times are `@db.Time`.
@freezed
abstract class FleetRouteStop with _$FleetRouteStop {
  const factory FleetRouteStop({
    @JsonKey(name: 'stop_id') required String stopId,
    @JsonKey(name: 'stop_name') @Default('') String stopName,
    @JsonKey(name: 'pickup_time') DateTime? pickupTime,
    @JsonKey(name: 'drop_time') DateTime? dropTime,
    @JsonKey(name: 'stop_order') @Default(0) int stopOrder,
  }) = _FleetRouteStop;

  factory FleetRouteStop.fromJson(Map<String, dynamic> json) => _$FleetRouteStopFromJson(json);
}

/// GET /admin/transport/routes — listRoutes: route columns + `buses
/// { bus_id, bus_number, capacity }` + `route_stops`.
@freezed
abstract class FleetRoute with _$FleetRoute {
  const factory FleetRoute({
    @JsonKey(name: 'route_id') required String routeId,
    @JsonKey(name: 'route_name') @Default('') String routeName,
    @JsonKey(name: 'distance_km') @NullableDecimalConverter() Decimal? distanceKm,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    FleetBusRef? buses,
    @JsonKey(name: 'route_stops') @Default(<FleetRouteStop>[]) List<FleetRouteStop> routeStops,
  }) = _FleetRoute;

  factory FleetRoute.fromJson(Map<String, dynamic> json) => _$FleetRouteFromJson(json);
}

/// `routes: { route_id, route_name, buses: { bus_number } }`.
@freezed
abstract class FleetRouteRef with _$FleetRouteRef {
  const factory FleetRouteRef({
    @JsonKey(name: 'route_id') String? routeId,
    @JsonKey(name: 'route_name') String? routeName,
    FleetBusRef? buses,
  }) = _FleetRouteRef;

  factory FleetRouteRef.fromJson(Map<String, dynamic> json) => _$FleetRouteRefFromJson(json);
}

/// GET /admin/transport/assignments — listAssignments: a
/// `student_transport_assignments` row + routes/route_stops/students.
@freezed
abstract class FleetStudentAssignment with _$FleetStudentAssignment {
  const factory FleetStudentAssignment({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    @JsonKey(name: 'routes') FleetRouteRef? route,
    @JsonKey(name: 'route_stops') FleetRouteStop? stop,
    @JsonKey(name: 'students') StudentBrief? student,
  }) = _FleetStudentAssignment;

  factory FleetStudentAssignment.fromJson(Map<String, dynamic> json) => _$FleetStudentAssignmentFromJson(json);
}

/// GET /admin/transport/vehicle-assignments — listVehicleAssignments:
/// `role` is PRIMARY | BACKUP; `end_date` null means current.
@freezed
abstract class FleetVehicleAssignment with _$FleetVehicleAssignment {
  const factory FleetVehicleAssignment({
    @JsonKey(name: 'assignment_id') required String assignmentId,
    String? role,
    @JsonKey(name: 'start_date') DateTime? startDate,
    @JsonKey(name: 'end_date') DateTime? endDate,
    FleetDriverRef? drivers,
    FleetBusRef? buses,
  }) = _FleetVehicleAssignment;

  factory FleetVehicleAssignment.fromJson(Map<String, dynamic> json) => _$FleetVehicleAssignmentFromJson(json);
}

/// GET /admin/transport/trips — listTrips: a `driver_trips` row +
/// drivers/buses/routes. start/end are real timestamps.
@freezed
abstract class FleetTrip with _$FleetTrip {
  const factory FleetTrip({
    @JsonKey(name: 'trip_id') required String tripId,
    @JsonKey(name: 'trip_type') String? tripType,
    @JsonKey(name: 'trip_date') DateTime? tripDate,
    @JsonKey(name: 'start_time') DateTime? startTime,
    @JsonKey(name: 'end_time') DateTime? endTime,
    String? status,
    @JsonKey(name: 'student_count') int? studentCount,
    FleetDriverRef? drivers,
    FleetBusRef? buses,
    @JsonKey(name: 'routes') FleetRouteRef? route,
  }) = _FleetTrip;

  factory FleetTrip.fromJson(Map<String, dynamic> json) => _$FleetTripFromJson(json);
}

/// GET /admin/transport/drivers/attendance/daily-report?date= —
/// getDriverAttendanceDailyReport: every ACTIVE driver with that day's
/// `driver_attendance` row or null.
@freezed
abstract class DriverAttendanceReport with _$DriverAttendanceReport {
  const factory DriverAttendanceReport({
    DateTime? date,
    @Default(0) int total,
    @Default(<DriverAttendanceRow>[]) List<DriverAttendanceRow> data,
  }) = _DriverAttendanceReport;

  factory DriverAttendanceReport.fromJson(Map<String, dynamic> json) => _$DriverAttendanceReportFromJson(json);
}

@freezed
abstract class DriverAttendanceRow with _$DriverAttendanceRow {
  const factory DriverAttendanceRow({
    @JsonKey(name: 'driver_id') required String driverId,
    @Default('') String name,
    String? phone,
    DriverAttendanceMark? attendance,
  }) = _DriverAttendanceRow;

  factory DriverAttendanceRow.fromJson(Map<String, dynamic> json) => _$DriverAttendanceRowFromJson(json);
}

/// A `driver_attendance` row (status PRESENT | ABSENT | HALF_DAY | ON_LEAVE).
@freezed
abstract class DriverAttendanceMark with _$DriverAttendanceMark {
  const factory DriverAttendanceMark({
    @JsonKey(name: 'attendance_id') String? attendanceId,
    String? status,
    String? remarks,
  }) = _DriverAttendanceMark;

  factory DriverAttendanceMark.fromJson(Map<String, dynamic> json) => _$DriverAttendanceMarkFromJson(json);
}

/// GET /admin/transport/drivers/:driverId/documents — every
/// `driver_documents` column via serializeDoc (`file_size` BigInt → Number).
@freezed
abstract class FleetDriverDocument with _$FleetDriverDocument {
  const factory FleetDriverDocument({
    @JsonKey(name: 'document_id') required String documentId,
    @JsonKey(name: 'document_type') String? documentType,
    @JsonKey(name: 'document_name') String? documentName,
    @JsonKey(name: 'file_name') String? fileName,
    @JsonKey(name: 'file_url') String? fileUrl,
    @JsonKey(name: 'file_size') @LooseNumConverter() num? fileSize,
    @JsonKey(name: 'expiry_date') DateTime? expiryDate,
    @JsonKey(name: 'verification_status') String? verificationStatus,
    String? remarks,
    @JsonKey(name: 'uploaded_at') DateTime? uploadedAt,
  }) = _FleetDriverDocument;

  factory FleetDriverDocument.fromJson(Map<String, dynamic> json) => _$FleetDriverDocumentFromJson(json);
}

// ── Live board (transport/liveBoard.service.js#getLiveBoard) ─────────────

@freezed
abstract class LiveBoard with _$LiveBoard {
  const factory LiveBoard({
    @JsonKey(name: 'generated_at') DateTime? generatedAt,
    @JsonKey(name: 'late_threshold_minutes') int? lateThresholdMinutes,
    @Default(LiveBoardSummary()) LiveBoardSummary summary,
    @Default(<LiveRouteRow>[]) List<LiveRouteRow> rows,
    @JsonKey(name: 'open_sos') @Default(<LiveSosAlert>[]) List<LiveSosAlert> openSos,
  }) = _LiveBoard;

  factory LiveBoard.fromJson(Map<String, dynamic> json) => _$LiveBoardFromJson(json);
}

@freezed
abstract class LiveBoardSummary with _$LiveBoardSummary {
  const factory LiveBoardSummary({
    @Default(0) int routes,
    @JsonKey(name: 'on_road') @Default(0) int onRoad,
    @Default(0) int late,
    @JsonKey(name: 'not_started') @Default(0) int notStarted,
    @JsonKey(name: 'not_started_late') @Default(0) int notStartedLate,
    @Default(0) int completed,
    @Default(0) int cancelled,
    @JsonKey(name: 'open_sos') @Default(0) int openSos,
    @JsonKey(name: 'needs_attention') @Default(0) int needsAttention,
  }) = _LiveBoardSummary;

  factory LiveBoardSummary.fromJson(Map<String, dynamic> json) => _$LiveBoardSummaryFromJson(json);
}

/// One active route with a bus. Times (`first_stop_scheduled`,
/// `started_time`, `last_stop.time`, …) are already-formatted `HH:MM`
/// strings in school time (utils/schoolTime.js#formatMinutes).
@freezed
abstract class LiveRouteRow with _$LiveRouteRow {
  const factory LiveRouteRow({
    @JsonKey(name: 'route_id') required String routeId,
    @JsonKey(name: 'route_name') @Default('') String routeName,
    @Default(LiveBusRef()) LiveBusRef bus,
    LiveDriverRef? driver,
    @JsonKey(name: 'students_assigned') @Default(0) int studentsAssigned,
    @Default('NOT_STARTED') String status,
    String? direction,
    @JsonKey(name: 'first_stop_scheduled') String? firstStopScheduled,
    LiveTripInfo? trip,
    @JsonKey(name: 'delay_minutes') int? delayMinutes,
    LiveProgress? progress,
    LiveBoarding? boarding,
    @Default(<String>[]) List<String> flags,
  }) = _LiveRouteRow;

  factory LiveRouteRow.fromJson(Map<String, dynamic> json) => _$LiveRouteRowFromJson(json);
}

@freezed
abstract class LiveBusRef with _$LiveBusRef {
  const factory LiveBusRef({
    @JsonKey(name: 'bus_number') String? busNumber,
    @JsonKey(name: 'plate_number') String? plateNumber,
  }) = _LiveBusRef;

  factory LiveBusRef.fromJson(Map<String, dynamic> json) => _$LiveBusRefFromJson(json);
}

@freezed
abstract class LiveDriverRef with _$LiveDriverRef {
  const factory LiveDriverRef({String? name, String? phone}) = _LiveDriverRef;

  factory LiveDriverRef.fromJson(Map<String, dynamic> json) => _$LiveDriverRefFromJson(json);
}

@freezed
abstract class LiveTripInfo with _$LiveTripInfo {
  const factory LiveTripInfo({
    @JsonKey(name: 'trip_type') String? tripType,
    @JsonKey(name: 'started_time') String? startedTime,
    @JsonKey(name: 'ended_time') String? endedTime,
  }) = _LiveTripInfo;

  factory LiveTripInfo.fromJson(Map<String, dynamic> json) => _$LiveTripInfoFromJson(json);
}

@freezed
abstract class LiveProgress with _$LiveProgress {
  const factory LiveProgress({
    @Default(0) int confirmed,
    @Default(0) int total,
    @JsonKey(name: 'last_stop') LiveStopRef? lastStop,
    @JsonKey(name: 'next_stop') LiveStopRef? nextStop,
  }) = _LiveProgress;

  factory LiveProgress.fromJson(Map<String, dynamic> json) => _$LiveProgressFromJson(json);
}

/// `last_stop { name, time }` / `next_stop { name, scheduled_time }`.
@freezed
abstract class LiveStopRef with _$LiveStopRef {
  const factory LiveStopRef({
    String? name,
    String? time,
    @JsonKey(name: 'scheduled_time') String? scheduledTime,
  }) = _LiveStopRef;

  factory LiveStopRef.fromJson(Map<String, dynamic> json) => _$LiveStopRefFromJson(json);
}

@freezed
abstract class LiveBoarding with _$LiveBoarding {
  const factory LiveBoarding({
    @Default(0) int present,
    @Default(0) int absent,
    @Default(0) int unmarked,
  }) = _LiveBoarding;

  factory LiveBoarding.fromJson(Map<String, dynamic> json) => _$LiveBoardingFromJson(json);
}

/// An open (`ACTIVE`) driver SOS. The board selects no coordinates, so
/// there is nothing to open in a maps app.
@freezed
abstract class LiveSosAlert with _$LiveSosAlert {
  const factory LiveSosAlert({
    @JsonKey(name: 'sos_id') required String sosId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    String? message,
    LiveDriverRef? driver,
    @JsonKey(name: 'bus_number') String? busNumber,
    @JsonKey(name: 'route_name') String? routeName,
  }) = _LiveSosAlert;

  factory LiveSosAlert.fromJson(Map<String, dynamic> json) => _$LiveSosAlertFromJson(json);
}
