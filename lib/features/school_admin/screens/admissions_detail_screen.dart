import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/admin_admissions.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/external_link_button.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/admissions_providers.dart';
import 'admissions_action_sheets.dart';
import 'admissions_sections.dart';
import 'admissions_widgets.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// Application Detail — web features/admissions/pages/
/// ApplicationDetailPage.jsx. A School Admin sees every action; each is the
/// web's own visibility rule on the application's state (see
/// [_Header._actions]). The web's two-column layout (content + a 280dp
/// pipeline/quick-info column) is two columns from 900dp; on phones the
/// pipeline and quick info come first as a summary.
class AdmissionDetailScreen extends ConsumerWidget {
  const AdmissionDetailScreen({super.key, required this.applicationId});

  final String applicationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(admissionDetailProvider(applicationId));
    return SchoolAdminPageScaffold(
      title: 'Application Details',
      body: detail.when(
        skipLoadingOnRefresh: true,
        loading: () => const LoadingView(label: 'Loading application…'),
        error: (err, _) => AdmissionLoadError(
          title: 'Failed to load application.',
          error: err,
          onRetry: () => ref.invalidate(admissionDetailProvider(applicationId)),
        ),
        data: (app) => ResponsiveListView(
          onRefresh: () async {
            ref.invalidate(admissionDetailProvider(applicationId));
            await ref.read(admissionDetailProvider(applicationId).future).then<void>((_) {}, onError: (_) {});
          },
          children: [_DetailBody(app: app)],
        ),
      ),
    );
  }
}

class _DetailBody extends StatelessWidget {
  const _DetailBody({required this.app});

  final AdmissionApplicationDetail app;

  @override
  Widget build(BuildContext context) {
    final main = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdmissionSection(
          title: 'Applicant Information',
          icon: Icons.person_outline,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ApplicantInfoSection(applicant: app.applicant),
              if (app.applicant?.applicantId != null) ...[
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton.icon(
                    onPressed: () =>
                        context.go('${SchoolAdminPaths.admissionsApplicants}/${app.applicant!.applicantId}'),
                    icon: const Icon(Icons.badge_outlined, size: 16),
                    label: const Text('View full applicant profile'),
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 16),
        AdmissionSection(
          title: 'Parent / Guardian Information',
          icon: Icons.groups_outlined,
          child: ParentCards(parents: app.parents),
        ),
        if (app.addresses.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Addresses',
            icon: Icons.place_outlined,
            child: AddressCards(addresses: app.addresses),
          ),
        ],
        if (app.previousSchools.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Previous Schools',
            icon: Icons.menu_book_outlined,
            child: PreviousSchoolCards(schools: app.previousSchools),
          ),
        ],
        if (app.entranceTests.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Entrance Test',
            icon: Icons.school_outlined,
            child: Column(
              children: [
                for (final (i, t) in app.entranceTests.indexed) ...[
                  if (i > 0) const SizedBox(height: 16),
                  _EntranceTestCard(assignment: t),
                ],
              ],
            ),
          ),
        ],
        if (app.documents.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Documents',
            icon: Icons.verified_user_outlined,
            child: Column(
              children: [
                for (final (i, d) in app.documents.indexed) ...[
                  if (i > 0) const SizedBox(height: 12),
                  _DocumentCard(app: app, doc: d),
                ],
              ],
            ),
          ),
        ],
        if (app.reviews.isNotEmpty) ...[
          const SizedBox(height: 16),
          AdmissionSection(
            title: 'Admission Reviews',
            icon: Icons.fact_check_outlined,
            child: Column(
              children: [
                for (final (i, r) in app.reviews.indexed) ...[
                  if (i > 0) const Divider(height: 1, color: AppColors.border),
                  _ReviewTile(review: r),
                ],
              ],
            ),
          ),
        ],
      ],
    );

    final side = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AdmissionSection(
          title: 'Application Pipeline',
          icon: Icons.description_outlined,
          child: _Pipeline(app: app),
        ),
        const SizedBox(height: 16),
        _QuickInfo(app: app),
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
        _Header(app: app),
        const SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, c) {
            if (c.maxWidth >= 900) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: main),
                  const SizedBox(width: 24),
                  SizedBox(width: 280, child: side),
                ],
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [side, const SizedBox(height: 16), main],
            );
          },
        ),
      ],
    );
  }
}

