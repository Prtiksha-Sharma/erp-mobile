import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_admissions.dart';
import '../services/admissions_service.dart';

/// Read providers for the admissions pipeline — one per web `use*` query
/// hook in features/admissions/hooks. Every provider watches the logged-in
/// userId so switching accounts re-fetches; failures are thrown as the
/// Failure itself and read back through describeError().
Future<T> _load<T>(Ref ref, Future<Result<T>> Function(AdmissionsService s) call) async {
  ref.watch(authProvider.select((a) => a.user?.userId));
  return switch (await call(AdmissionsService())) {
    Ok(:final value) => value,
    Err(:final failure) => throw failure,
  };
}

/// useApplications / useIncompleteApplications / useInterviewSchedule /
/// usePresentApplicants / useQualifiedApplicants /
/// useFinalSelectedApplicants / useRejectedApplicants — keyed by the full
/// request (kind + filters + page).
final admissionListProvider = FutureProvider.family<AdmissionApplicationPage, AdmissionListRequest>(
  (ref, request) => _load(ref, (s) => s.listApplications(request)),
);

/// useApplication.
final admissionDetailProvider = FutureProvider.family<AdmissionApplicationDetail, String>(
  (ref, applicationId) => _load(ref, (s) => s.getApplication(applicationId)),
);

/// useApplicant.
final admissionApplicantProfileProvider = FutureProvider.family<AdmissionApplicant, String>(
  (ref, applicantId) => _load(ref, (s) => s.getApplicantProfile(applicantId)),
);

/// GET /admission/document-types — the same list for every application.
final admissionDocumentTypesProvider = FutureProvider<List<AdmissionDocumentType>>(
  (ref) => _load(ref, (s) => s.getDocumentTypes()),
);

/// The documents uploaded so far for one application (the form's step 6).
final admissionDocumentsProvider = FutureProvider.family<List<AdmissionDocument>, String>(
  (ref, applicationId) => _load(ref, (s) => s.getDocuments(applicationId)),
);
