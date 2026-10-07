import 'package:flutter/material.dart';

import '../../../core/models/admin_admissions.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/responsive.dart';
import 'admissions_widgets.dart';

/// The read-only sections the application detail and the applicant profile
/// share (web ApplicationDetailPage.jsx / ApplicantProfilePage.jsx): the
/// applicant block and the parent, address, sibling, emergency-contact and
/// previous-school cards. Fields are the real backend columns (the web
/// pages read several that don't exist — see admin_admissions.dart).

/// "Father" from `FATHER`.
String relationLabel(String? relation) => relation == null ? '—' : humanizeEnum(relation);

/// The hero row (avatar, name, email, phone) + the applicant's fields.
/// [profile] adds the profile page's Religion / Category and shows the
/// photo at a larger size.
class ApplicantInfoSection extends StatelessWidget {
  const ApplicantInfoSection({super.key, required this.applicant, this.profile = false});

  final AdmissionApplicant? applicant;
  final bool profile;

  @override
  Widget build(BuildContext context) {
    final a = applicant;
    if (a == null) return const MissingPill('No applicant information provided');
    final name = a.fullName;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            ApplicantAvatar(
              name: name,
              gender: a.gender,
              size: profile ? 72 : 56,
              photoUrl: profile ? a.photoUrl : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name ?? '—',
                    style: TextStyle(
                      fontSize: profile ? 20 : 17,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Wrap(
                    spacing: 12,
                    runSpacing: 4,
                    children: [
                      if (a.emailId != null && a.emailId!.isNotEmpty) _iconText(Icons.mail_outline, a.emailId!),
                      if (a.contactNo != null && a.contactNo!.isNotEmpty) _iconText(Icons.phone_outlined, a.contactNo!),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        FieldGrid(
          children: [
            if (profile) ...[
              OverlineField('Date of Birth', admissionDate(a.dob)),
              OverlineField('Gender', a.gender),
              OverlineField('Blood Group', a.bloodGroup),
              OverlineField('Religion', a.religion?.religionName),
              OverlineField('Category', a.category?.categoryName),
              OverlineField('Nationality', a.nationality),
              OverlineField('Mother Tongue', a.motherTongue),
              OverlineField('Caste', a.caste),
              OverlineField('Aadhar No.', a.aadhaarNo),
            ] else ...[
              OverlineField('Gender', a.gender),
              OverlineField('Date of Birth', admissionDate(a.dob)),
              OverlineField('Blood Group', a.bloodGroup),
              OverlineField('Nationality', a.nationality),
              OverlineField('Mother Tongue', a.motherTongue),
              OverlineField('Caste', a.caste),
              OverlineField('Aadhar No.', a.aadhaarNo),
              OverlineField('Birth Certificate No.', a.birthCertificateNo),
            ],
          ],
        ),
      ],
    );
  }

  Widget _iconText(IconData icon, String text) => Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon, size: 12, color: AppColors.textMuted),
      const SizedBox(width: 4),
      Flexible(
        child: Text(text, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
      ),
    ],
  );
}

/// Parent / Guardian cards, two per row on wide screens.
class ParentCards extends StatelessWidget {
  const ParentCards({super.key, required this.parents});

  final List<AdmissionParent> parents;

  @override
  Widget build(BuildContext context) {
    if (parents.isEmpty) return const MissingPill('No parent information provided');
    return ResponsiveGrid(
      minItemWidth: 360,
      maxColumns: 2,
      spacing: 16,
      children: [for (final p in parents) _ParentCard(parent: p)],
    );
  }
}

class _ParentCard extends StatelessWidget {
  const _ParentCard({required this.parent});

  final AdmissionParent parent;

  @override
  Widget build(BuildContext context) {
    final p = parent;
    final name = p.fullName;
    final isMother = p.relationType?.toUpperCase() == 'MOTHER';
    return InnerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              ApplicantAvatar(name: name, gender: isMother ? 'female' : 'male', size: 40),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? '—',
                      style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                    ),
                    Text(
                      relationLabel(p.relationType),
                      style: const TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          FieldGrid(
            minColumnWidth: 140,
            children: [
              OverlineField('Occupation', p.occupation),
              OverlineField('Qualification', p.qualification),
              OverlineField('Mobile', p.mobileNo),
              OverlineField('Email', p.email),
              OverlineField('Annual Income', p.annualIncome == null ? null : formatAmount(p.annualIncome)),
              OverlineField('Aadhar No.', p.aadhaarNo),
              OverlineField('Organisation', p.organization),
              OverlineField('Designation', p.designation),
            ],
          ),
        ],
      ),
    );
  }
}

class AddressCards extends StatelessWidget {
  const AddressCards({super.key, required this.addresses});

  final List<AdmissionAddress> addresses;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      minItemWidth: 280,
      maxColumns: 2,
      spacing: 16,
      children: [
        for (final a in addresses)
          InnerCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        a.addressType == null ? 'Address' : humanizeEnum(a.addressType),
                        style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                      ),
                    ),
                    const Icon(Icons.place_outlined, size: 16, color: AppColors.textMuted),
                  ],
                ),
                const SizedBox(height: 6),
                Text(a.line.isEmpty ? '—' : a.line, style: const TextStyle(color: AppColors.textSecondary)),
              ],
            ),
          ),
      ],
    );
  }
}

class PreviousSchoolCards extends StatelessWidget {
  const PreviousSchoolCards({super.key, required this.schools});

  final List<AdmissionPreviousSchool> schools;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final (i, s) in schools.indexed) ...[
          if (i > 0) const SizedBox(height: 16),
          InnerCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.schoolName ?? '—',
                  style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                ),
                const SizedBox(height: 12),
                FieldGrid(
                  minColumnWidth: 140,
                  children: [
                    OverlineField('Board', s.boardName),
                    OverlineField('Class Attended', s.classLastAttended),
                    OverlineField('Passing Year', s.passingYear?.toString()),
                    OverlineField('TC Number', s.tcNumber),
                    OverlineField('Percentage', s.percentage),
                    OverlineField('Reason for Leaving', s.reasonForLeaving),
                  ],
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class SiblingCards extends StatelessWidget {
  const SiblingCards({super.key, required this.siblings});

  final List<AdmissionSibling> siblings;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      minItemWidth: 280,
      maxColumns: 2,
      spacing: 16,
      children: [
        for (final s in siblings)
          InnerCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.siblingName ?? '—',
                  style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                ),
                const SizedBox(height: 12),
                FieldGrid(
                  minColumnWidth: 120,
                  children: [
                    OverlineField('Class', s.className),
                    OverlineField('School', s.institutionName),
                    OverlineField('Admission No.', s.admissionNo),
                    OverlineField('Relation', s.relationType == null ? null : humanizeEnum(s.relationType)),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class EmergencyContactCards extends StatelessWidget {
  const EmergencyContactCards({super.key, required this.contacts});

  final List<AdmissionEmergencyContact> contacts;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGrid(
      minItemWidth: 280,
      maxColumns: 2,
      spacing: 16,
      children: [
        for (final c in contacts)
          InnerCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.shield_outlined, size: 16, color: AppColors.danger),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        c.contactName ?? '—',
                        style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                FieldGrid(
                  minColumnWidth: 120,
                  children: [
                    OverlineField('Relation', c.relation),
                    OverlineField('Mobile', c.mobileNo),
                    OverlineField('Email', c.email),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
