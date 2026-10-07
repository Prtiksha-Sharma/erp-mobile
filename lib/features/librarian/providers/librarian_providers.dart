import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/library.dart';
import '../../../core/models/staff_profile.dart';
import '../services/librarian_service.dart';

/// Read providers for the librarian portal. Every provider watches the
/// logged-in userId (via [_load]) so signing in as a different account on the
/// same device re-fetches instead of showing the previous user's data.
/// Failures are thrown as the Failure itself and read back through
/// describeError(), same as the other role portals.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(LibrarianService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(LibrarianService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

final librarianProfileProvider = FutureProvider<StaffProfile>((ref) => _load(ref, (s) => s.getMyProfile()));

final librarianDashboardProvider = FutureProvider<LibrarianDashboard>((ref) => _load(ref, (s) => s.getDashboard()));

final librarianBooksProvider = FutureProvider<List<LibraryBook>>((ref) => _load(ref, (s) => s.listBooks()));

/// All loans, newest first. Screens filter by status / overdue on the device.
final librarianIssuesProvider = FutureProvider<List<BookIssue>>((ref) => _load(ref, (s) => s.listIssues()));

final librarianPendingFinesProvider = FutureProvider<PendingFines>((ref) => _load(ref, (s) => s.getPendingFines()));

final librarianFineHistoryProvider = FutureProvider<List<FineRecord>>((ref) => _load(ref, (s) => s.getFineHistory()));

final librarianFineSettingsProvider =
    FutureProvider<LibraryFineSettings>((ref) => _load(ref, (s) => s.getFineSettings()));

final librarianInventoryReportProvider =
    FutureProvider<InventoryReport>((ref) => _load(ref, (s) => s.getInventoryReport()));

final librarianIssuedReportProvider = FutureProvider<List<BookIssue>>((ref) => _load(ref, (s) => s.getIssuedReport()));

final librarianReturnedReportProvider =
    FutureProvider<List<BookIssue>>((ref) => _load(ref, (s) => s.getReturnedReport()));

final librarianOverdueReportProvider = FutureProvider<OverdueReport>((ref) => _load(ref, (s) => s.getOverdueReport()));

final librarianFineCollectionReportProvider =
    FutureProvider<FineCollectionReport>((ref) => _load(ref, (s) => s.getFineCollectionReport()));

/// Keyed by student id.
final librarianBorrowingHistoryProvider = FutureProvider.family<List<BookIssue>, String>(
  (ref, studentId) => _load(ref, (s) => s.getStudentBorrowingHistory(studentId)),
);

/// Student lookup for the issue flow — keyed by the search text.
final librarianStudentSearchProvider = FutureProvider.family<List<LibraryStudentHit>, String>(
  (ref, query) => _load(ref, (s) => s.searchStudents(query)),
);

/// Refetches everything a circulation change (issue / return / fine paid /
/// book edit) can affect.
void invalidateLibraryData(WidgetRef ref) {
  ref
    ..invalidate(librarianDashboardProvider)
    ..invalidate(librarianBooksProvider)
    ..invalidate(librarianIssuesProvider)
    ..invalidate(librarianPendingFinesProvider)
    ..invalidate(librarianFineHistoryProvider)
    ..invalidate(librarianInventoryReportProvider)
    ..invalidate(librarianIssuedReportProvider)
    ..invalidate(librarianReturnedReportProvider)
    ..invalidate(librarianOverdueReportProvider)
    ..invalidate(librarianFineCollectionReportProvider);
}
