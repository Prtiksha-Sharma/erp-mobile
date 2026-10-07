import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/result.dart';
import '../../../core/models/admin_admissions.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/admissions_providers.dart';
import '../services/admissions_service.dart';
import '../services/staff_directory_service.dart' show isoDate;
import 'admissions_widgets.dart';
import 'school_admin_nav.dart';
import 'school_admin_page_scaffold.dart';

/// The eight pipeline list pages of web features/admissions/ — one
/// configurable screen instead of eight near-copies, since they share the
/// same shape: header + count pill, filters, selectable rows, a bulk action
/// bar and pagination. Each page's own columns, filters, copy and bulk
/// actions are in [_pages].
enum AdmissionListPage {
  /// ApplicationsListPage — all applications.
  applications,

  /// IncompleteApplicationsPage — drafts missing applicant/parent info.
  incomplete,

  /// PaymentVerificationPage.
  paymentVerify,

  /// DocumentVerificationPage.
  documentVerify,

  /// InterviewSchedulePage.
  interview,

  /// PresentApplicantsPage.
  present,

  /// QualifiedApplicantsPage.
  qualified,

  /// FinalApplicantsPage.
  finalList,

  /// RejectedApplicantsPage.
  rejected,
}

class AdmissionListScreen extends ConsumerStatefulWidget {
  const AdmissionListScreen({super.key, required this.page});

  final AdmissionListPage page;

  @override
  ConsumerState<AdmissionListScreen> createState() => _AdmissionListScreenState();
}

// ── Page configuration ───────────────────────────────────────────────────

typedef _RowBuilder = Widget Function(_AdmissionListScreenState s, AdmissionApplicationRow row);
typedef _ActionsBuilder = List<BulkAction> Function(_AdmissionListScreenState s);

class _PageConfig {
  const _PageConfig({
    required this.kind,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.countLabel,
    required this.countColors,
    required this.emptyIcon,
    required this.emptyTitle,
    required this.emptyMessage,
    required this.errorTitle,
    required this.rowBuilder,
    this.noun = 'application',
    this.initialPayment = '',
    this.excludeStatus = '',
    this.showSearch = true,
    this.statusOptions = const [],
    this.paymentOptions = const [],
    this.showSort = false,
    this.clearsPayment = true,
    this.actions,
    this.fab = false,
  });

  final AdmissionListKind kind;
  final String title;
  final String subtitle;
  final IconData icon;
  final String Function(int total) countLabel;
  final PillColors countColors;
  final IconData emptyIcon;
  final String emptyTitle;
  final String emptyMessage;
  final String errorTitle;
  final _RowBuilder rowBuilder;

  /// `application` or `applicant` — the page's own wording.
  final String noun;
  final String initialPayment;
  final String excludeStatus;
  final bool showSearch;
  final List<(String, String)> statusOptions;
  final List<(String, String)> paymentOptions;
  final bool showSort;

  /// "Clear filters" also resets the payment filter (the web's Payment
  /// Verification page only clears search + sort).
  final bool clearsPayment;

  /// Bulk actions; null makes the page read-only (no checkboxes).
  final _ActionsBuilder? actions;
  final bool fab;

  bool get selectable => actions != null;
}

const _sortOptions = <(String, String)>[('name', 'Name A–Z'), ('date', 'Oldest First')];

