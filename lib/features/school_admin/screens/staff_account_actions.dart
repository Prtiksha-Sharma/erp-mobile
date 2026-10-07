import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../providers/school_admin_providers.dart';
import '../services/staff_directory_service.dart';
import 'school_admin_page_scaffold.dart';

/// Account-lifecycle actions on one staff login (web useDeactivateStaff /
/// useActivateStaff / useUnlockStaff / useDeleteStaffAccount). All keyed
/// by `user_id`; [staffId] is only used to refresh that member's detail.
class StaffAccountActions {
  const StaffAccountActions(this.ref, {required this.userId, required this.staffId, required this.name});

  final WidgetRef ref;
  final String userId;
  final String staffId;
  final String name;

  void _refresh() {
    ref.invalidate(staffListProvider);
    ref.invalidate(staffSummaryProvider);
    ref.invalidate(staffDetailProvider(staffId));
  }

  Future<String?> _run(Future<Result<void>> Function(StaffDirectoryService s) call, String fallback) async {
    final result = await call(StaffDirectoryService());
    switch (result) {
      case Ok():
        _refresh();
        return null;
      case Err(:final failure):
        return failureMessage(failure, fallback);
    }
  }

  /// Employee Management's Deactivate (list row / detail page kebab).
  Future<void> confirmDeactivateEmployee(BuildContext context) => showConfirmDialog(
    context,
    title: 'Deactivate Employee',
    confirmLabel: 'Deactivate',
    dangerous: true,
    message:
        'Are you sure you want to deactivate $name? Their login will be suspended, but their historical '
        'payroll, leave, and attendance records will remain available. This can be reversed at any time.',
    action: () => _run((s) => s.deactivate(userId), 'Failed to update employee status.'),
  );

  /// Employee Management's Reactivate (list row / detail page kebab).
  Future<void> confirmReactivateEmployee(BuildContext context) => showConfirmDialog(
    context,
    title: 'Reactivate Employee',
    confirmLabel: 'Reactivate',
    message: 'Reactivate $name? Their login and employee status will be restored to Active.',
    action: () => _run((s) => s.activate(userId), 'Failed to update employee status.'),
  );

  /// The role detail sheets' Deactivate (TeacherDetailModal copy).
  Future<void> confirmDeactivateAccount(BuildContext context) => showConfirmDialog(
    context,
    title: 'Deactivate Staff Account',
    confirmLabel: 'Deactivate',
    dangerous: true,
    message: "Deactivate $name's login? They will not be able to sign in until reactivated.",
    action: () => _run((s) => s.deactivate(userId), 'Failed to update employee status.'),
  );

  /// The role detail sheets' Activate — no confirmation (corrective,
  /// low-risk), like the web.
  Future<void> activate(BuildContext context) async {
    final error = await _run((s) => s.activate(userId), 'Failed to activate account.');
    if (error != null && context.mounted) showSnack(context, error);
  }

  /// No confirmation, and a toast either way — unlocking changes nothing
  /// visible on the row (useUnlockStaff).
  Future<void> unlock(BuildContext context) async {
    final error = await _run((s) => s.unlock(userId), 'Failed to unlock account.');
    if (context.mounted) showSnack(context, error ?? 'Account unlocked.');
  }

  Future<bool> confirmDelete(BuildContext context, {String title = 'Delete Employee Account'}) => showConfirmDialog(
    context,
    title: title,
    confirmLabel: 'Delete',
    dangerous: true,
    message:
        "Remove $name's login and mark them terminated? Their record and history are kept, but there is no "
        'restore option in this screen — re-adding access requires a new account.',
    action: () => _run((s) => s.softDelete(userId), 'Failed to delete account.'),
  );
}
