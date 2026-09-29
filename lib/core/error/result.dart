import 'failure.dart';

/// Plain Dart 3 sealed union — no codegen needed, exhaustive `switch`
/// support out of the box. Every service method returns `Result<T>` rather
/// than throwing, so callers can't forget to handle the failure case.
///
/// Usage:
///   final result = await childrenService.listMyChildren();
///   switch (result) {
///     case Ok(:final value): // use value
///     case Err(:final failure): // show failure.when(...)
///   }
sealed class Result<T> {
  const Result();
}

final class Ok<T> extends Result<T> {
  const Ok(this.value);
  final T value;
}

final class Err<T> extends Result<T> {
  const Err(this.failure);
  final Failure failure;
}
