import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/student_certificates.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/student_portal_providers.dart';
import 'student_id_card_visual.dart';
import 'student_page_scaffold.dart';

/// Port of MyCertificatesPage.jsx — ID Card + the four generated
/// certificates as tabs. The web's "Print" button (window.print) has no
/// mobile equivalent without a PDF/printing dependency, so it's omitted;
/// everything else is identical.
class StudentCertificatesScreen extends StatelessWidget {
  const StudentCertificatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1 + CertificateType.values.length,
      child: StudentPageScaffold(
        title: 'My Certificates',
        bottom: TabBar(
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: [
            const Tab(text: 'ID Card'),
            for (final type in CertificateType.values) Tab(text: type.label),
          ],
        ),
        body: TabBarView(
          children: [
            const _IdCardTab(),
            for (final type in CertificateType.values) _CertificateTab(type: type),
          ],
        ),
      ),
    );
  }
}

class _IdCardTab extends ConsumerWidget {
  const _IdCardTab();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueView(
      value: ref.watch(myIdCardProvider),
      loadingLabel: 'Loading your ID card…',
      onRetry: () => ref.invalidate(myIdCardProvider),
      data: (card) => ResponsiveListView(
        onRefresh: () => ref.refresh(myIdCardProvider.future),
        children: [
          const PageIntro('View your ID card and school certificates.'),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: IdCardVisual(card: card),
            ),
          ),
        ],
      ),
    );
  }
}

class _CertificateTab extends ConsumerWidget {
  const _CertificateTab({required this.type});

  final CertificateType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = myCertificateProvider(type);
    return AsyncValueView(
      value: ref.watch(provider),
      loadingLabel: 'Loading ${type.label}…',
      onRetry: () => ref.invalidate(provider),
      data: (cert) => ResponsiveListView(
        onRefresh: () => ref.refresh(provider.future),
        children: [
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 680),
              child: _CertificateDocument(cert: cert),
            ),
          ),
        ],
      ),
    );
  }
}

class _CertificateDocument extends StatelessWidget {
  const _CertificateDocument({required this.cert});

  final StudentCertificate cert;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final pad = context.isTabletWidth ? 32.0 : 20.0;
    final type = cert.certificateType;
    final title = type.isEmpty ? 'Certificate' : '${type[0].toUpperCase()}${type.substring(1)} Certificate';

    return Container(
      padding: EdgeInsets.all(pad),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: scheme.primaryContainer, width: 2),
      ),
      child: Column(
        children: [
          if (cert.institutionName != null)
            Text(
              cert.institutionName!.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(color: scheme.primary, fontWeight: FontWeight.w600, letterSpacing: 1, fontSize: 12),
            ),
          const SizedBox(height: 4),
          Text(title, textAlign: TextAlign.center, style: theme.textTheme.headlineSmall),
          const SizedBox(height: 20),
          Text(
            cert.content,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge?.copyWith(height: 1.6, color: scheme.onSurfaceVariant),
          ),
          const SizedBox(height: 20),
          Divider(color: scheme.outlineVariant),
          const SizedBox(height: 8),
          DefaultTextStyle(
            style: theme.textTheme.bodySmall!.copyWith(color: scheme.outline),
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 16,
                runSpacing: 4,
                children: [
                  Text('Admission No: ${cert.student?.admissionNo ?? '—'}'),
                  Text('Issued ${formatDate(cert.issuedDate)}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
