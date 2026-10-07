import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/admin_admissions.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/admissions_providers.dart';
import 'admissions_sections.dart';
import 'admissions_widgets.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Applicant Profile — web features/admissions/pages/ApplicantProfilePage.jsx
/// (GET /admission/applicants/:id). The backend nests the applicant's single
/// application — with its parents, addresses, documents, … — under
/// `admission_applications`, so those sections read from it (the web page
/// reads them at the top level and shows them empty), and "Application
/// History" lists that one application.
class AdmissionApplicantProfileScreen extends ConsumerWidget {
  const AdmissionApplicantProfileScreen({super.key, required this.applicantId});

  final String applicantId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(admissionApplicantProfileProvider(applicantId));
    return SchoolAdminPageScaffold(
      title: 'Applicant Profile',
      body: profile.when(
        skipLoadingOnRefresh: true,
        loading: () => const LoadingView(label: 'Loading applicant…'),
        error: (err, _) => AdmissionLoadError(
          title: 'Failed to load applicant profile.',
          error: err,
          onRetry: () => ref.invalidate(admissionApplicantProfileProvider(applicantId)),
        ),
        data: (a) => ResponsiveListView(
          onRefresh: () async {
            ref.invalidate(admissionApplicantProfileProvider(applicantId));
            await ref.read(admissionApplicantProfileProvider(applicantId).future).then<void>((_) {}, onError: (_) {});
          },
          children: [_ProfileBody(applicant: a)],
        ),
      ),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody({required this.applicant});

  final AdmissionApplicant applicant;

  @override
  Widget build(BuildContext context) {
    final app = applicant.application;
    final parents = app?.parents ?? const <AdmissionParent>[];
    final addresses = app?.addresses ?? const <AdmissionAddress>[];
    final contacts = app?.emergencyContacts ?? const <AdmissionEmergencyContact>[];
    final siblings = app?.siblings ?? const <AdmissionSibling>[];
    final schools = app?.previousSchools ?? const <AdmissionPreviousSchool>[];
    final documents = app?.documents ?? const <AdmissionDocument>[];
    final uploaded = documents.where((d) => d.fileUrl != null && d.fileUrl!.isNotEmpty).length;

    final main = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdmissionSection(
          title: 'Personal Information',
          icon: Icons.person_outline,
          child: ApplicantInfoSection(applicant: applicant, profile: true),
        ),
        const SizedBox(height: 16),
        AdmissionSection(
          title: 'Parent / Guardian Information',
          icon: Icons.groups_outlined,
          child: parents.isEmpty ? const MissingPill('No information provided') : ParentCards(parents: parents),
        ),
        if (addresses.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Addresses',
            icon: Icons.place_outlined,
            child: AddressCards(addresses: addresses),
          ),
        ],
        if (contacts.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Emergency Contacts',
            icon: Icons.warning_amber_rounded,
            child: EmergencyContactCards(contacts: contacts),
          ),
        ],
        if (siblings.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Siblings',
            icon: Icons.groups_outlined,
            child: SiblingCards(siblings: siblings),
          ),
        ],
        const SizedBox(height: 16),
        AdmissionSection(
          title: 'Previous Schools',
          icon: Icons.menu_book_outlined,
          child: schools.isEmpty ? const MissingPill('No information provided') : PreviousSchoolCards(schools: schools),
        ),
      ],
    );

    final side = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdmissionSection(
          title: 'Application History',
          icon: Icons.assignment_outlined,
          child: app == null ? const MissingPill('No applications found') : _ApplicationTile(app: app),
        ),
        if (documents.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Documents',
            icon: Icons.description_outlined,
            child: Column(
              children: [
                for (final (i, d) in documents.indexed) ...[
                  if (i > 0) const Divider(height: 1, color: AppColors.border),
                  _DocumentRow(doc: d),
                ],
              ],
            ),
          ),
        ],
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Registration Info', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
              const SizedBox(height: 16),
              OverlineField('Applicant ID', applicant.applicantId),
              const SizedBox(height: 14),
              OverlineField('Registered On', admissionDate(applicant.createdAt)),
              if (app?.institution?.institutionName != null) ...[
                const SizedBox(height: 14),
                OverlineField('Institution', app!.institution!.institutionName),
              ],
            ],
          ),
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: AppColors.textMuted, padding: EdgeInsets.zero),
            onPressed: () => context.go(SchoolAdminPaths.admissionsApplications),
            icon: const Icon(Icons.arrow_back, size: 16),
            label: const Text('Back to Online Applications'),
          ),
        ),
        PageHeading(
          icon: Icons.badge_outlined,
          title: 'Applicant Profile',
          subtitle: 'Full profile including parents, documents, and application history',
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            if (app != null)
              const AdmissionPill(
                label: '1 Application',
                colors: PillColors(AppColors.primary, AppColors.primaryLight),
                large: true,
              ),
            if (documents.isNotEmpty)
              AdmissionPill(
                label: 'Docs $uploaded/${documents.length}',
                colors: uploaded == documents.length
                    ? const PillColors(AppColors.success, AppColors.successBg)
                    : const PillColors(AppColors.amber, AppColors.amberLight),
                large: true,
              ),
          ],
        ),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, c) {
            if (c.maxWidth >= 960) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: main),
                  const SizedBox(width: 24),
                  SizedBox(width: 320, child: side),
                ],
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [main, const SizedBox(height: 16), side],
            );
          },
        ),
      ],
    );
  }
}

class _ApplicationTile extends StatelessWidget {
  const _ApplicationTile({required this.app});

  final AdmissionApplicationDetail app;

  @override
  Widget build(BuildContext context) {
    final meta = [app.classRef?.className, app.session?.sessionName].whereType<String>().join(' · ');
    return Material(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.border),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.go('${SchoolAdminPaths.admissionsApplications}/${app.applicationId}'),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                app.applicationNo ?? '—',
                style: const TextStyle(
                  fontFamily: 'monospace',
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              if (meta.isNotEmpty) Text(meta, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 6,
                children: [
                  if (app.paymentStatus != null) paymentStatusPill(app.paymentStatus),
                  if (app.applicationStatus != null) applicationStatusPill(app.applicationStatus),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DocumentRow extends StatelessWidget {
  const _DocumentRow({required this.doc});

  final AdmissionDocument doc;

  @override
  Widget build(BuildContext context) {
    final uploaded = doc.fileUrl != null && doc.fileUrl!.isNotEmpty;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: uploaded ? AppColors.successBg : AppColors.pageBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.image_outlined, size: 16, color: uploaded ? AppColors.success : AppColors.textMuted),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doc.documentType?.documentName ?? doc.fileName ?? 'Document',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                ),
                if (doc.fileName != null)
                  Text(
                    doc.fileName!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                  ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          if (uploaded) ...[
            const AdmissionPill(label: 'Uploaded', colors: PillColors(AppColors.success, AppColors.successBg)),
            ExternalLinkButton(label: 'View', url: doc.fileUrl!, icon: Icons.open_in_new),
          ] else
            const AdmissionPill(label: 'Pending', colors: PillColors(AppColors.amber, AppColors.amberLight)),
        ],
      ),
    );
  }
}
