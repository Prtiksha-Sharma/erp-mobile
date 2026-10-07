import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/admin_staff.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/school_admin_providers.dart';
import 'school_admin_page_scaffold.dart';
import 'staff_account_actions.dart';
import 'staff_form_sheets.dart';
import 'staff_record_tabs.dart';

const _tabs = [
  'Overview',
  'Personal Information',
  'Employment',
  'Qualification',
  'Experience',
  'Documents',
  'Salary Structure',
];

/// Employee Details — web features/staff/pages/EmployeeDetailPage.jsx.
/// The header scrolls away above a pinned, scrollable tab strip so every
/// tab keeps most of a phone screen (incl. landscape).
class EmployeeDetailScreen extends ConsumerWidget {
  const EmployeeDetailScreen({super.key, required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staff = ref.watch(staffDetailProvider(staffId));
    return SchoolAdminPageScaffold(
      title: 'Employee Details',
      body: staff.when(
        skipLoadingOnRefresh: true,
        loading: () => const LoadingView(label: 'Loading employee…'),
        error: (err, _) => _LoadError(
          message: err is Failure ? failureMessage(err, 'Please try again.') : 'Please try again.',
          onRetry: () => ref.invalidate(staffDetailProvider(staffId)),
        ),
        data: (s) => _DetailBody(staff: s),
      ),
    );
  }
}

/// The web's "Failed to load this employee." block with the server message.
class _LoadError extends StatelessWidget {
  const _LoadError({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, color: AppColors.danger),
            const SizedBox(height: 10),
            const Text('Failed to load this employee.', style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 4),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.textMuted, fontSize: 12),
            ),
            const SizedBox(height: 12),
            TextButton.icon(onPressed: onRetry, icon: const Icon(Icons.refresh, size: 16), label: const Text('Retry')),
            TextButton(
              onPressed: () => context.go('/school-admin/staff'),
              child: const Text('Back to Employee Management'),
            ),
          ],
        ),
      ),
    );
  }
}

class _DetailBody extends ConsumerWidget {
  const _DetailBody({required this.staff});

  final StaffMember staff;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pad = context.isTabletWidth ? 24.0 : 16.0;
    return DefaultTabController(
      length: _tabs.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(pad, 8, pad, 8),
              child: ResponsiveCenter(child: _Header(staff: staff)),
            ),
          ),
          SliverPersistentHeader(pinned: true, delegate: _TabBarDelegate()),
        ],
        body: Builder(
          builder: (context) => TabBarView(
            children: [
              _OverviewTab(staff: staff),
              _PersonalTab(staff: staff),
              _EmploymentTab(staff: staff),
              QualificationTab(staffId: staff.staffId),
              ExperienceTab(staffId: staff.staffId),
              DocumentsTab(staffId: staff.staffId),
              SalaryStructureTab(staffId: staff.staffId),
            ],
          ),
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 48;

  @override
  double get maxExtent => 48;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      color: Theme.of(context).colorScheme.surfaceContainerLowest,
      child: Column(
        children: [
          Expanded(
            child: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              tabs: [for (final t in _tabs) Tab(text: t)],
            ),
          ),
          const Divider(height: 1, color: AppColors.border),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;
}

class _Header extends ConsumerWidget {
  const _Header({required this.staff});

  final StaffMember staff;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = staff.employmentStatus ?? 'ACTIVE';
    final isActive = status == 'ACTIVE';
    final userId = staff.userId;
    final photo = staff.profilePhotoUrl;
    final initials = initialsOf(staff.fullName);

    final avatar = ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: 64,
        height: 64,
        child: photo != null && photo.isNotEmpty
            ? CachedNetworkImage(imageUrl: photo, fit: BoxFit.cover)
            : ColoredBox(
                color: AppColors.primaryLight,
                child: Center(
                  child: Text(
                    initials,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.primary),
                  ),
                ),
              ),
      ),
    );

    final narrow = !context.isTabletWidth;
    final edit = FilledButton.icon(
      onPressed: () => showEditStaffSheet(context, staff.staffId),
      icon: const Icon(Icons.edit_outlined, size: 16),
      label: const Text('Edit Employee', maxLines: 1, overflow: TextOverflow.ellipsis),
    );
    final actions = Row(
      mainAxisSize: narrow ? MainAxisSize.max : MainAxisSize.min,
      children: [
        if (narrow) Expanded(child: edit) else edit,
        if (userId != null)
          PopupMenuButton<String>(
            tooltip: 'More actions',
            icon: const Icon(Icons.more_vert, color: AppColors.textMuted),
            onSelected: (_) {
              final a = StaffAccountActions(ref, userId: userId, staffId: staff.staffId, name: staff.fullName);
              isActive ? a.confirmDeactivateEmployee(context) : a.confirmReactivateEmployee(context);
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                value: 'status',
                child: Row(
                  children: [
                    Icon(
                      isActive ? Icons.block : Icons.restart_alt,
                      size: 18,
                      color: isActive ? AppColors.danger : AppColors.success,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      isActive ? 'Deactivate Employee' : 'Reactivate Employee',
                      style: TextStyle(color: isActive ? AppColors.danger : AppColors.success),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ],
    );

    final info = Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        avatar,
        const SizedBox(width: 14),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                staff.fullName,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
              ),
              Text(
                staff.employeeCode ?? '',
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12, color: AppColors.textMuted),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: [
                  if (_has(staff.designation)) StatusBadge(label: staff.designation!, variant: BadgeVariant.primary),
                  if (_has(staff.department)) StatusBadge(label: staff.department!),
                  if (staff.dateOfJoining != null) StatusBadge(label: 'Joined ${formatDate(staff.dateOfJoining)}'),
                  StatusBadge(label: status, variant: employmentStatusVariant(status)),
                ],
              ),
            ],
          ),
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
          style: TextButton.styleFrom(foregroundColor: AppColors.textMuted, padding: EdgeInsets.zero),
          onPressed: () => context.go('/school-admin/staff'),
          icon: const Icon(Icons.arrow_back, size: 16),
          label: const Text('Back to Employee Management'),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.border),
          ),
          child: narrow
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [info, const SizedBox(height: 14), actions],
                )
              : Row(
                  children: [
                    Expanded(child: info),
                    const SizedBox(width: 12),
                    actions,
                  ],
                ),
        ),
      ],
    );
  }
}

