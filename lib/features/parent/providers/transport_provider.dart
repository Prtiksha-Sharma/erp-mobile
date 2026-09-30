import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/transport_info.dart';
import '../services/transport_service.dart';

/// Keyed by studentId (Pillar 1 — re-fetch on child switch). Value is
/// nullable — null means no transport assignment, not an error.
final transportProvider = FutureProvider.family<TransportInfo?, String>(
  (ref, studentId) async {
    final result = await TransportService().getChildTransport(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
