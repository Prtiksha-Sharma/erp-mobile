/// Matches the backend's universal response envelope — every endpoint
/// responds `{ success, message, data }` (see
/// edusoft_backend/src/utils/response.js `ok()`/`created()`). [T] is the
/// already-parsed `data` payload; no model should ever see the envelope
/// itself, only what's inside `data`.
class ApiResponse<T> {
  const ApiResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic data) fromData,
  ) {
    return ApiResponse<T>(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: fromData(json['data']),
    );
  }

  final bool success;
  final String message;
  final T data;
}
