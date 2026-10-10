import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accountant.dart';
import '../../../core/models/library.dart';
import '../../../core/models/staff_profile.dart';
import '../services/accountant_service.dart';

/// Read providers for the accountant portal. Every provider watches the
/// logged-in userId (via [_load]) so signing in as a different account on the
/// same device re-fetches instead of showing the previous user's data.
/// Date-range families key on `YYYY-MM-DD` strings so equal days share a
/// cache entry.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(AccountantService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AccountantService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

DateTime _day(String ymd) => DateTime.parse(ymd);

final accountantProfileProvider = FutureProvider<StaffProfile>((ref) => _load(ref, (s) => s.getMyProfile()));

final accountantDashboardProvider =
    FutureProvider<AccountantDashboard>((ref) => _load(ref, (s) => s.getDashboard()));

final lateFeeSettingsProvider = FutureProvider<FeeLateFeeSettings>((ref) => _load(ref, (s) => s.getLateFeeSettings()));

/// Keyed by the search text (2+ chars).
final accountantStudentSearchProvider = FutureProvider.family<List<AcctStudent>, String>(
  (ref, q) => _load(ref, (s) => s.searchStudents(q)),
);

final feeCollectionSummaryProvider = FutureProvider.family<FeeCollectionSummary, String>(
  (ref, studentId) => _load(ref, (s) => s.getFeeSummary(studentId)),
);

typedef ReceiptQuery = ({String from, String to, String? mode});

/// Receipts whose receipt_date falls in [from, to] (both inclusive days —
/// receipt_date is a @db.Date). Status is filtered on the device.
final receiptsProvider = FutureProvider.family<List<AcctReceipt>, ReceiptQuery>(
  (ref, q) => _load(ref, (s) => s.listReceipts(from: _day(q.from), to: _day(q.to), paymentMode: q.mode)),
);

final receiptDetailProvider = FutureProvider.family<AcctReceipt, String>(
  (ref, id) => _load(ref, (s) => s.getReceipt(id)),
);

typedef OnlinePaymentQuery = ({String from, String to, String? status});

/// created_at is a timestamp, so the upper bound is sent as the next day to
/// keep [to] inclusive.
final onlinePaymentsProvider = FutureProvider.family<List<AcctOnlinePayment>, OnlinePaymentQuery>(
  (ref, q) => _load(
    ref,
    (s) => s.listOnlinePayments(from: _day(q.from), to: inclusiveTo(_day(q.to)), status: q.status),
  ),
);

final onlinePaymentDetailProvider = FutureProvider.family<AcctOnlinePayment, String>(
  (ref, id) => _load(ref, (s) => s.getOnlinePayment(id)),
);

final pendingLibraryFinesProvider = FutureProvider<PendingFines>((ref) => _load(ref, (s) => s.getPendingLibraryFines()));

final libraryFineHistoryProvider = FutureProvider<List<FineRecord>>((ref) => _load(ref, (s) => s.getLibraryFineHistory()));

/// Refetches everything a collection / cancel / refund can change.
void invalidateFeeData(WidgetRef ref) {
  ref
    ..invalidate(accountantDashboardProvider)
    ..invalidate(feeCollectionSummaryProvider)
    ..invalidate(receiptsProvider)
    ..invalidate(receiptDetailProvider);
}
