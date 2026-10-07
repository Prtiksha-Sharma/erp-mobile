import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/error/result.dart';
import '../../../core/models/admin_lookups.dart';
import '../../../core/utils/formatters.dart';
import '../../../ui/theme/app_colors.dart';
import '../../../ui/widgets/async_value_view.dart';
import '../../../ui/widgets/empty_state.dart';
import '../../../ui/widgets/responsive.dart';
import '../../../ui/widgets/section_card.dart';
import '../providers/school_admin_providers.dart';
import '../services/admissions_service.dart';
import 'admissions_widgets.dart';
import 'school_admin_page_scaffold.dart';

/// Registration Fee Settings — web features/admissions/pages/
/// AdmissionsRegistrationFeePage.jsx + ClassRegistrationFeesPanel.jsx.
/// Classes come from GET /admin/students/classes; each fee saves on its own
/// PATCH /admin/admission/classes/:id/fee when the field loses focus (or on
/// Done), like the web.
class AdmissionsRegistrationFeeScreen extends ConsumerWidget {
  const AdmissionsRegistrationFeeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final classes = ref.watch(adminClassOptionsProvider);
    return SchoolAdminPageScaffold(
      title: 'Registration Fee Settings',
      body: ResponsiveListView(
        onRefresh: () async {
          ref.invalidate(adminClassOptionsProvider);
          await ref.read(adminClassOptionsProvider.future).then<void>((_) {}, onError: (_) {});
        },
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: AppColors.brandGradient, borderRadius: BorderRadius.circular(16)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _HeroIcon(),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Registration Fee Settings',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Applicants can only proceed to payment once their applied class has a registration fee set here.',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          classes.when(
            skipLoadingOnRefresh: true,
            loading: () => const LoadingView(label: 'Loading classes…'),
            error: (err, _) => AdmissionLoadError(
              title: 'Failed to load classes.',
              error: err,
              onRetry: () => ref.invalidate(adminClassOptionsProvider),
            ),
            data: (list) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _Stats(classes: list),
                const SizedBox(height: 16),
                _FeePanel(classes: list),
                if (list.isNotEmpty)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      'Fees save automatically when you click away from a field.',
                      style: TextStyle(fontSize: 12, color: AppColors.textMuted),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroIcon extends StatelessWidget {
  const _HeroIcon();

  @override
  Widget build(BuildContext context) => Container(
    width: 48,
    height: 48,
    decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(16)),
    child: const Icon(Icons.currency_rupee, color: Colors.white),
  );
}

// ── Stats ────────────────────────────────────────────────────────────────

class _Stats extends StatelessWidget {
  const _Stats({required this.classes});

  final List<AdminClassOption> classes;

  @override
  Widget build(BuildContext context) {
    // Computed from the same list the panel renders. "Fee range" and
    // "Combined total" only count classes that have a fee set.
    final fees = [for (final c in classes) ?c.registrationFee];
    final min = fees.isEmpty ? null : fees.reduce((a, b) => a < b ? a : b);
    final max = fees.isEmpty ? null : fees.reduce((a, b) => a > b ? a : b);
    final total = fees.fold(Decimal.zero, (sum, f) => sum + f);
    final range = min == null ? '—' : (min == max ? formatAmount(min) : '${formatAmount(min)} – ${formatAmount(max)}');

    Widget tile(IconData icon, String label, String value, Color bg, Color fg) => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Icon(icon, size: 16, color: fg),
          ),
          const SizedBox(height: 12),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              value,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
            ),
          ),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
        ],
      ),
    );

    return ResponsiveGrid(
      minItemWidth: 220,
      maxColumns: 3,
      children: [
        tile(
          Icons.layers_outlined,
          'Classes configured',
          '${classes.length}',
          AppColors.primaryLight,
          AppColors.primary,
        ),
        tile(Icons.currency_rupee, 'Fee range', range, AppColors.successBg, AppColors.success),
        tile(
          Icons.account_balance_wallet_outlined,
          'Combined total (all classes)',
          formatAmount(total),
          AppColors.amberLight,
          AppColors.amber,
        ),
      ],
    );
  }
}

// ── Panel ────────────────────────────────────────────────────────────────

/// The stage a class belongs to — a presentational heuristic from the class
/// name's number only (the endpoint has no real stage field), so a class
/// with no parseable number, or above 12, goes under "Other Classes".
class _Stage {
  const _Stage(this.key, this.label, this.range, this.fg, this.bg, this.icon, this.test);

  final String key;
  final String label;
  final String? range;
  final Color fg;
  final Color bg;
  final IconData icon;
  final bool Function(int n) test;
}

final _stages = <_Stage>[
  _Stage(
    'primary',
    'Primary',
    'Class 1–5',
    AppColors.primary,
    AppColors.primaryLight,
    Icons.menu_book_outlined,
    (n) => n >= 1 && n <= 5,
  ),
  _Stage(
    'middle',
    'Middle',
    'Class 6–8',
    AppColors.amber,
    AppColors.amberLight,
    Icons.backpack_outlined,
    (n) => n >= 6 && n <= 8,
  ),
  _Stage(
    'senior',
    'Senior Secondary',
    'Class 9–12',
    AppColors.violet,
    AppColors.violetLight,
    Icons.school_outlined,
    (n) => n >= 9 && n <= 12,
  ),
];
final _otherStage = _Stage(
  'other',
  'Other Classes',
  null,
  AppColors.textSecondary,
  AppColors.pageBg,
  Icons.menu_book_outlined,
  (_) => false,
);

