import 'package:go_router/go_router.dart';

import 'admissions_applicant_profile_screen.dart';
import 'admissions_detail_screen.dart';
import 'admissions_fee_screen.dart';
import 'admissions_form_screens.dart';
import 'admissions_hub_screen.dart';
import 'admissions_list_screens.dart';
import 'school_admin_nav.dart';

/// New Applicant / Students — web features/admissions: the hub, the eight
/// pipeline list pages, Application Detail, Applicant Profile, New
/// Application, Continue Form and Registration Fee Settings. Paths are the
/// web's ROUTES.ADMIN.ADMISSIONS_* re-rooted under /school-admin.
List<RouteBase> admissionsRoutes() => [
  GoRoute(path: SchoolAdminPaths.admissions, builder: (context, state) => const AdmissionsHubScreen()),
  GoRoute(
    path: SchoolAdminPaths.admissionsIncomplete,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.incomplete),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsPaymentVerify,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.paymentVerify),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsDocumentVerify,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.documentVerify),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsApplications,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.applications),
  ),
  GoRoute(
    path: '${SchoolAdminPaths.admissionsApplications}/:id',
    builder: (context, state) => AdmissionDetailScreen(applicationId: state.pathParameters['id']!),
  ),
  GoRoute(
    path: '${SchoolAdminPaths.admissionsApplications}/:id/continue',
    builder: (context, state) => AdmissionContinueFormScreen(applicationId: state.pathParameters['id']!),
  ),
  GoRoute(
    path: '${SchoolAdminPaths.admissionsApplicants}/:id',
    builder: (context, state) => AdmissionApplicantProfileScreen(applicantId: state.pathParameters['id']!),
  ),
  GoRoute(path: SchoolAdminPaths.admissionsNew, builder: (context, state) => const AdmissionNewApplicationScreen()),
  GoRoute(
    path: SchoolAdminPaths.admissionsInterview,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.interview),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsPresent,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.present),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsQualified,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.qualified),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsFinalList,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.finalList),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsRejected,
    builder: (context, state) => const AdmissionListScreen(page: AdmissionListPage.rejected),
  ),
  GoRoute(
    path: SchoolAdminPaths.admissionsRegistrationFee,
    builder: (context, state) => const AdmissionsRegistrationFeeScreen(),
  ),
];
