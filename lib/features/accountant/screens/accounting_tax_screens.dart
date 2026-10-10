import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/accounting.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/responsive.dart';
import '../providers/accounting_providers.dart';
import 'accountant_page_scaffold.dart';
import 'accounting_widgets.dart';

/// GST — GET .../reports/gst?from&to: output GST (receipt vouchers), input
/// GST (payment vouchers), adjustments (debit/credit notes) and the net
/// liability.
class GstReportScreen extends ConsumerStatefulWidget {
  const GstReportScreen({super.key});

  @override
  ConsumerState<GstReportScreen> createState() => _GstReportScreenState();
}

class _GstReportScreenState extends ConsumerState<GstReportScreen> {
  DateTimeRange _range = financialYearToDate();

  @override
  Widget build(BuildContext context) {
    final key = periodKey(_range);
    final value = ref.watch(gstReportProvider(key));
    return AccountantPageScaffold(
      title: 'GST Report',
      body: AsyncValueView<GstReport>(
        value: value,
        onRetry: () => ref.invalidate(gstReportProvider(key)),
        data: (g) => ResponsiveListView(
          onRefresh: () => ref.refresh(gstReportProvider(key).future),
          children: [
            PeriodChip(range: _range, onChanged: (r) => setState(() => _range = r)),
            const SizedBox(height: 12),
            SummaryCard(
              children: [
                SummaryRow('Output GST (collected)', formatAmount(g.outputGst.total)),
                SummaryRow('Input GST (paid)', formatAmount(g.inputGst.total)),
                SummaryRow('Adjustments (notes)', formatAmount(g.adjustmentGst.total)),
                const Divider(),
                SummaryRow(
                  'Net GST payable',
                  formatAmount(g.netGstLiability),
                  bold: true,
                  color: g.netGstLiability > Decimal.zero ? AppColors.warning : AppColors.success,
                ),
              ],
            ),
            const SizedBox(height: 16),
            _GstSectionCard(title: 'Output GST', section: g.outputGst),
            const SizedBox(height: 16),
            _GstSectionCard(title: 'Input GST', section: g.inputGst),
            const SizedBox(height: 16),
            _GstSectionCard(title: 'Adjustments', section: g.adjustmentGst),
          ],
        ),
      ),
    );
  }
}

class _GstSectionCard extends StatelessWidget {
  const _GstSectionCard({required this.title, required this.section});

  final String title;
  final GstSection section;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionLabel(title, trailing: Text(formatAmount(section.total), style: const TextStyle(fontWeight: FontWeight.w700))),
        if ((section.description ?? '').isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(section.description!, style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 13)),
          ),
        DividedCard(
          children: [
            if (section.items.isEmpty)
              Padding(padding: const EdgeInsets.all(16), child: Text('Nothing in this period', style: TextStyle(color: scheme.onSurfaceVariant))),
            for (final i in section.items)
              ListTile(
                title: Text(i.party ?? i.documentNo ?? '—'),
                subtitle: Text([
                  i.documentNo,
                  formatDate(i.entryDate),
                  if (i.noteType != null) '${humanizeEnum(i.noteType)} note',
                  if ((i.detail ?? '').isNotEmpty) i.detail!,
                ].whereType<String>().join(' · '), maxLines: 2, overflow: TextOverflow.ellipsis),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(formatAmount(i.gstAmount), style: const TextStyle(fontWeight: FontWeight.w700)),
                    Text('on ${formatAmount(i.amount)}', style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 12)),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}

/// TDS — GET .../reports/tds?from&to: payment vouchers with TDS, grouped by
/// section (194C, 194J, …).
class TdsReportScreen extends ConsumerStatefulWidget {
  const TdsReportScreen({super.key});

  @override
  ConsumerState<TdsReportScreen> createState() => _TdsReportScreenState();
}

class _TdsReportScreenState extends ConsumerState<TdsReportScreen> {
  DateTimeRange _range = financialYearToDate();

  @override
  Widget build(BuildContext context) {
    final key = periodKey(_range);
    final value = ref.watch(tdsReportProvider(key));
    return AccountantPageScaffold(
      title: 'TDS Report',
      body: AsyncValueView<TdsReport>(
        value: value,
        onRetry: () => ref.invalidate(tdsReportProvider(key)),
        data: (t) {
          final scheme = Theme.of(context).colorScheme;
          return ResponsiveListView(
            onRefresh: () => ref.refresh(tdsReportProvider(key).future),
            children: [
              PeriodChip(range: _range, onChanged: (r) => setState(() => _range = r)),
              const SizedBox(height: 12),
              SummaryCard(
                children: [
                  SummaryRow('Sections', '${t.sections.length}'),
                  SummaryRow('Total TDS deducted', formatAmount(t.totalTds), bold: true),
                ],
              ),
              const SizedBox(height: 16),
              if (t.sections.isEmpty)
                const EmptyCard(icon: Icons.receipt_outlined, title: 'No TDS deducted in this period')
              else
                for (final s in t.sections) ...[
                  SectionLabel(
                    s.tdsSection == 'UNSPECIFIED' ? 'Section not set' : 'Section ${s.tdsSection}',
                    trailing: Text(formatAmount(s.totalTdsAmount), style: const TextStyle(fontWeight: FontWeight.w700)),
                  ),
                  DividedCard(
                    children: [
                      for (final i in s.items)
                        ListTile(
                          title: Text(i.payeeName ?? i.voucherNo),
                          subtitle: Text([i.voucherNo, formatDate(i.entryDate), if ((i.purpose ?? '').isNotEmpty) i.purpose!].join(' · '),
                              maxLines: 2, overflow: TextOverflow.ellipsis),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(formatAmount(i.tdsAmount), style: const TextStyle(fontWeight: FontWeight.w700)),
                              Text('on ${formatAmount(i.amount)}', style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 12)),
                            ],
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 16),
                ],
            ],
          );
        },
      ),
    );
  }
}
