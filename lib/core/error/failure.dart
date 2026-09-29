import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// Every error that can reach a screen goes through this type — no raw
/// `DioException`, `TypeError` (from a bad model parse), or backend error
/// string ever reaches a widget directly. See dio_error_mapper.dart for
/// where a DioException becomes one of these.
@freezed
abstract class Failure with _$Failure {
  /// No connectivity, timeout, or the request couldn't reach the server.
  const factory Failure.network() = NetworkFailure;

  /// 401 from the backend — session expired or invalid. UI should route to
  /// login. TODO(auth, Phase 0 backend work): once the mobile refresh
  /// endpoint exists, dio_client.dart retries once before this is ever
  /// surfaced — see its onError handler.
  const factory Failure.unauthorized() = UnauthorizedFailure;

  /// 4xx other than 401 — the backend rejected the request as sent
  /// (validation, not-found, forbidden). [message] is the backend's own
  /// `message` field (see errorHandler.js — `{ success: false, message }`),
  /// safe to show directly to the user.
  const factory Failure.validation(String message) = ValidationFailure;

  /// 5xx — something broke on the backend, not the user's fault. Log to
  /// Crashlytics once that's wired up (see Pillar 6 of the enterprise plan).
  const factory Failure.server(String message) = ServerFailure;

  /// Anything else — cancelled request, bad certificate, or a genuinely
  /// unexpected error (including a model failing to parse a response).
  const factory Failure.unknown(String message) = UnknownFailure;
}

/// One shared place for turning a Failure into copy a user actually sees —
/// every screen calls `failure.userMessage` instead of re-writing this
/// switch itself.
extension FailureMessage on Failure {
  String get userMessage => when(
        network: () => 'No internet connection. Check your network and try again.',
        unauthorized: () => 'Your session has expired — please log in again.',
        validation: (message) => message,
        server: (message) => 'Something went wrong on our end. Please try again.',
        unknown: (message) => 'Something unexpected happened.',
      );
}
