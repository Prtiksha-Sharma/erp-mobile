import 'package:dio/dio.dart';

import '../error/failure.dart';

/// Converts a DioException into our typed Failure — this is the ONLY place
/// in the app that should ever pattern-match on DioExceptionType. Matches
/// the backend's error envelope exactly: { success: false, message } (see
/// edusoft_backend/src/middlewares/errorHandler.js) — no nested `data` on
/// an error response, unlike the success envelope.
Failure mapDioError(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.transformTimeout:
    case DioExceptionType.connectionError:
      return const Failure.network();

    case DioExceptionType.badResponse:
      final status = e.response?.statusCode;
      final message = _extractMessage(e.response?.data);
      if (status == 401) return const Failure.unauthorized();
      if (status != null && status >= 400 && status < 500) {
        return Failure.validation(message ?? 'Request failed');
      }
      return Failure.server(message ?? 'Server error');

    case DioExceptionType.cancel:
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return Failure.unknown(e.message ?? 'Unknown error');
  }
}

String? _extractMessage(dynamic data) {
  if (data is Map && data['message'] is String) return data['message'] as String;
  return null;
}
