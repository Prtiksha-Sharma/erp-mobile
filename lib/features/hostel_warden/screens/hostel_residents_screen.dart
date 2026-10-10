import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/error/failure.dart';
import '../../../core/models/hostel_warden.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/info_field.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/hostel_warden_providers.dart';
import '../services/hostel_warden_service.dart';
import 'hostel_warden_page_scaffold.dart';

/// Hostel residents — GET /hostel/residents (students + staff merged).
/// Search and the Students / Staff filter run on the device; the list is
/// bounded by hostel capacity.
class HostelResidentsScreen extends ConsumerStatefulWidget {
  const HostelResidentsScreen({super.key});

  @override
  ConsumerState<HostelResidentsScreen> createState() => _HostelResidentsScreenState();
}

enum _Kind { all, students, staff }

class _HostelResidentsScreenState extends ConsumerState<HostelResidentsScreen> {
  final _search = TextEditingController();
  String _query = '';
  _Kind _kind = _Kind.all;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  bool _matches(HostelResident r) {
    if (_kind == _Kind.students && !r.isStudent) return false;
    if (_kind == _Kind.staff && r.isStudent) return false;
    if (_query.isEmpty) return true;
    final q = _query.toLowerCase();
    return r.name.toLowerCase().contains(q) ||
        (r.identifier?.toLowerCase().contains(q) ?? false) ||
        (r.room?.roomNumber.toLowerCase() == q);
  }

  @override
  Widget build(BuildContext context) {
    final value = ref.watch(wardenResidentsProvider);
    return HostelWardenPageScaffold(
      title: 'Hostel Residents',
      body: AsyncValueView<List<HostelResident>>(
        value: value,
        onRetry: () => ref.invalidate(wardenResidentsProvider),
        data: (all) {
          final rows = all.where(_matches).toList()
            ..sort((a, b) {
              final f = (a.room?.floorNumber ?? 0).compareTo(b.room?.floorNumber ?? 0);
              if (f != 0) return f;
              final r = (int.tryParse(a.room?.roomNumber ?? '') ?? 0).compareTo(int.tryParse(b.room?.roomNumber ?? '') ?? 0);
              return r != 0 ? r : a.name.compareTo(b.name);
            });
          final students = all.where((r) => r.isStudent).length;
          return ResponsiveListView(
            onRefresh: () => ref.refresh(wardenResidentsProvider.future),
            children: [
              HostelSearchField(
                controller: _search,
                hint: 'Search name, admission no. or room',
                onChanged: (v) => setState(() => _query = v.trim()),
              ),
              const SizedBox(height: 12),
              SegmentedButton<_Kind>(
                segments: [
                  ButtonSegment(value: _Kind.all, label: Text('All (${all.length})')),
                  ButtonSegment(value: _Kind.students, label: Text('Students ($students)')),
                  ButtonSegment(value: _Kind.staff, label: Text('Staff (${all.length - students})')),
                ],
                selected: {_kind},
                showSelectedIcon: false,
                onSelectionChanged: (v) => setState(() => _kind = v.first),
              ),
              const SizedBox(height: 16),
              if (rows.isEmpty)
                EmptyCard(
                  icon: Icons.badge_outlined,
                  title: all.isEmpty ? 'No residents yet' : 'No residents match',
                  message: all.isEmpty ? 'Allocate rooms from Room Allocation.' : null,
                )
              else
                DividedCard(children: [for (final r in rows) _ResidentRow(resident: r)]),
            ],
          );
        },
      ),
    );
  }
}

class _ResidentRow extends StatelessWidget {
  const _ResidentRow({required this.resident});

  final HostelResident resident;

