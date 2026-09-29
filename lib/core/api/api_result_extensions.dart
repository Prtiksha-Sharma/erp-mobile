import 'package:dio/dio.dart';

import '../error/failure.dart';
import '../error/result.dart';
import 'dio_error_mapper.dart';

/// Wraps a Dio call so every service method can be one line:
///   `Future<Result<List<Child>>> listMyChildren() => guard(() async {`
///     final res = await _dio.get('/parent/children');
///     return (res.data['data'] as List).map(Child.fromJson).toList();
///   });
///
/// Catches DioException (mapped via mapDioError) AND any other exception
/// (e.g. a model failing to parse a malformed response) as Failure.unknown
/// — a service method should never let a raw exception escape uncaught.
Future<Result<T>> guard<T>(Future<T> Function() body) async {
  try {
    return Ok(await body());
  } on DioException catch (e) {
    return Err(mapDioError(e));
  } catch (e) {
    return Err(Failure.unknown(e.toString()));
  }
}
