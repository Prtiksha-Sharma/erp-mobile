import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/attendance_summary.dart';
import '../../../core/models/homework_submission.dart';
import '../../../core/models/student_certificates.dart';
import '../../../core/models/student_exams.dart';
import '../../../core/models/student_fees.dart';
import '../../../core/models/student_profile.dart';
import '../../../core/models/student_records.dart';
import '../../../core/models/timetable_entry.dart';
import '../services/student_portal_service.dart';

/// Read providers for the student portal — one per web `useMy*` hook.
///
/// Every provider watches the logged-in userId (via [_load]) so a logout +
/// login as a different student on the same device re-fetches everything
/// instead of briefly showing the previous student's cached data. Failures
/// are thrown as the Failure itself; screens read them back through
/// describeError() (see failure.dart), same as the Parent providers.
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(StudentPortalService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  final result = await call(StudentPortalService());
  return switch (result) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

final myProfileProvider = FutureProvider<StudentProfile>((ref) => _load(ref, (s) => s.getMyProfile()));

final myDocumentsProvider = FutureProvider<List<StudentDocument>>((ref) => _load(ref, (s) => s.getMyDocuments()));

final myIdCardProvider = FutureProvider<StudentIdCard>((ref) => _load(ref, (s) => s.getMyIdCard()));

final myCertificateProvider = FutureProvider.family<StudentCertificate, CertificateType>(
  (ref, type) => _load(ref, (s) => s.getMyCertificate(type)),
);

/// Keyed by period (day | week | month | year) — switching period always
/// re-fetches under its own key, never shows the previous period's data.
final myAttendanceProvider = FutureProvider.family<AttendanceSummary, String>(
  (ref, period) => _load(ref, (s) => s.getMyAttendance(period: period)),
);

final myLeavesProvider = FutureProvider<List<StudentLeave>>((ref) => _load(ref, (s) => s.getMyLeaves()));

/// Keyed by (kind, status filter). `status` null = All.
final myWorkProvider = FutureProvider.family<List<HomeworkSubmission>, ({WorkKind kind, String? status})>(
  (ref, params) => _load(ref, (s) => s.getMyWork(params.kind, status: params.status)),
);

final myExamsProvider = FutureProvider<List<ExamSchedule>>((ref) => _load(ref, (s) => s.getMyExams()));

final myReportCardProvider = FutureProvider.family<ReportCard, String>(
  (ref, examId) => _load(ref, (s) => s.getMyReportCard(examId)),
);

final myTimetableProvider = FutureProvider<List<TimetableEntry>>((ref) => _load(ref, (s) => s.getMyTimetable()));

final myMedicalInfoProvider = FutureProvider<MedicalInfo?>((ref) => _load(ref, (s) => s.getMyMedicalInfo()));

final myDisciplineProvider = FutureProvider<List<DisciplineRecord>>(
  (ref) => _load(ref, (s) => s.getMyDisciplineRecords()),
);

final myPromotionHistoryProvider = FutureProvider<List<PromotionRecord>>(
  (ref) => _load(ref, (s) => s.getMyPromotionHistory()),
);

final myTransportProvider = FutureProvider<TransportAssignment?>((ref) => _load(ref, (s) => s.getMyTransport()));

final myFeeSummaryProvider = FutureProvider<FeeSummary>((ref) => _load(ref, (s) => s.getMyFeeSummary()));

final myReceiptsProvider = FutureProvider<List<FeeReceipt>>((ref) => _load(ref, (s) => s.getMyReceipts()));

final myReceiptDetailProvider = FutureProvider.family<FeeReceipt, String>(
  (ref, receiptId) => _load(ref, (s) => s.getMyReceiptById(receiptId)),
);

final myPendingDuesProvider = FutureProvider<PendingDues>((ref) => _load(ref, (s) => s.getMyPendingDues()));

final myFeePlansProvider = FutureProvider<List<FeePlanEntry>>((ref) => _load(ref, (s) => s.getMyFeePlans()));