final _pages = <AdmissionListPage, _PageConfig>{
  AdmissionListPage.applications: _PageConfig(
    kind: AdmissionListKind.applications,
    title: 'Online Applications',
    subtitle: 'All admission applications with filtering and search',
    icon: Icons.assignment_outlined,
    countLabel: (t) => '$t total',
    countColors: const PillColors(AppColors.primary, AppColors.primaryLight),
    emptyIcon: Icons.assignment_outlined,
    emptyTitle: 'No applications found',
    emptyMessage: 'Try adjusting your filters or search query.',
    errorTitle: 'Failed to load applications.',
    statusOptions: const [
      ('Draft', 'Draft'),
      ('Submitted', 'Submitted'),
      ('Approved', 'Approved'),
      ('Rejected', 'Rejected'),
      ('Final Selected', 'Final Selected'),
    ],
    // The web also offers "Rejected", but the backend's allowed
    // payment_status filter list (admission.controller.js) doesn't contain
    // it, so it would 400.
    paymentOptions: const [('Pending', 'Pending'), ('Paid', 'Paid'), ('Verified', 'Verified')],
    showSort: true,
    fab: true,
    rowBuilder: (s, row) => AdmissionRowCard(
      row: row,
      dateText: admissionDate(row.createdAt),
      status: applicationStatusPill(row.applicationStatus),
      onTap: () => s.openDetail(row.applicationId),
      fields: [
        RowField('Class / Session', child: classWithSession(row)),
        RowField('Reg. Fee', text: admissionFee(row)),
        RowField('Payment', child: paymentStatusPill(row.paymentStatus)),
      ],
    ),
  ),
  AdmissionListPage.incomplete: _PageConfig(
    kind: AdmissionListKind.incomplete,
    title: 'Incomplete Online Applications',
    subtitle: 'Applications in Draft state with missing applicant or parent information',
    icon: Icons.checklist_outlined,
    countLabel: (t) => '$t incomplete',
    countColors: const PillColors(AppColors.amber, AppColors.amberLight),
    emptyIcon: Icons.assignment_outlined,
    emptyTitle: 'No incomplete applications',
    emptyMessage: 'All submitted applications have the required information filled in.',
    errorTitle: 'Failed to load applications.',
    showSearch: false,
    actions: (s) => [
      BulkAction(
        label: 'Submit',
        icon: Icons.arrow_forward,
        onTap: () => s.bulk(
          title: 'Submit Applications',
          confirmLabel: 'Submit',
          successText: 'submitted',
          warning: (n) => 'This will submit $n selected draft application${n != 1 ? 's' : ''} for review.',
          run: (ids, _) => AdmissionsService().bulkSubmit(ids),
        ),
      ),
      BulkAction(
        label: 'Delete',
        icon: Icons.delete_outline,
        danger: true,
        onTap: () => s.bulk(
          title: 'Delete Applications',
          confirmLabel: 'Delete',
          successText: 'deleted',
          dangerous: true,
          warning: (n) =>
              'This will permanently delete $n selected draft application${n != 1 ? 's' : ''}. This cannot be undone.',
          run: (ids, _) => AdmissionsService().bulkDeleteApplicants(ids),
        ),
      ),
    ],
    rowBuilder: (s, row) {
      final father = row.parents.where((p) => p.relationType == 'FATHER').firstOrNull;
      final mother = row.parents.where((p) => p.relationType == 'MOTHER').firstOrNull;
      final missing = [if (row.applicant == null) 'No Applicant Info', if (row.parents.isEmpty) 'No Parent Info'];
      return AdmissionRowCard(
        row: row,
        dateText: admissionDate(row.createdAt),
        avatarAccent: AppColors.amber,
        status: AdmissionPill(
          label: row.applicationStatus ?? '—',
          colors: row.applicationStatus == 'Draft'
              ? const PillColors(AppColors.amber, AppColors.amberLight)
              : const PillColors(AppColors.success, AppColors.successBg),
        ),
        selected: s.selected.contains(row.applicationId),
        onToggle: () => s.toggle(row.applicationId),
        fields: [
          RowField('Class', child: ClassChip(row.classRef?.className)),
          RowField(
            'Parents',
            child: (father == null && mother == null)
                ? const Text('—', style: TextStyle(color: AppColors.textMuted))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (father != null) Text('F: ${father.fullName ?? '—'}', style: _small),
                      if (mother != null) Text('M: ${mother.fullName ?? '—'}', style: _small),
                    ],
                  ),
          ),
          RowField(
            'Completion',
            child: missing.isEmpty
                ? const Text('Info added', style: TextStyle(fontSize: 12, color: AppColors.textMuted))
                : Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      for (final m in missing)
                        AdmissionPill(label: m, colors: const PillColors(AppColors.amber, AppColors.amberLight)),
                    ],
                  ),
          ),
        ],
        actions: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.danger,
                side: const BorderSide(color: AppColors.danger),
                visualDensity: VisualDensity.compact,
              ),
              onPressed: () => s.confirmDelete(row),
              icon: const Icon(Icons.delete_outline, size: 16),
              label: const Text('Delete'),
            ),
            FilledButton.icon(
              style: FilledButton.styleFrom(visualDensity: VisualDensity.compact),
              onPressed: () => s.openContinue(row.applicationId),
              icon: const Icon(Icons.arrow_forward, size: 16),
              label: const Text('Continue'),
            ),
          ],
        ),
      );
    },
  ),
  AdmissionListPage.paymentVerify: _PageConfig(
    kind: AdmissionListKind.applications,
    title: 'Payment Verification',
    subtitle: 'Applications with payment received, pending admin verification',
    icon: Icons.verified_outlined,
    countLabel: (t) => '$t pending',
    countColors: const PillColors(AppColors.success, AppColors.successBg),
    emptyIcon: Icons.verified_outlined,
    emptyTitle: 'No applications pending verification',
    emptyMessage: 'All payments have been verified, or none match the current filter.',
    errorTitle: 'Failed to load applications.',
    initialPayment: 'Pending',
    excludeStatus: 'Rejected',
    paymentOptions: const [('Pending', 'Pending'), ('Failed', 'Failed'), ('Refunded', 'Refunded')],
    showSort: true,
    clearsPayment: false,
    actions: (s) => [
      BulkAction(
        label: 'Verify Payment',
        icon: Icons.check_circle_outline,
        onTap: () => s.bulk(
          title: 'Verify Payment',
          confirmLabel: 'Verify',
          successText: 'verified successfully',
          warning: (n) => 'This will mark payment as verified for $n selected application${n != 1 ? 's' : ''}.',
          run: (ids, _) => AdmissionsService().bulkVerifyPayment(ids),
        ),
      ),
      s.rejectAction(applications: true),
    ],
    rowBuilder: (s, row) => AdmissionRowCard(
      row: row,
      dateText: admissionDate(row.createdAt),
      selected: s.selected.contains(row.applicationId),
      onToggle: () => s.toggle(row.applicationId),
      onTap: () => s.openDetail(row.applicationId),
      fields: [
        RowField('Class / Session', child: classWithSession(row)),
        RowField('Reg. Fee', text: admissionFee(row)),
        RowField('Payment', child: paymentStatusPill(row.paymentStatus)),
      ],
    ),
  ),
  AdmissionListPage.documentVerify: _PageConfig(
    kind: AdmissionListKind.applications,
    title: 'Document Verification',
    subtitle: 'Applications with verified payment — click a row to review uploaded documents',
    icon: Icons.verified_user_outlined,
    countLabel: (t) => '$t applications',
    countColors: const PillColors(AppColors.primary, AppColors.primaryLight),
    emptyIcon: Icons.verified_user_outlined,
    emptyTitle: 'No applications to review',
    emptyMessage: 'No applications with verified payment match the current filter.',
    errorTitle: 'Failed to load applications.',
    initialPayment: 'Verified',
    statusOptions: const [
      ('Submitted', 'Submitted'),
      ('Under Review', 'Under Review'),
      ('Shortlisted', 'Shortlisted'),
      ('Approved', 'Approved'),
    ],
    showSort: true,
    actions: (s) => [
      BulkAction(
        label: 'Schedule Interview',
        icon: Icons.event_outlined,
        onTap: () => s.bulk(
          title: 'Schedule Interview',
          confirmLabel: 'Schedule',
          successText: 'scheduled for interview',
          warning: (n) => 'Schedule an interview for $n selected application${n != 1 ? 's' : ''}:',
          fieldsBuilder: _dateTimeFields,
          confirmEnabled: (v) => v['date'] != null && v['time'] != null,
          run: (ids, v) => AdmissionsService().bulkScheduleInterview(
            ids,
            isoDate(v['date']! as DateTime),
            TimeField.hhmm(v['time']! as TimeOfDay),
          ),
        ),
      ),
      s.rejectAction(applications: true),
    ],
    rowBuilder: (s, row) => AdmissionRowCard(
      row: row,
      dateText: admissionDate(row.createdAt),
      status: applicationStatusPill(row.applicationStatus),
      selected: s.selected.contains(row.applicationId),
      onToggle: () => s.toggle(row.applicationId),
      onTap: () => s.openDetail(row.applicationId),
      fields: [RowField('Class / Session', child: classWithSession(row))],
    ),
  ),
  AdmissionListPage.interview: _PageConfig(
    kind: AdmissionListKind.interview,
    title: 'Interview Schedule',
    subtitle: 'Applicants called for interview selection',
    icon: Icons.event_outlined,
    countLabel: (t) => '$t scheduled',
    countColors: const PillColors(AppColors.violet, AppColors.violetLight),
    emptyIcon: Icons.event_outlined,
    emptyTitle: 'No interviews scheduled',
    emptyMessage: 'Applicants called for interview will appear here.',
    errorTitle: 'Failed to load interview schedule.',
    noun: 'applicant',
    showSort: true,
    actions: (s) => [
      BulkAction(
        label: 'Mark Attendance',
        icon: Icons.how_to_reg_outlined,
        onTap: () => s.bulk(
          title: 'Mark Attendance',
          confirmLabel: 'Mark Attendance',
          successText: 'marked',
          warning: (n) => 'Mark $n selected applicant${n != 1 ? 's' : ''} as:',
          initialValues: const {'presence': 'Present'},
          fieldsBuilder: _presenceFields,
          run: (ids, v) => AdmissionsService().bulkMarkAttendance(ids, v['presence']! as String),
        ),
      ),
      s.rejectAction(applications: false),
    ],
    rowBuilder: (s, row) => AdmissionRowCard(
      row: row,
      dateText: '',
      status: applicationStatusPill(row.applicationStatus),
      selected: s.selected.contains(row.applicationId),
      onToggle: () => s.toggle(row.applicationId),
      onTap: () => s.openDetail(row.applicationId),
      fields: [
        RowField('Class', child: ClassChip(row.classRef?.className)),
        RowField('Called for Interview', text: admissionDateTime(row.calledForInterviewAt)),
      ],
    ),
  ),
  AdmissionListPage.present: _PageConfig(
    kind: AdmissionListKind.present,
    title: 'Present Applicants',
    subtitle: 'Applicants who attended the interview',
    icon: Icons.groups_outlined,
    countLabel: (t) => '$t present',
    countColors: const PillColors(AppColors.amber, AppColors.amberLight),
    emptyIcon: Icons.groups_outlined,
    emptyTitle: 'No present applicants',
    emptyMessage: 'Applicants marked present at the interview will appear here.',
    errorTitle: 'Failed to load present applicants.',
    noun: 'applicant',
    actions: (s) => [
      BulkAction(
        label: 'Qualify',
        icon: Icons.workspace_premium_outlined,
        onTap: () => s.bulk(
          title: 'Qualify Applicants',
          confirmLabel: 'Qualify',
          successText: 'marked as qualified',
          warning: (n) => 'This will mark $n selected applicant${n != 1 ? 's' : ''} as Qualified.',
          run: (ids, _) => AdmissionsService().bulkQualify(ids),
        ),
      ),
      s.rejectAction(applications: false),
    ],
    rowBuilder: (s, row) {
      final schedule = row.interviewSchedules.firstOrNull;
      final attendance = row.interviewAttendance.firstOrNull;
      return AdmissionRowCard(
        row: row,
        dateText: '',
        status: applicationStatusPill(row.applicationStatus),
        selected: s.selected.contains(row.applicationId),
        onToggle: () => s.toggle(row.applicationId),
        onTap: () => s.openDetail(row.applicationId),
        fields: [
          RowField('Class', child: ClassChip(row.classRef?.className)),
          RowField(
            'Interview Date',
            child: schedule == null
                ? const Text('—', style: TextStyle(color: AppColors.textMuted))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(admissionDate(schedule.interviewDate), style: _small),
                      Text(
                        formatClockTime(schedule.interviewTime),
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                      ),
                    ],
                  ),
          ),
          RowField(
            'Attendance',
            child: attendance == null
                ? const Text('—', style: TextStyle(color: AppColors.textMuted))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdmissionPill(
                        label: attendance.presenceStatus ?? '—',
                        icon: attendance.presenceStatus == 'Present' ? Icons.check : null,
                        colors: attendance.presenceStatus == 'Present'
                            ? const PillColors(AppColors.emerald, AppColors.emeraldLight)
                            : const PillColors(AppColors.danger, AppColors.dangerBg),
                      ),
                      Text(
                        admissionDateTime(attendance.markedAt),
                        style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                      ),
                    ],
                  ),
          ),
          RowField(
            'Qualified',
            child: row.isQualified == true
                ? const AdmissionPill(
                    label: 'Qualified',
                    icon: Icons.check,
                    colors: PillColors(AppColors.rose, AppColors.roseLight),
                  )
                : const Text('—', style: TextStyle(color: AppColors.textMuted)),
          ),
        ],
      );
    },
  ),
  AdmissionListPage.qualified: _PageConfig(
    kind: AdmissionListKind.qualified,
    title: 'Qualified Applicants',
    subtitle: 'Applicants who have qualified the interview process',
    icon: Icons.workspace_premium_outlined,
    countLabel: (t) => '$t qualified',
    countColors: const PillColors(AppColors.rose, AppColors.roseLight),
    emptyIcon: Icons.workspace_premium_outlined,
    emptyTitle: 'No qualified applicants',
    emptyMessage: 'Applicants who pass the interview process will appear here.',
    errorTitle: 'Failed to load qualified applicants.',
    noun: 'applicant',
    showSort: true,
    actions: (s) => [
      BulkAction(
        label: 'Final Select',
        icon: Icons.emoji_events_outlined,
        onTap: () => s.bulk(
          title: 'Final Select Applicants',
          confirmLabel: 'Final Select',
          successText: 'marked as final selected',
          warning: (n) => 'This will mark $n selected applicant${n != 1 ? 's' : ''} as Final Selected.',
          run: (ids, _) => AdmissionsService().bulkFinalSelect(ids),
        ),
      ),
      s.rejectAction(applications: false),
    ],
    rowBuilder: (s, row) => AdmissionRowCard(
      row: row,
      dateText: admissionDate(row.registeredAt),
      status: applicationStatusPill(row.applicationStatus),
      selected: s.selected.contains(row.applicationId),
      onToggle: () => s.toggle(row.applicationId),
      onTap: () => s.openDetail(row.applicationId),
      fields: [
        RowField('Class', child: ClassChip(row.classRef?.className)),
        RowField('Qualified On', text: row.qualifiedAt == null ? null : admissionDateTime(row.qualifiedAt)),
        RowField(
          'Final Selected',
          child: row.isSelectedFinal == true
              ? const AdmissionPill(
                  label: 'Selected',
                  icon: Icons.check,
                  colors: PillColors(AppColors.teal, AppColors.tealLight),
                )
              : const Text('—', style: TextStyle(color: AppColors.textMuted)),
        ),
      ],
    ),
  ),
  AdmissionListPage.finalList: _PageConfig(
    kind: AdmissionListKind.finalSelected,
    title: 'List of Final Applicants',
    subtitle: 'Applicants confirmed for final selection',
    icon: Icons.emoji_events_outlined,
    countLabel: (t) => '$t selected',
    countColors: const PillColors(AppColors.teal, AppColors.tealLight),
    emptyIcon: Icons.emoji_events_outlined,
    emptyTitle: 'No final applicants yet',
    emptyMessage: 'Applicants confirmed for final selection will appear here.',
    errorTitle: 'Failed to load final selected applicants.',
    noun: 'applicant',
    actions: (s) => [
      BulkAction(
        label: 'Register Student',
        icon: Icons.person_add_alt_1_outlined,
        onTap: () => s.bulk(
          title: 'Register as Students',
          confirmLabel: 'Register',
          successText: 'registered as students',
          dangerous: true,
          warning: (n) =>
              'This will create $n new student account${n != 1 ? 's' : ''} with logins. This cannot be undone.',
          fieldsBuilder: _admissionDateField,
          run: (ids, v) {
            final date = v['date'] as DateTime?;
            return AdmissionsService().bulkRegister(ids, admissionDate: date == null ? null : isoDate(date));
          },
        ),
      ),
      s.rejectAction(applications: false),
    ],
    rowBuilder: (s, row) => AdmissionRowCard(
      row: row,
      dateText: admissionDate(row.registeredAt),
      status: applicationStatusPill(row.applicationStatus),
      selected: s.selected.contains(row.applicationId),
      onToggle: () => s.toggle(row.applicationId),
      onTap: () => s.openDetail(row.applicationId),
      fields: [
        RowField('Class', child: ClassChip(row.classRef?.className)),
        RowField('Selected At', text: row.selectedAt == null ? null : admissionDateTime(row.selectedAt)),
        RowField(
          'Final Selected',
          child: row.isSelectedFinal == true
              ? const AdmissionPill(
                  label: 'Selected',
                  icon: Icons.check,
                  colors: PillColors(AppColors.teal, AppColors.tealLight),
                )
              : const Text('—', style: TextStyle(color: AppColors.textMuted)),
        ),
      ],
    ),
  ),
  AdmissionListPage.rejected: _PageConfig(
    kind: AdmissionListKind.rejected,
    title: 'Rejected Applicants',
    subtitle: 'Applications that did not proceed through the admissions process',
    icon: Icons.block,
    countLabel: (t) => '$t rejected',
    countColors: const PillColors(AppColors.danger, AppColors.dangerBg),
    emptyIcon: Icons.block,
    emptyTitle: 'No rejected applicants',
    emptyMessage: 'Applicants marked as rejected will appear here.',
    errorTitle: 'Failed to load rejected applicants.',
    noun: 'applicant',
    rowBuilder: (s, row) {
      final review = row.reviews.firstOrNull;
      return AdmissionRowCard(
        row: row,
        dateText: admissionDate(row.updatedAt),
        tint: AppColors.dangerBg,
        status: AdmissionPill(
          label: row.applicationStatus ?? '—',
          colors: const PillColors(AppColors.danger, AppColors.dangerBg),
        ),
        onTap: () => s.openDetail(row.applicationId),
        fields: [
          RowField('Class', child: ClassChip(row.classRef?.className)),
          RowField('Rejected At', text: admissionDateTime(review?.reviewedAt ?? row.updatedAt)),
          RowField('Rejection Remarks', text: review?.remarks),
        ],
      );
    },
  ),
};

