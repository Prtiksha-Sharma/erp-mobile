import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_campus_library.dart';
import '../../../core/models/admin_campus_reception.dart';
import '../../../core/models/admin_campus_transport.dart';

Dio get _dio => DioClient.instance.dio;

Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson, [Map<String, dynamic>? params]) async {
  final res = await _dio.get(path, queryParameters: params);
  final data = res.data['data'] as List? ?? const [];
  return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
}

Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson, [Map<String, dynamic>? params]) async {
  final res = await _dio.get(path, queryParameters: params);
  return fromJson(res.data['data'] as Map<String, dynamic>);
}

/// Library oversight — web adminLibraryService.js (backend admin/library/
/// library.router.js). Read-only except PUT /fine-settings (School Admin).
class AdminLibraryService {
  /// Optional `search`/`category`, omitted when blank.
  Future<Result<List<LibraryBook>>> books({String search = '', String category = ''}) => guard(
    () => _list('/admin/library/books', LibraryBook.fromJson, {
      if (search.isNotEmpty) 'search': search,
      if (category.isNotEmpty) 'category': category,
    }),
  );

  Future<Result<LibraryBook>> book(String bookId) =>
      guard(() => _one('/admin/library/books/$bookId', LibraryBook.fromJson));

  Future<Result<List<LibraryIssue>>> issues({String status = '', bool overdueOnly = false}) => guard(
    () => _list('/admin/library/issues', LibraryIssue.fromJson, {
      if (status.isNotEmpty) 'status': status,
      if (overdueOnly) 'overdue_only': true,
    }),
  );

  Future<Result<LibraryOverdueReport>> overdueReport() =>
      guard(() => _one('/admin/library/reports/overdue', LibraryOverdueReport.fromJson));

  /// Capped feed (default 20, max 50) — not paginated.
  Future<Result<List<LibraryActivityItem>>> activity({int limit = 20}) =>
      guard(() => _list('/admin/library/activity', LibraryActivityItem.fromJson, {'limit': limit}));

  Future<Result<LibraryFineSettings>> fineSettings() =>
      guard(() => _one('/admin/library/fine-settings', LibraryFineSettings.fromJson));

  /// `max_fine_per_book: null` means uncapped. Amounts go as JSON numbers.
  Future<Result<LibraryFineSettings>> updateFineSettings({
    required num ratePerDay,
    required int gracePeriodDays,
    required num? maxFinePerBook,
  }) => guard(() async {
    final res = await _dio.put(
      '/admin/library/fine-settings',
      data: {'rate_per_day': ratePerDay, 'grace_period_days': gracePeriodDays, 'max_fine_per_book': maxFinePerBook},
    );
    return LibraryFineSettings.fromJson(res.data['data'] as Map<String, dynamic>);
  });
}

/// Receptionist activity oversight — web adminReceptionService.js
/// (admin/reception/reception.router.js, School Admin only).
class AdminReceptionService {
  Future<Result<List<ReceptionistSummary>>> summary() =>
      guard(() => _list('/admin/reception/summary', ReceptionistSummary.fromJson));

  Future<Result<ReceptionistActivity>> activity(String staffId, {int limit = 20}) =>
      guard(() => _one('/admin/reception/$staffId/activity', ReceptionistActivity.fromJson, {'limit': limit}));
}

/// Transport oversight — web adminTransportOversightService.js
/// (/admin/transport/*) + adminLiveTransportService.js (/admin/transport-live/*).
/// Read-only except driver-document verify and SOS resolve (School Admin).
class AdminTransportService {
  Future<Result<List<FleetBus>>> buses() => guard(() => _list('/admin/transport/buses', FleetBus.fromJson));

  Future<Result<List<FleetDriver>>> drivers() => guard(() => _list('/admin/transport/drivers', FleetDriver.fromJson));

  Future<Result<List<FleetRoute>>> routes() => guard(() => _list('/admin/transport/routes', FleetRoute.fromJson));

  Future<Result<List<FleetStudentAssignment>>> assignments() =>
      guard(() => _list('/admin/transport/assignments', FleetStudentAssignment.fromJson));

  Future<Result<List<FleetVehicleAssignment>>> vehicleAssignments({String busId = ''}) => guard(
    () => _list('/admin/transport/vehicle-assignments', FleetVehicleAssignment.fromJson, {
      if (busId.isNotEmpty) 'bus_id': busId,
    }),
  );

  Future<Result<List<FleetTrip>>> trips({String driverId = '', String status = ''}) => guard(
    () => _list('/admin/transport/trips', FleetTrip.fromJson, {
      if (driverId.isNotEmpty) 'driver_id': driverId,
      if (status.isNotEmpty) 'status': status,
    }),
  );

  /// `date` is `YYYY-MM-DD`.
  Future<Result<DriverAttendanceReport>> driverAttendance(String date) => guard(
    () => _one('/admin/transport/drivers/attendance/daily-report', DriverAttendanceReport.fromJson, {'date': date}),
  );

  Future<Result<List<FleetDriverDocument>>> driverDocuments(String driverId) =>
      guard(() => _list('/admin/transport/drivers/$driverId/documents', FleetDriverDocument.fromJson));

  /// `remarks` is omitted when null (the web sends `undefined` when the
  /// admin typed nothing, which leaves existing remarks untouched).
  Future<Result<void>> verifyDriverDocument(
    String driverId,
    String documentId, {
    required String status,
    String? remarks,
  }) => guard(
    () async => _dio.patch(
      '/admin/transport/drivers/$driverId/documents/$documentId/verify',
      data: {'verification_status': status, 'remarks': ?remarks},
    ),
  );

  Future<Result<LiveBoard>> liveBoard() => guard(() => _one('/admin/transport-live/board', LiveBoard.fromJson));

  Future<Result<void>> resolveSos(String sosId) =>
      guard(() async => _dio.patch('/admin/transport-live/sos/$sosId/resolve'));
}