bool _has(String? v) => v != null && v.trim().isNotEmpty;

String? _date(DateTime? d) => d == null ? null : formatDate(d);

/// EmployeeDetailPage's local InfoField — a missing value reads
/// "Not provided" in muted italics.
class DetailField extends StatelessWidget {
  const DetailField({super.key, required this.label, this.value, this.icon});

  final String label;
  final String? value;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final present = _has(value);
    final field = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        const SizedBox(height: 2),
        Text(
          present ? value! : 'Not provided',
          style: TextStyle(
            color: present ? AppColors.textPrimary : AppColors.textMuted,
            fontStyle: present ? FontStyle.normal : FontStyle.italic,
          ),
        ),
      ],
    );
    if (icon == null) return field;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Icon(icon, size: 16, color: AppColors.textMuted),
        ),
        const SizedBox(width: 8),
        Expanded(child: field),
      ],
    );
  }
}

/// White card with the web's tinted-icon CardHeader.
class TintedCard extends StatelessWidget {
  const TintedCard({
    super.key,
    required this.icon,
    required this.color,
    required this.background,
    required this.title,
    required this.child,
  });

  final IconData icon;
  final Color color;
  final Color background;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
            child: Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(color: background, borderRadius: BorderRadius.circular(8)),
                  child: Icon(icon, size: 16, color: color),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.border),
          Padding(padding: const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }
}

/// A tab's scrollable, width-capped, pull-to-refresh body.
class TabListBody extends ConsumerWidget {
  const TabListBody({super.key, required this.children, required this.onRefresh});

  final List<Widget> children;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) => ResponsiveListView(onRefresh: onRefresh, children: children);
}

Future<void> _refreshStaff(WidgetRef ref, String staffId) async {
  ref.invalidate(staffDetailProvider(staffId));
  ref.invalidate(staffDocumentsProvider(staffId));
  await ref.read(staffDetailProvider(staffId).future).then<void>((_) {}, onError: (_) {});
}

Widget _column(List<Widget> children) => Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    for (var i = 0; i < children.length; i++) ...[if (i > 0) const SizedBox(height: 16), children[i]],
  ],
);

// ── Overview ─────────────────────────────────────────────────────────────

class _OverviewTab extends ConsumerWidget {
  const _OverviewTab({required this.staff});

  final StaffMember staff;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final docs = ref.watch(staffDocumentsProvider(staff.staffId));
    final docCount = docs.isLoading && !docs.hasValue ? '…' : '${docs.value?.length ?? 0}';
    final status = staff.employmentStatus ?? 'ACTIVE';