// ── Header + actions ─────────────────────────────────────────────────────

class _Header extends StatelessWidget {
  const _Header({required this.app});

  final AdmissionApplicationDetail app;

  /// The web page's per-state action buttons, in its order.
  List<Widget> _actions(BuildContext context) {
    final status = app.applicationStatus;
    final attendance = app.interviewAttendance.firstOrNull?.presenceStatus;
    final called = app.calledForInterview == true;
    final qualified = app.isQualified == true;
    final selected = app.isSelectedFinal == true;

    Widget button(String label, IconData icon, Color color, VoidCallback onTap) => FilledButton.icon(
      style: FilledButton.styleFrom(backgroundColor: color, visualDensity: VisualDensity.compact),
      onPressed: onTap,
      icon: Icon(icon, size: 16),
      label: Text(label),
    );

    return [
      if (app.paymentStatus == 'Pending' && app.submittedAt != null)
        button(
          'Verify Payment',
          Icons.check_circle_outline,
          AppColors.success,
          () => showVerifyPaymentSheet(context, app),
        ),
      if (status == 'Draft' && app.submittedAt == null)
        button(
          'Continue & Complete Form',
          Icons.edit_note_outlined,
          AppColors.primary,
          () => context.go('${SchoolAdminPaths.admissionsApplications}/${app.applicationId}/continue'),
        ),
      if (app.paymentStatus == 'Verified' && !called)
        button(
          'Schedule Interview',
          Icons.event_outlined,
          AppColors.emerald,
          () => showScheduleInterviewSheet(context, app),
        ),
      if (called && attendance != 'Present' && !qualified)
        button('Mark Attendance', Icons.how_to_reg_outlined, AppColors.amber, () => showAttendanceSheet(context, app)),
      if (called && !qualified && attendance == 'Present')
        button(
          'Mark Qualified',
          Icons.workspace_premium_outlined,
          AppColors.rose,
          () => showQualifySheet(context, app),
        ),
      if (qualified && !selected && status != 'Final Selected')
        button('Final Select', Icons.emoji_events_outlined, AppColors.teal, () => showFinalSelectSheet(context, app)),
      if (selected && status == 'Final Selected' && app.registeredAt == null)
        button(
          'Register as Student',
          Icons.person_add_alt_1_outlined,
          AppColors.success,
          () => showRegisterSheet(context, app),
        ),
      if (app.registeredAt != null)
        const AdmissionPill(
          label: 'Student Registered',
          icon: Icons.check_circle_outline,
          colors: PillColors(AppColors.success, AppColors.successBg),
          large: true,
        ),
      if (status != 'Rejected' && status != 'Approved' && status != 'Final Selected' && status != 'Registered')
        button('Reject', Icons.cancel_outlined, AppColors.danger, () => showRejectSheet(context, app)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final meta = [
      app.session?.sessionName,
      app.institution?.institutionName,
    ].whereType<String>().where((s) => s.isNotEmpty);
    final actions = _actions(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          app.applicationNo ?? '—',
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
        ),
        const SizedBox(height: 6),
        Wrap(
          spacing: 10,
          runSpacing: 6,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            if (app.classRef?.className != null) ClassChip(app.classRef!.className),
            for (final m in meta) Text(m, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            if (app.paymentStatus != null) paymentStatusPill(app.paymentStatus, large: true),
            if (app.applicationStatus != null) applicationStatusPill(app.applicationStatus, large: true),
            ...actions,
          ],
        ),
      ],
    );
  }
}