const _small = TextStyle(fontSize: 12, color: AppColors.textSecondary);

/// Schedule Interview's date + time fields (document verification).
Widget _dateTimeFields(BuildContext context, Map<String, Object?> v, VoidCallback changed) {
  return FieldPair(
    first: DateField(
      label: 'Interview Date',
      value: v['date'] as DateTime?,
      onPicked: (d) {
        v['date'] = d;
        changed();
      },
    ),
    second: TimeField(
      label: 'Interview Time',
      value: v['time'] as TimeOfDay?,
      onPicked: (t) {
        v['time'] = t;
        changed();
      },
    ),
  );
}

/// Mark Attendance's Present / Absent choice (interview page).
Widget _presenceFields(BuildContext context, Map<String, Object?> v, VoidCallback changed) {
  Widget option(String value) => v['presence'] == value
      ? FilledButton(
          onPressed: () {
            v['presence'] = value;
            changed();
          },
          child: Text(value),
        )
      : OutlinedButton(
          onPressed: () {
            v['presence'] = value;
            changed();
          },
          child: Text(value),
        );
  return Wrap(spacing: 8, children: [option('Present'), option('Absent')]);
}

/// Register as Students' optional admission date (final applicants page).
Widget _admissionDateField(BuildContext context, Map<String, Object?> v, VoidCallback changed) => DateField(
  label: 'Admission date (optional)',
  value: v['date'] as DateTime?,
  onPicked: (d) {
    v['date'] = d;
    changed();
  },
  onClear: () {
    v['date'] = null;
    changed();
  },
);

