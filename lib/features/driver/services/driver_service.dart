import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/driver_profile.dart';

/// The 6 driver self-service endpoints — verified by direct read of
/// driver.router.js / driver.controller.js / driver.service.js /
/// transport/trips.service.js / transport/alerts.service.js. No studentId
/// or driverId is ever sent — every route resolves the caller's own driver
/// profile server-side from the auth token (authorize('Driver')).
class DriverService {
  Future<Result<DriverProfile>> getMyProfile() => guard(() async {
        final res = await DioClient.instance.dio.get('/driver/me');
        return DriverProfile.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<List<DriverTrip>>> listMyTrips({String? tripDate, String? status}) => guard(() async {
        final res = await DioClient.instance.dio.get(
          '/driver/trips',
          queryParameters: {
            'trip_date': ?tripDate,
            'status': ?status,
          },
        );
        return (res.data['data'] as List).cast<Map<String, dynamic>>().map(DriverTrip.fromJson).toList();
      });

  Future<Result<DriverTrip>> startTrip({
    required TripType tripType,
    String? routeId,
    String? startLocation,
  }) =>
      guard(() async {
        final res = await DioClient.instance.dio.post(
          '/driver/trips/start',
          data: {
            'trip_type': tripType == TripType.pickup ? 'PICKUP' : 'DROP',
            'route_id': ?routeId,
            'start_location': ?startLocation,
          },
        );
        return DriverTrip.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<DriverTrip>> completeTrip({String? endLocation, int? studentCount}) => guard(() async {
        final res = await DioClient.instance.dio.patch(
          '/driver/trips/complete',
          data: {
            'end_location': ?endLocation,
            'student_count': ?studentCount,
          },
        );
        return DriverTrip.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<DriverTrip>> cancelTrip() => guard(() async {
        final res = await DioClient.instance.dio.patch('/driver/trips/cancel');
        return DriverTrip.fromJson(res.data['data'] as Map<String, dynamic>);
      });

  Future<Result<StopReachedResult>> markStopReached({
    required String routeId,
    required String stopId,
    String? message,
  }) =>
      guard(() async {
        final res = await DioClient.instance.dio.post(
          '/driver/alerts/arrival',
          data: {
            'route_id': routeId,
            'stop_id': stopId,
            'message': ?message,
          },
        );
        return StopReachedResult.fromJson(res.data['data'] as Map<String, dynamic>);
      });
}
