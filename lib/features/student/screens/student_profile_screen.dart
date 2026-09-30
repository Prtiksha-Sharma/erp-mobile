import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/student_profile.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import 'student_change_password_sheet.dart';
import 'student_page_scaffold.dart';

/// Port of MyProfilePage.jsx: header (name, admission no, class, Change
/// Password) + Personal / Contact / Addresses / Parents / Previous School
/// cards, with the Quick Info + ID Card sidebar. On landscape tablets the
/// sidebar sits beside the main column like the web's xl layout; on phones
/// and portrait tablets it stacks underneath.
class StudentProfileScreen extends ConsumerWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StudentPageScaffold(
      title: 'My Profile',
      body: AsyncValueView(
        value: ref.watch(myProfileProvider),
        loadingLabel: 'Loading your profile…',
        onRetry: () => ref.invalidate(myProfileProvider),
        data: (student) => ResponsiveListView(
          onRefresh: () => ref.refresh(myProfileProvider.future),
          children: [
            _ProfileHeader(student: student),
            const SizedBox(height: 16),
            LayoutBuilder(
              builder: (context, constraints) {
                final main = _MainColumn(student: student);
                final side = _Sidebar(student: student);
                if (constraints.maxWidth >= Breakpoints.expanded) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: main),
                      const SizedBox(width: 16),
                      SizedBox(width: 300, child: side),
                    ],
                  );
                }
                return Column(children: [main, const SizedBox(height: 16), side]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.student});

  final StudentProfile student;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final photo = student.applicant?.photoUrl;
    final identity = Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: scheme.primary,
          backgroundImage: photo != null ? CachedNetworkImageProvider(photo) : null,
          child: photo == null
              ? Text(
                  initialsOf(student.displayName),
                  style: TextStyle(color: scheme.onPrimary, fontSize: 20, fontWeight: FontWeight.bold),
                )
              : null,
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(student.displayName, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 4),
              Wrap(
                spacing: 8,
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(
                    student.admissionNo,
                    style: TextStyle(color: scheme.outline, fontFamily: 'monospace', fontSize: 12),
                  ),
                  if (student.className != null) StatusBadge(label: student.className!, variant: BadgeVariant.primary),
                  if (student.sectionName != null)
                    Text(student.sectionName!, style: TextStyle(color: scheme.outline, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
    final changePassword = OutlinedButton.icon(
      onPressed: () => showChangePasswordSheet(context),
      icon: const Icon(Icons.lock_outline, size: 18),
      label: const Text('Change Password'),
    );

    return SectionCard(
      child: LayoutBuilder(
        builder: (context, constraints) => constraints.maxWidth >= Breakpoints.medium
            ? Row(children: [Expanded(child: identity), const SizedBox(width: 16), changePassword])
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [identity, const SizedBox(height: 14), changePassword],
              ),
      ),
    );
  }
}

class _MainColumn extends StatelessWidget {
  const _MainColumn({required this.student});

  final StudentProfile student;

  @override
  Widget build(BuildContext context) {
    final a = student.applicant;
    final gap = const SizedBox(height: 16);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionCard(
          icon: Icons.person_outline,
          title: 'Personal Information',
          child: InfoGrid(children: [
            InfoField(label: 'Full Name', value: student.fullName),
            InfoField(label: 'Gender', value: a?.gender),
            InfoField(label: 'Date of Birth', value: a?.dob == null ? null : formatDate(a!.dob)),
            InfoField(label: 'Blood Group', value: a?.bloodGroup),
            InfoField(label: 'Nationality', value: a?.nationality),
            InfoField(label: 'Category', value: a?.category?.categoryName),
            InfoField(label: 'Religion', value: a?.religion?.religionName),
          ]),
        ),
        gap,
        SectionCard(
          icon: Icons.phone_outlined,
          title: 'Contact Information',
          child: InfoGrid(children: [
            InfoField(label: 'Contact Number', value: a?.contactNo),
            InfoField(label: 'Email', value: a?.emailId),
          ]),
        ),
        if (student.addresses.isNotEmpty) ...[
          gap,
          SectionCard(
            icon: Icons.place_outlined,
            title: 'Addresses',
            child: ResponsiveGrid(
              minItemWidth: 260,
              maxColumns: 2,
              children: [
                for (final address in student.addresses)
                  _SubPanel(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          humanizeEnum(address.addressType ?? 'Address'),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          [address.addressLine1, address.addressLine2, address.landmark]
                              .whereType<String>()
                              .where((s) => s.isNotEmpty)
                              .join(', '),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          [address.city, address.state, address.pincode]
                              .whereType<String>()
                              .where((s) => s.isNotEmpty)
                              .join(', '),
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
        if (student.parents.isNotEmpty) ...[
          gap,
          SectionCard(
            icon: Icons.people_outline,
            title: 'Parent / Guardian',
            child: Column(
              children: [
                for (final (i, p) in student.parents.indexed) ...[
                  if (i > 0) const SizedBox(height: 12),
                  _SubPanel(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StatusBadge(label: p.relationType ?? 'Guardian', variant: BadgeVariant.primary),
                        const SizedBox(height: 10),
                        InfoGrid(minColumnWidth: 180, children: [
                          InfoField(
                            label: 'Name',
                            value: [p.firstName, p.lastName].whereType<String>().join(' ').trim(),
                          ),
                          InfoField(label: 'Mobile', value: p.mobileNo),
                          InfoField(label: 'Email', value: p.email),
                        ]),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
        if (student.previousSchools.isNotEmpty) ...[
          gap,
          SectionCard(
            icon: Icons.school_outlined,
            title: 'Previous School',
            child: Column(
              children: [
                for (final (i, s) in student.previousSchools.indexed) ...[
                  if (i > 0) const SizedBox(height: 12),
                  _SubPanel(
                    child: InfoGrid(minColumnWidth: 180, children: [
                      InfoField(label: 'School Name', value: s.schoolName),
                      InfoField(label: 'Board', value: s.boardName),
                      InfoField(label: 'Class Last Attended', value: s.classLastAttended),
                      InfoField(label: 'Percentage', value: s.percentage),
                    ]),
                  ),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class _Sidebar extends StatelessWidget {
  const _Sidebar({required this.student});

  final StudentProfile student;

  @override
  Widget build(BuildContext context) {
    final idCard = student.idCard;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionCard(
          title: 'Quick Info',
          icon: Icons.info_outline,
          trailing: student.studentStatus == null
              ? null
              : StatusBadge(
                  label: humanizeEnum(student.studentStatus),
                  variant: studentStatusVariant(student.studentStatus),
                ),
          child: InfoGrid(minColumnWidth: 140, children: [
            InfoField(label: 'Admission No', value: student.admissionNo),
            InfoField(label: 'Admission Date', value: formatDate(student.admissionDate)),
            InfoField(label: 'Roll No', value: student.rollNo),
            InfoField(label: 'Class', value: student.className),
            InfoField(label: 'Section', value: student.sectionName),
            InfoField(label: 'Academic Session', value: student.sessionName),
            InfoField(label: 'Institution', value: student.institutionName),
            InfoField(label: 'Status', value: student.studentStatus),
          ]),
        ),
        if (idCard != null) ...[
          const SizedBox(height: 16),
          SectionCard(
            icon: Icons.badge_outlined,
            title: 'ID Card',
            child: InfoGrid(minColumnWidth: 140, children: [
              InfoField(label: 'Card Number', value: idCard.cardNumber),
              InfoField(label: 'Issue Date', value: formatDate(idCard.issueDate)),
              InfoField(label: 'Expiry Date', value: formatDate(idCard.expiryDate)),
            ]),
          ),
        ],
      ],
    );
  }
}

/// The bordered, page-bg-tinted inner panel the web uses for each address /
/// parent / previous-school entry.
class _SubPanel extends StatelessWidget {
  const _SubPanel({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: child,
    );
  }
}
