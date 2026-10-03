import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/auth/auth_provider.dart';
import '../../../core/models/student_profile.dart';
import '../../../core/roles/app_role.dart';
import '../../../ui/widgets/app_shell/app_page_scaffold.dart';
import '../../../ui/widgets/status_badge.dart';
import '../providers/student_portal_providers.dart';
import 'student_change_password_sheet.dart';
import 'student_nav.dart';

/// The frame every student page shares: the drawer-shell [AppPageScaffold]
/// (gradient app bar, left drawer, notifications, account menu), same as
/// Principal/Vice Principal. Every student screen builds on this instead of
/// its own `Scaffold`.
class StudentPageScaffold extends ConsumerWidget {
  const StudentPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.bottom,
    this.floatingActionButton,
  });

  final String title;
  final Widget body;
  final PreferredSizeWidget? bottom;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;
    final profile = ref.watch(myProfileProvider).value;
    final displayName = profile?.fullName ?? user?.fullName ?? 'Student';

    return AppPageScaffold(
      role: AppRole.student,
      title: title,
      body: body,
      sections: studentNavSections,
      roleLabel: 'Student',
      schoolName: profile?.institutionName,
      accountName: displayName,
      accountEmail: user?.email,
      accountUsername: user?.username,
      accountPhotoUrl: profile?.applicant?.photoUrl,
      onProfile: () => context.go('/student/more/profile'),
      onChangePassword: () => showChangePasswordSheet(context),
      onSignOut: () => ref.read(authProvider.notifier).logout(),
      bottom: bottom,
      floatingActionButton: floatingActionButton,
    );
  }
}

/// The muted one-line description under each web page's `<h1>`.
class PageIntro extends StatelessWidget {
  const PageIntro(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.outline),
      ),
    );
  }
}

/// A card of rows separated by hairline dividers — the web's
/// `<Card bodyClass="p-0"><div className="divide-y">` list pattern.
class DividedCard extends StatelessWidget {
  const DividedCard({super.key, required this.children, this.header});

  final List<Widget> children;
  final Widget? header;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final divider = Divider(height: 1, color: scheme.outlineVariant.withValues(alpha: 0.6));
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: scheme.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (header != null) ...[header!, divider],
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0) divider,
            children[i],
          ],
        ],
      ),
    );
  }
}

/// Title + trailing content header row used at the top of a DividedCard.
class CardHeader extends StatelessWidget {
  const CardHeader(this.title, {super.key, this.trailing});

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
      child: Row(
        children: [
          Expanded(child: Text(title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15))),
          ?trailing,
        ],
      ),
    );
  }
}

// ── Status -> badge variant maps, 1:1 with the web pages' *_VARIANT tables ──

BadgeVariant documentStatusVariant(String? s) => switch (s) {
      'VERIFIED' => BadgeVariant.success,
      'REJECTED' => BadgeVariant.danger,
      _ => BadgeVariant.warning, // PENDING / null
    };

BadgeVariant leaveStatusVariant(String? s) => switch (s) {
      'APPROVED' => BadgeVariant.success,
      'REJECTED' => BadgeVariant.danger,
      'PENDING' || null => BadgeVariant.warning,
      _ => BadgeVariant.neutral,
    };

BadgeVariant workStatusVariant(String? s) => switch (s) {
      'SUBMITTED' => BadgeVariant.success,
      'MISSING' => BadgeVariant.danger,
      _ => BadgeVariant.neutral,
    };

BadgeVariant dueStatusVariant(String? s) => switch (s) {
      'PAID' => BadgeVariant.success,
      'PARTIALLY_PAID' => BadgeVariant.warning,
      'OVERDUE' => BadgeVariant.danger,
      _ => BadgeVariant.neutral, // DUE / PENDING
    };

BadgeVariant receiptStatusVariant(String? s) => switch (s) {
      'PAID' || null => BadgeVariant.success,
      'CANCELLED' => BadgeVariant.danger,
      _ => BadgeVariant.neutral,
    };

BadgeVariant severityVariant(String? s) => switch (s) {
      'MODERATE' => BadgeVariant.warning,
      'MAJOR' => BadgeVariant.danger,
      _ => BadgeVariant.neutral, // MINOR
    };

BadgeVariant disciplineStatusVariant(String? s) => switch (s) {
      'OPEN' => BadgeVariant.warning,
      'RESOLVED' => BadgeVariant.success,
      _ => BadgeVariant.neutral,
    };

BadgeVariant promotionStatusVariant(String? s) => switch (s) {
      'PROMOTED' => BadgeVariant.success,
      'RETAINED' => BadgeVariant.warning,
      _ => BadgeVariant.neutral,
    };

/// Student account status — web students/constants/studentConfig.js STATUS_MAP.
BadgeVariant studentStatusVariant(String? s) => switch (s) {
      'ACTIVE' => BadgeVariant.success,
      'SUSPENDED' => BadgeVariant.danger,
      'ALUMNI' || 'PASSED_OUT' => BadgeVariant.violet,
      'TRANSFERRED' => BadgeVariant.primary,
      'INACTIVE' || 'DROPPED' => BadgeVariant.warning,
      _ => BadgeVariant.neutral,
    };