// ── Pipeline + quick info ────────────────────────────────────────────────

class _Pipeline extends StatelessWidget {
  const _Pipeline({required this.app});

  final AdmissionApplicationDetail app;

  @override
  Widget build(BuildContext context) {
    final rejected = app.applicationStatus == 'Rejected';
    final payVerified = app.paymentStatus == 'Verified';
    final called = app.calledForInterview == true;
    final qualified = app.isQualified == true;
    final finalSelected = app.isSelectedFinal == true || app.applicationStatus == 'Final Selected';
    final approved = app.applicationStatus == 'Approved';
    // Inferred as submitted when any later stage is done — submitted_at may
    // be null for admin-created applications.
    final submitted = app.submittedAt != null || payVerified || called || qualified || finalSelected || approved;

    final steps = rejected
        ? [
            _StepData(
              'Application Submitted',
              app.submittedAt == null ? null : admissionDateTime(app.submittedAt),
              done: true,
            ),
            _StepData('Rejected', app.updatedAt == null ? null : admissionDateTime(app.updatedAt), rejected: true),
          ]
        : [
            _StepData(
              'Application Submitted',
              app.submittedAt == null ? null : admissionDateTime(app.submittedAt),
              done: submitted,
              active: !submitted,
            ),
            _StepData(
              'Payment Verified',
              payVerified ? 'Fee verified' : null,
              done: payVerified,
              active: submitted && !payVerified,
            ),
            _StepData('Called for Interview', null, done: called, active: payVerified && !called),
            _StepData('Qualified', null, done: qualified, active: called && !qualified),
            _StepData('Final Selection', null, done: finalSelected, active: qualified && !finalSelected),
            _StepData('Approved', null, done: approved, active: finalSelected && !approved),
          ];
    return Column(
      children: [for (final (i, s) in steps.indexed) _PipelineStep(data: s, last: i == steps.length - 1)],
    );
  }
}

class _StepData {
  const _StepData(this.label, this.sublabel, {this.done = false, this.active = false, this.rejected = false});

  final String label;
  final String? sublabel;
  final bool done;
  final bool active;
  final bool rejected;
}

class _PipelineStep extends StatelessWidget {
  const _PipelineStep({required this.data, required this.last});

  final _StepData data;
  final bool last;

  @override
  Widget build(BuildContext context) {
    final d = data;
    final (Color border, Color fill, Color fg, IconData icon) = d.rejected
        ? (AppColors.danger, AppColors.dangerBg, AppColors.danger, Icons.circle_outlined)
        : d.done
        ? (AppColors.success, AppColors.success, Colors.white, Icons.check_circle_outline)
        : d.active
        ? (AppColors.primary, AppColors.primaryLight, AppColors.primary, Icons.schedule)
        : (AppColors.border, AppColors.pageBg, AppColors.textMuted, Icons.circle_outlined);
    final labelColor = d.rejected
        ? AppColors.danger
        : d.done
        ? AppColors.success
        : d.active
        ? AppColors.primary
        : AppColors.textMuted;
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: fill,
                  shape: BoxShape.circle,
                  border: Border.all(color: border, width: 2),
                ),
                child: Icon(icon, size: 16, color: fg),
              ),
              if (!last)
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: d.done ? AppColors.success : (d.rejected ? AppColors.danger : AppColors.border),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 6, bottom: last ? 0 : 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    d.label,
                    style: TextStyle(fontWeight: FontWeight.w600, color: labelColor),
                  ),
                  if (d.sublabel != null)
                    Text(d.sublabel!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _QuickInfo extends StatelessWidget {
  const _QuickInfo({required this.app});

  final AdmissionApplicationDetail app;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Quick Info', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
          const SizedBox(height: 16),
          OverlineField('Application Date', admissionDate(app.createdAt)),
          const SizedBox(height: 14),
          OverlineField('Submitted At', admissionDateTime(app.submittedAt)),
          const SizedBox(height: 14),
          OverlineField('Registration Fee', app.registrationFee == null ? null : formatAmount(app.registrationFee)),
          if (app.siblings.isNotEmpty) ...[
            const SizedBox(height: 14),
            OverlineField('Siblings', '${app.siblings.length} sibling(s)'),
          ],
        ],
      ),
    );
  }
}

