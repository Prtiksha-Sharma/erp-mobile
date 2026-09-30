import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/fee_summary.dart';
import '../services/fee_plan_service.dart';

/// Keyed by studentId (Pillar 1 — re-fetch on child switch).
final feePlansProvider = FutureProvider.family<List<FeePlanEntry>, String>(
  (ref, studentId) async {
    final result = await FeePlanService().getFeePlans(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