int? _classNumber(String? name) {
  final m = RegExp(r'\d+').firstMatch(name ?? '');
  return m == null ? null : int.parse(m.group(0)!);
}

_Stage _stageFor(String? className) {
  final n = _classNumber(className);
  if (n != null) {
    for (final s in _stages) {
      if (s.test(n)) return s;
    }
  }
  return _otherStage;
}

class _FeePanel extends StatelessWidget {
  const _FeePanel({required this.classes});

  final List<AdminClassOption> classes;

  @override
  Widget build(BuildContext context) {
    if (classes.isEmpty) {
      return const SectionCard(
        child: EmptyState(
          icon: Icons.layers_outlined,
          title: 'No classes yet',
          message: 'Classes will appear here once added to your institution.',
        ),
      );
    }
    final sorted = [...classes]
      ..sort((a, b) => (_classNumber(a.className) ?? 1 << 30).compareTo(_classNumber(b.className) ?? 1 << 30));
    final groups = <_Stage, List<AdminClassOption>>{};
    for (final c in sorted) {
      groups.putIfAbsent(_stageFor(c.className), () => []).add(c);
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final stage in [..._stages, _otherStage])
            if (groups[stage] case final rows?) ...[
              Container(
                color: stage.bg,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    Icon(stage.icon, size: 14, color: stage.fg),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Wrap(
                        spacing: 8,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            stage.label,
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: stage.fg),
                          ),
                          if (stage.range != null)
                            Text(stage.range!, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              for (final (i, c) in rows.indexed) ...[
                if (i > 0) const Divider(height: 1, color: AppColors.border),
                _ClassFeeRow(key: ValueKey(c.classId), cls: c, stage: stage),
              ],
            ],
        ],
      ),
    );
  }
}

class _ClassFeeRow extends ConsumerStatefulWidget {
  const _ClassFeeRow({super.key, required this.cls, required this.stage});

  final AdminClassOption cls;
  final _Stage stage;

  @override
  ConsumerState<_ClassFeeRow> createState() => _ClassFeeRowState();
}

class _ClassFeeRowState extends ConsumerState<_ClassFeeRow> {
  late final _controller = TextEditingController(text: widget.cls.registrationFee?.toString() ?? '');
  final _focus = FocusNode();
  bool _saving = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _focus.addListener(() {
      if (!_focus.hasFocus) _save();
    });
  }

  @override
  void dispose() {
    _focus.dispose();
    _controller.dispose();
    super.dispose();
  }

  /// ClassFeeRow.handleBlur: validate, skip when unchanged (compared
  /// numerically — the API returns a Decimal string), otherwise PATCH.
  Future<void> _save() async {
    final draft = _controller.text.trim();
    if (draft.isEmpty) return setState(() => _error = 'Fee is required');
    final next = Decimal.tryParse(draft);
    if (next == null || next < Decimal.zero) return setState(() => _error = 'Enter a valid non-negative amount');
    if (next == (widget.cls.registrationFee ?? Decimal.zero)) return setState(() => _error = null);
    setState(() {
      _error = null;
      _saving = true;
    });
    final res = await AdmissionsService().setClassRegistrationFee(widget.cls.classId, num.parse(draft));
    if (!mounted) return;
    setState(() {
      _saving = false;
      if (res is Err) _error = 'Failed to save. Please try again.';
    });
    if (res is Ok) ref.invalidate(adminClassOptionsProvider);
  }

  @override
  Widget build(BuildContext context) {
    final c = widget.cls;
    final stage = widget.stage;
    final name = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          c.className,
          style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.textPrimary),
        ),
        const SizedBox(height: 4),
        if (c.sections.isEmpty)
          const Text('—', style: TextStyle(color: AppColors.textMuted))
        else
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: [
              for (final s in c.sections)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(color: stage.bg, borderRadius: BorderRadius.circular(6)),
                  child: Text(
                    s.sectionName ?? '',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: stage.fg),
                  ),
                ),
            ],
          ),
      ],
    );
    final field = SizedBox(
      width: 168,
      child: TextField(
        controller: _controller,
        focusNode: _focus,
        enabled: !_saving,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        textInputAction: TextInputAction.done,
        onSubmitted: (_) => _focus.unfocus(),
        decoration: InputDecoration(
          prefixText: '₹ ',
          isDense: true,
          border: const OutlineInputBorder(),
          errorText: _error,
          errorMaxLines: 2,
          suffixIcon: _saving
              ? const Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(width: 14, height: 14, child: CircularProgressIndicator(strokeWidth: 2)),
                )
              : null,
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: name),
          const SizedBox(width: 12),
          field,
        ],
      ),
    );
  }
}