// ── Documents / reviews / entrance test ──────────────────────────────────

class _DocumentCard extends StatelessWidget {
  const _DocumentCard({required this.app, required this.doc});

  final AdmissionApplicationDetail app;
  final AdmissionDocument doc;

  @override
  Widget build(BuildContext context) {
    final d = doc;
    final title = d.documentType?.documentName ?? d.fileName ?? '—';
    return InnerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.description_outlined, size: 20, color: AppColors.textMuted),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    if (d.fileName != null)
                      Text(
                        d.fileName!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                      ),
                    if (d.verificationStatus != null) ...[
                      const SizedBox(height: 6),
                      AdmissionPill(label: d.verificationStatus!, colors: documentStatusColors(d.verificationStatus)),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Wrap(
            alignment: WrapAlignment.end,
            spacing: 8,
            children: [
              // The stored URL is already the full Cloudinary URL.
              if (d.fileUrl != null) ExternalLinkButton(label: 'View', url: d.fileUrl!, icon: Icons.open_in_new),
              if (app.registeredAt == null && d.verificationStatus != 'Verified')
                FilledButton.tonalIcon(
                  style: FilledButton.styleFrom(visualDensity: VisualDensity.compact),
                  onPressed: () => showVerifyDocumentSheet(context, app, d),
                  icon: const Icon(Icons.verified_user_outlined, size: 16),
                  label: const Text('Verify'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ReviewTile extends StatelessWidget {
  const _ReviewTile({required this.review});

  final AdmissionReview review;

  @override
  Widget build(BuildContext context) {
    final reviewer = review.reviewer?.username ?? review.reviewer?.email ?? 'Reviewer';
    final status = review.reviewStatus;
    final colors = switch (status) {
      'Approved' => const PillColors(AppColors.success, AppColors.successBg),
      'Rejected' => const PillColors(AppColors.danger, AppColors.dangerBg),
      'Pending' => const PillColors(AppColors.amber, AppColors.amberLight),
      _ => const PillColors(AppColors.textMuted, AppColors.pageBg),
    };
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
            child: Text(
              reviewer.characters.first.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.primary),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      reviewer,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    AdmissionPill(label: status ?? '—', colors: colors),
                  ],
                ),
                if (review.remarks != null && review.remarks!.isNotEmpty) ...[
                  const SizedBox(height: 6),
                  Text(review.remarks!, style: const TextStyle(color: AppColors.textSecondary)),
                ],
                const SizedBox(height: 6),
                Text(
                  admissionDateTime(review.reviewedAt),
                  style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// EntranceTestCard — shows the real `entrance_tests` / assignment columns
/// (the web card reads marks/duration fields that don't exist).
class _EntranceTestCard extends StatelessWidget {
  const _EntranceTestCard({required this.assignment});

  final AdmissionEntranceTestAssignment assignment;

  @override
  Widget build(BuildContext context) {
    final t = assignment.test;
    return InnerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            t?.testName ?? 'Entrance Test',
            style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
          ),
          const SizedBox(height: 14),
          FieldGrid(
            minColumnWidth: 140,
            children: [
              OverlineField('Date', admissionDate(t?.testDate)),
              OverlineField('Time', formatClockRange(t?.startTime, t?.endTime)),
              OverlineField('Venue', t?.venue),
              OverlineField('Registration No.', assignment.registrationNumber),
              OverlineField('Seat No.', assignment.seatNumber),
            ],
          ),
        ],
      ),
    );
  }
}
