import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_campus_hostel.dart';

/// Hostel oversight — web adminHostelService.js + adminHostelRoomService.js
/// (admin/hostel/hostel.router.js). Every GET is open to School Admin and
/// Vice Principal; the writes (hostels CRUD, status, warden assign /
/// unassign) are `authorize("School Admin")` only.
class AdminHostelService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson,
      [Map<String, dynamic>? params]) async {
    final res = await _dio.get(path, queryParameters: params);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson, [Map<String, dynamic>? params]) async {
    final res = await _dio.get(path, queryParameters: params);
    return fromJson(res.data['data'] as Map<String, dynamic>);
  }

  Future<Result<HostelDashboard>> dashboard() => guard(() => _one('/admin/hostel/dashboard', HostelDashboard.fromJson));

  Future<Result<List<CampusHostel>>> hostels() => guard(() => _list('/admin/hostel/hostels', CampusHostel.fromJson));

  /// `hostel_name` required; type BOYS | GIRLS | CO_ED. 409 on a duplicate name.
  Future<Result<CampusHostel>> createHostel(Map<String, dynamic> payload) => guard(() async {
        final res = await _dio.post('/admin/hostel/hostels', data: payload);
        return CampusHostel.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<CampusHostel>> updateHostel(String hostelId, Map<String, dynamic> payload) => guard(() async {
        final res = await _dio.patch('/admin/hostel/hostels/$hostelId', data: payload);
        return CampusHostel.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<void>> setHostelStatus(String hostelId, bool isActive) =>
      guard(() async => _dio.patch('/admin/hostel/hostels/$hostelId/status', data: {'is_active': isActive}));

  /// A warden holds at most one hostel — assigning moves them off any other.
  Future<Result<void>> assignWarden(String hostelId, String staffId) =>
      guard(() async => _dio.patch('/admin/hostel/hostels/$hostelId/warden', data: {'staff_id': staffId}));

  Future<Result<void>> unassignWarden(String hostelId) =>
      guard(() async => _dio.delete('/admin/hostel/hostels/$hostelId/warden'));

  /// `floor_number` omitted when blank.
  Future<Result<List<HostelRoom>>> rooms({String floorNumber = ''}) => guard(
        () => _list('/admin/hostel/rooms', HostelRoom.fromJson, {if (floorNumber.isNotEmpty) 'floor_number': floorNumber}),
      );

  Future<Result<List<HostelAllocation>>> students({String roomId = '', String status = ''}) => guard(
        () => _list('/admin/hostel/students', HostelAllocation.fromJson, {
          if (roomId.isNotEmpty) 'room_id': roomId,
          if (status.isNotEmpty) 'status': status,
        }),
      );

  Future<Result<List<HostelAllocation>>> studentHistory(String studentId) =>
      guard(() => _list('/admin/hostel/students/$studentId/history', HostelAllocation.fromJson));

  Future<Result<List<HostelWarden>>> wardens() => guard(() => _list('/admin/hostel/wardens', HostelWarden.fromJson));

  Future<Result<HostelWarden>> warden(String staffId) =>
      guard(() => _one('/admin/hostel/wardens/$staffId', HostelWarden.fromJson));

  Future<Result<HostelOccupancyReport>> occupancy() =>
      guard(() => _one('/admin/hostel/reports/occupancy', HostelOccupancyReport.fromJson));

  /// Dates are `YYYY-MM-DD`, omitted when blank.
  Future<Result<HostelAttendanceSummary>> attendanceSummary({String fromDate = '', String toDate = ''}) => guard(
        () => _one('/admin/hostel/reports/attendance-summary', HostelAttendanceSummary.fromJson, {
          if (fromDate.isNotEmpty) 'from_date': fromDate,
          if (toDate.isNotEmpty) 'to_date': toDate,
        }),
      );
}