    Widget summaryRow(String label, Widget value, {IconData? icon}) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          if (icon != null) ...[Icon(icon, size: 14, color: AppColors.textMuted), const SizedBox(width: 6)],
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          const SizedBox(width: 12),
          Expanded(
            child: Align(alignment: Alignment.centerRight, child: value),
          ),
        ],
      ),
    );
    Text v(String? s) => Text(
      _has(s) ? s! : '—',
      textAlign: TextAlign.right,
      style: const TextStyle(color: AppColors.textPrimary),
    );

    return TabListBody(
      onRefresh: () => _refreshStaff(ref, staff.staffId),
      children: [
        ResponsiveGrid(
          minItemWidth: 200,
          minColumns: 1,
          maxColumns: 3,
          children: [
            _OverviewStat(
              icon: Icons.work_outline,
              color: AppColors.primary,
              value: staff.employeeCode ?? '—',
              label: 'Employee ID',
            ),
            _OverviewStat(
              icon: Icons.apartment_outlined,
              color: AppColors.violet,
              value: _has(staff.department) ? staff.department! : '—',
              label: 'Department',
            ),
            _OverviewStat(
              icon: Icons.verified_user_outlined,
              color: AppColors.amber,
              value: _has(staff.designation) ? staff.designation! : '—',
              label: 'Designation',
            ),
            _OverviewStat(
              icon: Icons.event_outlined,
              color: AppColors.success,
              value: _date(staff.dateOfJoining) ?? '—',
              label: 'Joining Date',
            ),
            _OverviewStat(
              icon: Icons.trending_up,
              color: AppColors.amber,
              value: staff.totalExperienceYears != null ? '${staff.totalExperienceYears} yrs' : '—',
              label: 'Total Experience',
            ),
            _OverviewStat(
              icon: Icons.description_outlined,
              color: AppColors.primary,
              value: docCount,
              label: 'Documents',
              sublabel: 'Uploaded',
            ),
          ],
        ),
        const SizedBox(height: 16),
        ResponsiveGrid(
          minItemWidth: 320,
          maxColumns: 3,
          spacing: 16,
          children: [
            TintedCard(
              icon: Icons.person_outline,
              color: AppColors.violet,
              background: AppColors.violetLight,
              title: 'Personal Summary',
              child: _FieldGrid(
                children: [
                  DetailField(label: 'Gender', value: staff.gender),
                  DetailField(label: 'Date of Birth', value: _date(staff.dateOfBirth)),
                  DetailField(
                    label: 'Contact Number',
                    value: staff.mobileNo ?? staff.contactNumber,
                    icon: Icons.phone_outlined,
                  ),
                  DetailField(label: 'Email', value: staff.email, icon: Icons.mail_outline),
                ],
              ),
            ),
            TintedCard(
              icon: Icons.work_outline,
              color: AppColors.amber,
              background: AppColors.amberLight,
              title: 'Employment Summary',
              child: Column(
                children: [
                  for (final (i, row) in [
                    summaryRow('Department', v(staff.department)),
                    summaryRow('Designation', v(staff.designation)),
                    summaryRow('Joining Date', v(_date(staff.dateOfJoining))),
                    summaryRow('Status', StatusBadge(label: status, variant: employmentStatusVariant(status))),
                    summaryRow('Reporting Manager', v(staff.reportsTo?.fullName), icon: Icons.groups_outlined),
                    summaryRow('Branch', v(staff.branch?.branchName), icon: Icons.apartment_outlined),
                  ].indexed) ...[if (i > 0) const Divider(height: 1, color: AppColors.border), row],
                ],
              ),
            ),
            TintedCard(
              icon: Icons.auto_awesome_outlined,
              color: AppColors.violet,
              background: AppColors.violetLight,
              title: 'At a Glance',
              child: Column(
                children: [
                  Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.violetLight, width: 4),
                    ),
                    child: Center(
                      child: Container(
                        width: 64,
                        height: 64,
                        decoration: const BoxDecoration(color: AppColors.violetLight, shape: BoxShape.circle),
                        child: const Icon(Icons.person_outline, size: 28, color: AppColors.violet),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(docCount, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
                  const Text('Documents Uploaded', style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                  TextButton(
                    onPressed: () => DefaultTabController.of(context).animateTo(5),
                    child: const Text('View Documents →'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _OverviewStat extends StatelessWidget {
  const _OverviewStat({
    required this.icon,
    required this.color,
    required this.value,
    required this.label,
    this.sublabel,
  });

  final IconData icon;
  final Color color;
  final String value;
  final String label;
  final String? sublabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
                child: Icon(icon, size: 16, color: Colors.white),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value,
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    if (sublabel != null)
                      Text(sublabel!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Two-up field grid inside a card (web `grid grid-cols-2 gap-4`), one
/// column on very narrow cards.
class _FieldGrid extends StatelessWidget {
  const _FieldGrid({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final cols = c.maxWidth >= 280 ? 2 : 1;
        final w = (c.maxWidth - 16 * (cols - 1)) / cols;
        return Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [for (final child in children) SizedBox(width: w, child: child)],
        );
      },
    );
  }
}

// ── Personal Information ─────────────────────────────────────────────────

class _PersonalTab extends ConsumerWidget {
  const _PersonalTab({required this.staff});

  final StaffMember staff;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabListBody(
      onRefresh: () => _refreshStaff(ref, staff.staffId),
      children: [
        ResponsiveGrid(
          minItemWidth: 320,
          maxColumns: 2,
          spacing: 16,
          children: [
            TintedCard(
              icon: Icons.person_outline,
              color: AppColors.violet,
              background: AppColors.violetLight,
              title: 'Personal Details',
              child: _column([
                DetailField(label: 'Full Name', value: staff.fullName),
                DetailField(label: 'Gender', value: staff.gender),
                DetailField(label: 'Date of Birth', value: _date(staff.dateOfBirth)),
                DetailField(label: 'Qualification', value: staff.qualification),
              ]),
            ),
            TintedCard(
              icon: Icons.phone_outlined,
              color: AppColors.amber,
              background: AppColors.amberLight,
              title: 'Contact Details',
              child: _column([
                DetailField(label: 'Contact Number', value: staff.mobileNo ?? staff.contactNumber),
                DetailField(label: 'Email', value: staff.email),
                DetailField(label: 'Address', value: staff.address),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}

// ── Employment ───────────────────────────────────────────────────────────

class _EmploymentTab extends ConsumerWidget {
  const _EmploymentTab({required this.staff});

  final StaffMember staff;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pf = staff.pfApplicable ?? false;
    final esi = staff.esiApplicable ?? false;
    final pfEsi = '${pf ? 'PF' : ''}${pf && esi ? ' · ' : ''}${esi ? 'ESI' : ''}';
    return TabListBody(
      onRefresh: () => _refreshStaff(ref, staff.staffId),
      children: [
        ResponsiveGrid(
          minItemWidth: 320,
          maxColumns: 2,
          spacing: 16,
          children: [
            TintedCard(
              icon: Icons.work_outline,
              color: AppColors.primary,
              background: AppColors.primaryLight,
              title: 'Role & Reporting',
              child: _column([
                DetailField(label: 'Employee Code', value: staff.employeeCode),
                DetailField(label: 'Designation', value: staff.designation),
                DetailField(label: 'Department', value: staff.department),
                DetailField(label: 'Employment Type', value: staff.employeeType),
                DetailField(label: 'Reporting Manager', value: staff.reportsTo?.fullName),
              ]),
            ),
            TintedCard(
              icon: Icons.place_outlined,
              color: AppColors.violet,
              background: AppColors.violetLight,
              title: 'Dates & Location',
              child: _column([
                DetailField(label: 'Joining Date', value: _date(staff.dateOfJoining)),
                DetailField(label: 'Confirmation Date', value: _date(staff.confirmationDate)),
                DetailField(label: 'Work Location', value: staff.workLocation),
                DetailField(label: 'Branch', value: staff.branch?.branchName),
                DetailField(label: 'Employment Status', value: staff.employmentStatus),
              ]),
            ),
            TintedCard(
              icon: Icons.credit_card_outlined,
              color: AppColors.amber,
              background: AppColors.amberLight,
              title: 'Bank Info',
              child: _column([
                DetailField(label: 'Bank Name', value: staff.bankName),
                DetailField(label: 'Account Holder Name', value: staff.accountHolderName),
                DetailField(label: 'Account Number', value: staff.bankAccountNumber),
                DetailField(label: 'IFSC Code', value: staff.ifscCode),
              ]),
            ),
            TintedCard(
              icon: Icons.verified_user_outlined,
              color: AppColors.success,
              background: AppColors.successBg,
              title: 'Statutory Info',
              child: _column([
                DetailField(label: 'PAN Number', value: staff.panNumber),
                DetailField(label: 'Aadhaar Number', value: staff.aadhaarNumber),
                DetailField(label: 'UAN Number', value: staff.pfUanNumber),
                DetailField(label: 'PF / ESI Applicable', value: pfEsi.isEmpty ? 'None' : pfEsi),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