// ── State ────────────────────────────────────────────────────────────────

class _AdmissionListScreenState extends ConsumerState<AdmissionListScreen> {
  late final _PageConfig _cfg = _pages[widget.page]!;
  late AdmissionListRequest _request = AdmissionListRequest(
    _cfg.kind,
    paymentStatus: _cfg.initialPayment,
    excludeStatus: _cfg.excludeStatus,
  );
  final _searchController = TextEditingController();
  Timer? _debounce;
  final Set<String> selected = {};

  @override
  void dispose() {
    _debounce?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  // ── Navigation ──
  void openDetail(String id) => context.go('${SchoolAdminPaths.admissionsApplications}/$id');
  void openContinue(String id) => context.go('${SchoolAdminPaths.admissionsApplications}/$id/continue');

  // ── Selection ──
  void toggle(String id) => setState(() => selected.contains(id) ? selected.remove(id) : selected.add(id));

  void _toggleAll(List<AdmissionApplicationRow> rows) {
    final all = rows.every((r) => selected.contains(r.applicationId));
    setState(() {
      for (final r in rows) {
        all ? selected.remove(r.applicationId) : selected.add(r.applicationId);
      }
    });
  }

  // ── Filters ──
  /// A filter change drops the selection (rows may leave the view) and goes
  /// back to page 1; a page change keeps it.
  void _setFilters(AdmissionListRequest next) => setState(() {
    selected.clear();
    _request = next.copyWith(page: 1);
  });

  void _onSearch(String _) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (mounted) _setFilters(_request.copyWith(search: _searchController.text.trim()));
    });
  }

  bool get _hasFilters =>
      _request.search.isNotEmpty ||
      _request.sort.isNotEmpty ||
      _request.status.isNotEmpty ||
      (_cfg.clearsPayment && _request.paymentStatus.isNotEmpty && _request.paymentStatus != _cfg.initialPayment);

  void _clearFilters() {
    _debounce?.cancel();
    _searchController.clear();
    _setFilters(
      AdmissionListRequest(
        _cfg.kind,
        paymentStatus: _cfg.clearsPayment ? '' : _request.paymentStatus,
        excludeStatus: _cfg.excludeStatus,
      ),
    );
  }

  Future<void> _refresh() async {
    ref.invalidate(admissionListProvider);
    await ref.read(admissionListProvider(_request).future).then<void>((_) {}, onError: (_) {});
  }

  // ── Actions ──
  BulkAction rejectAction({required bool applications}) {
    final noun = applications ? 'application' : 'applicant';
    return BulkAction(
      label: 'Reject',
      icon: Icons.block,
      danger: true,
      onTap: () => bulk(
        title: applications ? 'Reject Applications' : 'Reject Applicants',
        confirmLabel: 'Reject',
        successText: 'rejected',
        dangerous: true,
        warning: (n) => 'This will reject $n selected $noun${n != 1 ? 's' : ''}. This cannot be undone.',
        run: (ids, _) => AdmissionsService().bulkReject(ids),
      ),
    );
  }

  /// Runs one bulk action through the confirm → result sheet; the selection
  /// is cleared once a result was shown.
  Future<void> bulk({
    required String title,
    required String confirmLabel,
    required String successText,
    required String Function(int count) warning,
    required Future<Result<AdmissionBulkResult>> Function(List<String> ids, Map<String, Object?> values) run,
    bool dangerous = false,
    Widget Function(BuildContext, Map<String, Object?>, VoidCallback)? fieldsBuilder,
    bool Function(Map<String, Object?>)? confirmEnabled,
    Map<String, Object?> initialValues = const {},
  }) async {
    final ids = selected.toList();
    final completed = await showBulkActionSheet(
      context,
      title: title,
      warningText: warning(ids.length),
      confirmLabel: confirmLabel,
      successText: successText,
      dangerous: dangerous,
      fieldsBuilder: fieldsBuilder,
      confirmEnabled: confirmEnabled,
      initialValues: initialValues,
      onConfirm: (values) async {
        final result = await run(ids, values);
        ref.invalidate(admissionListProvider);
        return result;
      },
    );
    if (completed && mounted) setState(selected.clear);
  }

  Future<void> confirmDelete(AdmissionApplicationRow row) async {
    await showConfirmDialog(
      context,
      title: 'Delete Application',
      confirmLabel: 'Delete',
      dangerous: true,
      message: 'Are you sure you want to delete application ${row.applicationNo ?? ''}? This action cannot be undone.',
      action: () async {
        final res = await AdmissionsService().deleteApplicant(row.applicationId);
        ref.invalidate(admissionListProvider);
        if (res case Err(:final failure)) return failureMessage(failure, 'Something went wrong. Please try again.');
        selected.remove(row.applicationId);
        return null;
      },
    );
    if (mounted) setState(() {});
  }

  // ── Build ──
  @override
  Widget build(BuildContext context) {
    final cfg = _cfg;
    final list = ref.watch(admissionListProvider(_request));
    final total = list.value?.total;
    final over = selected.length > AdmissionsService.maxBulkIds;
    final pad = context.isTabletWidth ? 24.0 : 16.0;

    return SchoolAdminPageScaffold(
      title: cfg.title,
      floatingActionButton: cfg.fab
          ? FloatingActionButton.extended(
              onPressed: () => context.go(SchoolAdminPaths.admissionsNew),
              icon: const Icon(Icons.person_add_alt_1_outlined),
              label: const Text('New Application'),
            )
          : null,
      body: Column(
        children: [
          Expanded(
            child: ResponsiveListView(
              onRefresh: _refresh,
              padding: EdgeInsets.fromLTRB(pad, 16, pad, cfg.fab ? 96 : 24),
              children: [
                PageHeading(
                  icon: cfg.icon,
                  title: cfg.title,
                  subtitle: cfg.subtitle,
                  trailing: (total != null && total > 0)
                      ? AdmissionPill(label: cfg.countLabel(total), colors: cfg.countColors, large: true)
                      : null,
                ),
                const SizedBox(height: 16),
                _filters(),
                const SizedBox(height: 16),
                list.when(
                  skipLoadingOnRefresh: true,
                  loading: () => const LoadingView(label: 'Loading…'),
                  error: (err, _) => AdmissionLoadError(
                    title: cfg.errorTitle,
                    error: err,
                    onRetry: () => ref.invalidate(admissionListProvider(_request)),
                  ),
                  data: (page) => page.data.isEmpty
                      ? SectionCard(
                          child: EmptyState(icon: cfg.emptyIcon, title: cfg.emptyTitle, message: cfg.emptyMessage),
                        )
                      : _rows(page),
                ),
              ],
            ),
          ),
          if (cfg.selectable)
            BulkBar(
              count: selected.length,
              noun: cfg.noun,
              actions: cfg.actions!(this),
              onClear: () => setState(selected.clear),
              overCap: over,
            ),
        ],
      ),
    );
  }

  Widget _rows(AdmissionApplicationPage page) {
    final cfg = _cfg;
    final rows = page.data;
    final all = cfg.selectable && rows.every((r) => selected.contains(r.applicationId));
    final some = cfg.selectable && rows.any((r) => selected.contains(r.applicationId));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (cfg.selectable)
          InkWell(
            onTap: () => _toggleAll(rows),
            child: Row(
              children: [
                Checkbox(value: all ? true : (some ? null : false), tristate: true, onChanged: (_) => _toggleAll(rows)),
                const Expanded(
                  child: Text('Select all applications on this page', style: TextStyle(color: AppColors.textSecondary)),
                ),
              ],
            ),
          ),
        ResponsiveGrid(minItemWidth: 440, maxColumns: 2, children: [for (final r in rows) cfg.rowBuilder(this, r)]),
        const SizedBox(height: 16),
        PaginationBar(
          page: _request.page,
          total: page.total,
          pageSize: _request.limit,
          onChange: (p) => setState(() => _request = _request.copyWith(page: p)),
        ),
      ],
    );
  }

  Widget _filters() {
    final cfg = _cfg;
    final controls = <Widget>[
      if (cfg.showSearch)
        TextField(
          controller: _searchController,
          onChanged: _onSearch,
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: 'Search name or APP-…',
            prefixIcon: const Icon(Icons.search),
            border: const OutlineInputBorder(),
            isDense: true,
            suffixIcon: _searchController.text.isEmpty
                ? null
                : IconButton(
                    icon: const Icon(Icons.clear, size: 18),
                    tooltip: 'Clear',
                    onPressed: () {
                      _searchController.clear();
                      _onSearch('');
                    },
                  ),
          ),
        ),
      if (cfg.statusOptions.isNotEmpty)
        OptionSelect(
          label: 'Status',
          value: _request.status,
          placeholder: 'All Statuses',
          options: cfg.statusOptions,
          onChanged: (v) => _setFilters(_request.copyWith(status: v)),
        ),
      if (cfg.paymentOptions.isNotEmpty)
        OptionSelect(
          label: 'Payment',
          value: _request.paymentStatus,
          placeholder: 'All Payments',
          options: cfg.paymentOptions,
          onChanged: (v) => _setFilters(_request.copyWith(paymentStatus: v)),
        ),
      if (cfg.showSort)
        OptionSelect(
          label: 'Sort',
          value: _request.sort,
          placeholder: 'Newest First',
          options: _sortOptions,
          onChanged: (v) => _setFilters(_request.copyWith(sort: v)),
        ),
    ];
    if (controls.isEmpty) return const SizedBox.shrink();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(
          builder: (context, c) {
            final cols = c.maxWidth >= 900 ? controls.length.clamp(1, 4) : (c.maxWidth >= 560 ? 2 : 1);
            final w = (c.maxWidth - 12 * (cols - 1)) / cols;
            return Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [for (final w0 in controls) SizedBox(width: w, child: w0)],
            );
          },
        ),
        if (_hasFilters)
          TextButton(
            onPressed: _clearFilters,
            style: TextButton.styleFrom(foregroundColor: AppColors.danger),
            child: const Text('Clear filters'),
          ),
      ],
    );
  }
}
