import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/fee_summary.dart';
import '../services/fees_service.dart';

/// Keyed by studentId (Pillar 1 — re-fetch on child switch).
final feeSummaryProvider = FutureProvider.family<FeeSummary, String>(
  (ref, studentId) async {
    final result = await FeesService().getChildFeeSummary(studentId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);

/// Keyed by (studentId, receiptId) — a record type, same pattern as
/// attendanceProvider's (studentId, period) key.
final receiptDetailProvider =
    FutureProvider.family<FeeReceipt, ({String studentId, String receiptId})>(
  (ref, params) async {
    final result = await FeesService().getReceipt(params.studentId, params.receiptId);
    return switch (result) {
      Ok(:final value) => value,
      Err(:final failure) => throw failure,
    };
  },
);