  @override
  Widget build(BuildContext context) {
    final r = resident;
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      onTap: () => context.push('/hostel/residents/${r.isStudent ? 'student' : 'staff'}/${r.personId}'),
      leading: CircleAvatar(
        backgroundColor: r.isStudent ? AppColors.primaryLight : AppColors.violetLight,
        foregroundColor: r.isStudent ? AppColors.primary : AppColors.violet,
        child: Text(initialsOf(r.name), style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
      ),
      title: Text(r.name.isEmpty ? (r.identifier ?? 'Resident') : r.name),
      subtitle: Text(
        [
          r.identifier,
          if (!r.isStudent) r.roleLabel,
          if (r.room != null) 'Room ${r.room!.roomNumber}',
          if (r.bedNumber != null) 'Bed ${r.bedNumber}',
        ].whereType<String>().join(' · '),
        style: TextStyle(color: scheme.onSurfaceVariant),
      ),
      trailing: r.isStudent ? null : const StatusBadge(label: 'Staff', variant: BadgeVariant.violet),
    );
  }
}

Widget _cell(String label, String? value, {bool wide = false}) =>
    SizedBox(width: wide ? 320 : 150, child: InfoField(label: label, value: value));

Widget _allocationCard(WardenProfileAllocation? a) => SectionCard(
      title: 'Hostel room',
      icon: Icons.bed_outlined,
      child: Wrap(
        runSpacing: 12,
        spacing: 24,
        children: [
          _cell('Room', a?.room?.roomNumber),
          _cell('Floor', a?.room?.floorNumber?.toString()),
          _cell('Bed', a?.bedNumber),
          _cell('Type', [
            if (a?.room?.roomType != null) humanizeEnum(a!.room!.roomType),
            if (a?.room?.acType != null) a!.room!.acType == 'NON_AC' ? 'Non-AC' : 'AC',
          ].join(' · ')),
          _cell('Allocated on', a?.allocatedAt == null ? null : formatDate(a!.allocatedAt)),
        ],
      ),
    );

/// GET /hostel/residents/students/:id — 404s unless the student currently
/// holds an active hostel allocation. Also shows the last 30 nights of
/// roll-call from GET /hostel/attendance?student_id.
class StudentResidentScreen extends ConsumerWidget {
  const StudentResidentScreen({super.key, required this.studentId});

  final String studentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(wardenStudentResidentProvider(studentId));
    final to = today();
    final key = (studentId: studentId, from: apiDate(to.subtract(const Duration(days: 29))), to: apiDate(to));
    return HostelWardenPageScaffold(
      title: 'Resident Profile',
      body: AsyncValueView<StudentResidentProfile>(
        value: value,
        onRetry: () => ref.invalidate(wardenStudentResidentProvider(studentId)),
        data: (p) {
          final a = p.applicants;
          final name = a?.fullName ?? '';
          return ResponsiveListView(
            onRefresh: () async {
              ref.invalidate(wardenStudentAttendanceProvider(key));
              ref.invalidate(wardenStudentResidentProvider(studentId));
              await ref.read(wardenStudentResidentProvider(studentId).future);
            },
            children: [
              _ProfileHeader(
                name: name.isEmpty ? (p.admissionNo ?? 'Student') : name,
                subtitle: [
                  p.admissionNo,
                  [p.className, p.sectionName].whereType<String>().join(' - '),
                ].whereType<String>().where((s) => s.isNotEmpty).join(' · '),
                photoUrl: a?.photoUrl,
              ),
              const SizedBox(height: 16),
              _allocationCard(p.allocation),
              const SizedBox(height: 12),
              SectionCard(
                title: 'Student',
                icon: Icons.person_outline,
                child: Wrap(
                  runSpacing: 12,
                  spacing: 24,
                  children: [
                    _cell('Roll no.', p.rollNo),
                    _cell('Gender', humanizeEnum(a?.gender)),
                    _cell('Date of birth', a?.dob == null ? null : formatDate(a!.dob)),
                    _cell('Blood group', a?.bloodGroup),
                    _cell('Phone', a?.contactNo),
                    _cell('Email', a?.emailId),
                    for (final addr in p.addresses) _cell('${humanizeEnum(addr.addressType)} address', addr.oneLine, wide: true),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SectionCard(
                title: 'Parents / guardians',
                icon: Icons.family_restroom_outlined,
                child: p.parents.isEmpty
                    ? const Text('No parent contacts on file.')
                    : Column(
                        children: [
                          for (final g in p.parents)
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text([g.firstName, g.lastName].whereType<String>().join(' ')),
                              subtitle: Text([humanizeEnum(g.relationType), g.mobileNo, g.email]
                                  .whereType<String>()
                                  .where((s) => s.isNotEmpty && s != '—')
                                  .join(' · ')),
                            ),
                        ],
                      ),
              ),
              const SizedBox(height: 12),
              _AttendanceHistory(keyArgs: key),
            ],
          );
        },
      ),
    );
  }
}

class _AttendanceHistory extends ConsumerWidget {
  const _AttendanceHistory({required this.keyArgs});

