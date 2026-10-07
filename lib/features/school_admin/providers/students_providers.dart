import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show FutureProviderFamily;

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_staff.dart' show StaffPrincipalRemark;
import '../../../core/models/admin_students.dart';
import '../../../core/models/student_fees.dart' show FeeReceipt, FeeSummary, PendingDues;
import '../../../core/models/student_records.dart' show DisciplineRecord, MedicalInfo, StudentDocument;
import '../services/students_service.dart';

/// Read providers for the Students area — one per web `use*` query hook in
/// features/students/hooks. Each watches the logged-in userId (a different
/// admin on the same device re-fetches) and throws the Failure itself.
Future<T> _students<T>(Ref ref, Future<Result<T>> Function(AdminStudentsService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AdminStudentsService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

typedef _Family<T> = FutureProviderFamily<T, String>;

_Family<T> _byStudent<T>(Future<Result<T>> Function(AdminStudentsService s, String id) call) =>
    FutureProvider.family<T, String>((ref, id) => _students(ref, (s) => call(s, id)));

/// useStudentList — keyed by the full filter set.
final adminStudentsListProvider = FutureProvider.family<AdminStudentPage, StudentsQuery>(
  (ref, q) => _students(ref, (s) => s.listStudents(q)),
);

/// useStudentDetail.
final adminStudentDetailProvider = _byStudent<AdminStudentDetail>((s, id) => s.getStudent(id));

/// The active academic session (the web's Redux `context.sessionId` /
/// `sessionLabel`); null when the school has none.
final adminStudentsActiveSessionProvider = FutureProvider<AdminStudentActiveSession?>(
  (ref) => _students(ref, (s) => s.getActiveSession()),
);

final adminStudentMedicalProvider = _byStudent<MedicalInfo?>((s, id) => s.getMedicalInfo(id));
final adminStudentParentsProvider = _byStudent<List<AdminStudentParent>>((s, id) => s.getParents(id));
final adminStudentDocumentsProvider = _byStudent<List<StudentDocument>>((s, id) => s.getDocuments(id));
final adminStudentDocumentHistoryProvider = _byStudent<List<AdminStudentAuditEntry>>(
  (s, id) => s.getDocumentHistory(id),
);
final adminStudentProfileHistoryProvider = _byStudent<List<AdminStudentAuditEntry>>((s, id) => s.getProfileHistory(id));

/// Keyed by the student's application_id (useApplicationDocuments).
final adminStudentAdmissionDocumentsProvider = _byStudent<List<AdminStudentAdmissionDocument>>(
  (s, applicationId) => s.getAdmissionDocuments(applicationId),
);

final adminStudentDisciplineProvider = _byStudent<List<DisciplineRecord>>((s, id) => s.getDisciplineRecords(id));
final adminStudentPrincipalRemarksProvider = _byStudent<List<StaffPrincipalRemark>>(
  (s, id) => s.getPrincipalRemarks(id),
);
final adminStudentTransferCertificatesProvider = _byStudent<List<StudentTransferCertificate>>(
  (s, id) => s.getTransferCertificates(id),
);

final adminStudentFeeSummaryProvider = _byStudent<FeeSummary>((s, id) => s.getFeeSummary(id));
final adminStudentPendingDuesProvider = _byStudent<PendingDues>((s, id) => s.getPendingDues(id));
final adminStudentFeeReceiptsProvider = _byStudent<List<FeeReceipt>>((s, id) => s.getFeeReceipts(id));
final adminStudentConcessionsProvider = _byStudent<List<AdminStudentConcession>>((s, id) => s.getConcessions(id));

final adminStudentFeeCategoryOptionsProvider = FutureProvider<List<AdminStudentFeeCategoryOption>>(
  (ref) => _students(ref, (s) => s.getFeeCategoryOptions()),
);
final adminStudentFeeHeadOptionsProvider = FutureProvider<List<AdminStudentFeeHeadOption>>(
  (ref) => _students(ref, (s) => s.getFeeHeadOptions()),
);
final adminStudentConcessionOptionsProvider = FutureProvider<List<AdminStudentConcessionOption>>(
  (ref) => _students(ref, (s) => s.getConcessionOptions()),
);

final adminStudentReligionOptionsProvider = FutureProvider<List<AdminStudentMasterOption>>(
  (ref) => _students(ref, (s) => s.getReligions()),
);
final adminStudentCategoryOptionsProvider = FutureProvider<List<AdminStudentMasterOption>>(
  (ref) => _students(ref, (s) => s.getCategories()),
);
