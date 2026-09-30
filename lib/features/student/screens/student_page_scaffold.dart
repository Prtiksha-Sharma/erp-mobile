import 'package:flutter/material.dart';

import '../../../ui/widgets/status_badge.dart';

/// The frame every student sub-page shares: app bar + the web page's
/// one-line description under it. Keeps page chrome identical across the
/// 12 portal screens without each one re-declaring it.
class StudentPageScaffold extends StatelessWidget {
  const StudentPageScaffold({
    super.key,
    required this.title,
    required this.body,
    this.actions,
    this.bottom,
    this.floatingActionButton,
  });

  final String title;
  final Widget body;
  final List<Widget>? actions;
  final PreferredSizeWidget? bottom;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
      appBar: AppBar(title: Text(title), actions: actions, bottom: bottom),
      floatingActionButton: floatingActionButton,
      body: body,
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