  final ({String studentId, String from, String to}) keyArgs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(wardenStudentAttendanceProvider(keyArgs));
    return SectionCard(
      title: 'Roll-call · last 30 days',
      icon: Icons.fact_check_outlined,
      child: value.when(
        loading: () => const Padding(padding: EdgeInsets.all(8), child: LinearProgressIndicator()),
        error: (e, _) => Text(describeError(e)),
        data: (rows) {
          if (rows.isEmpty) return const Text('No roll-call marked in the last 30 days.');
          final absent = rows.where((r) => r.status == 'ABSENT').length;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${rows.length - absent} present · $absent absent',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              for (final r in rows.where((r) => r.status == 'ABSENT').take(10))
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    children: [
                      Expanded(child: Text(formatDate(r.attendanceDate))),
                      attendanceBadge(r.status),
                    ],
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

/// GET /hostel/residents/staff/:id.
class StaffResidentScreen extends ConsumerWidget {
  const StaffResidentScreen({super.key, required this.staffId});

  final String staffId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(wardenStaffResidentProvider(staffId));
    return HostelWardenPageScaffold(
      title: 'Resident Profile',
      body: AsyncValueView<StaffResidentProfile>(
        value: value,
        onRetry: () => ref.invalidate(wardenStaffResidentProvider(staffId)),
        data: (p) => ResponsiveListView(
          onRefresh: () => ref.refresh(wardenStaffResidentProvider(staffId).future),
          children: [
            _ProfileHeader(
              name: p.fullName,
              subtitle: [p.employeeCode, p.designation].whereType<String>().join(' · '),
              photoUrl: p.profilePhotoUrl,
            ),
            const SizedBox(height: 16),
            _allocationCard(p.allocation),
            const SizedBox(height: 12),
            SectionCard(
              title: 'Staff details',
              icon: Icons.badge_outlined,
              child: Wrap(
                runSpacing: 12,
                spacing: 24,
                children: [
                  _cell('Department', p.department),
                  _cell('Gender', humanizeEnum(p.gender)),
                  _cell('Date of birth', p.dateOfBirth == null ? null : formatDate(p.dateOfBirth)),
                  _cell('Phone', p.contactNumber),
                  _cell('Email', p.email),
                  _cell('Qualification', p.qualification),
                  _cell('Address', p.address, wide: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileHeader extends StatelessWidget {
  const _ProfileHeader({required this.name, required this.subtitle, this.photoUrl});

  final String name;
  final String subtitle;
  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final hasPhoto = (photoUrl ?? '').isNotEmpty;
    return Row(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: scheme.primaryContainer,
          backgroundImage: hasPhoto ? NetworkImage(photoUrl!) : null,
          child: hasPhoto
              ? null
              : Text(initialsOf(name),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: scheme.onPrimaryContainer)),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              if (subtitle.isNotEmpty) Text(subtitle, style: TextStyle(color: scheme.onSurfaceVariant)),
            ],
          ),
        ),
      ],
    );
  }
}
