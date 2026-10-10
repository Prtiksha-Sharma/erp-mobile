// Renders every accounting report screen (Accountant Phase 2) at phone,
// portrait-tablet and landscape-tablet sizes with stubbed providers — fails
// on any overflow or build exception. Fixture shapes follow live
// /accountant/accounting/* responses.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/accounting.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/accountant/accountant_module.dart';
import 'package:edusoft_mobile/features/accountant/providers/accountant_providers.dart';
import 'package:edusoft_mobile/features/accountant/providers/accounting_providers.dart';
import 'package:edusoft_mobile/features/accountant/screens/accounting_accounts_screens.dart';
import 'package:edusoft_mobile/features/accountant/screens/accounting_books_screens.dart';
import 'package:edusoft_mobile/features/accountant/screens/accounting_statements_screens.dart';
import 'package:edusoft_mobile/features/accountant/screens/accounting_tax_screens.dart';
import 'package:edusoft_mobile/features/accountant/screens/accounting_widgets.dart';

Map<String, dynamic> _acct(String code, String name, String type, {String? subtype}) => {
      'account_id': 'a$code',
      'institution_id': 'i1',
      'account_code': code,
      'account_name': name,
      'account_type': type,
      'account_subtype': subtype,
      'parent_account_id': null,
      'opening_balance': 0,
      'opening_balance_side': 'DR',
      'is_system_account': subtype != null,
      'is_active': true,
    };

final _coa = [
  LedgerAccount.fromJson(_acct('1001', 'Cash in Hand', 'ASSET', subtype: 'CASH')),
  LedgerAccount.fromJson(_acct('1002', 'Bank Account — State Bank of India, Main Branch', 'ASSET', subtype: 'BANK')),
  LedgerAccount.fromJson(_acct('2001', 'Accounts Payable (Vendor Dues)', 'LIABILITY')),
  LedgerAccount.fromJson(_acct('4001', 'Fee Income', 'INCOME')),
  LedgerAccount.fromJson(_acct('5001', 'Salaries & Wages', 'EXPENSE')),
];

Map<String, dynamic> _row(String code, String name, String type, num dr, num cr, num net) => {
      'account_id': 'a$code',
      'account_code': code,
      'account_name': name,
      'account_type': type,
      'account_subtype': null,
      'total_debit': dr,
      'total_credit': cr,
      'net': net,
      'net_balance': net,
    };

Map<String, dynamic> _line(int n, {num dr = 0, num cr = 0, num bal = 0}) => {
      'line_id': 'l$n',
      'entry_id': 'e$n',
      'entry_date': '2026-07-0${n % 9 + 1}T00:00:00.000Z',
      'voucher_no': 'JE-20260825-${5950 + n}',
      'entry_type': n.isEven ? 'RECEIPT_VOUCHER' : 'PAYMENT_VOUCHER',
      'narration': 'Receipt from a donor with a rather long narration that must wrap nicely',
      'source_module': 'RECEIPT_VOUCHER',
      'line_narration': null,
      'debit_amount': dr,
      'credit_amount': cr,
      'running_balance': bal,
    };

final _ledger = LedgerReport.fromJson({
  'account': {'account_id': 'a1001', 'account_code': '1001', 'account_name': 'Cash in Hand', 'account_type': 'ASSET', 'account_subtype': 'CASH'},
  'period': {'from': '2026-04-01', 'to': '2026-10-10'},
  'opening_balance': 0,
  'lines': [_line(1, dr: 20000, bal: 20000), _line(2, cr: 353800, bal: -333800)],
  'total_debit': 20000,
  'total_credit': 353800,
  'closing_balance': -333800,
});

final _tb = TrialBalance.fromJson({
  'as_of': '2026-10-10',
  'accounts': [
    _row('1001', 'Cash in Hand', 'ASSET', 75516, 353800, -278284),
    _row('4001', 'Fee Income', 'INCOME', 4535, 167500, -162965),
  ],
  'total_debit': 532516,
  'total_credit': 532516,
  'tie_out': true,
});

final _pl = ProfitAndLoss.fromJson({
  'period': {'from': '2026-04-01', 'to': '2026-10-10'},
  'income': {'accounts': [_row('4001', 'Fee Income', 'INCOME', 4535, 167500, 162965)], 'total': 157965},
  'expenses': {'accounts': [_row('5001', 'Salaries & Wages', 'EXPENSE', 4184, 0, 4184)], 'total': 4184},
  'net_profit': 153781,
  'is_profit': true,
});

final _bs = BalanceSheet.fromJson({
  'as_of': '2026-10-10',
  'assets': {'accounts': [_row('1002', 'Bank Account', 'ASSET', 433265, 3200, 430065)], 'total': 153781},
  'liabilities': {'accounts': [], 'total': 0},
  'equity': {'accounts': [], 'total_accounts': 0, 'net_income': 153781, 'total': 153781},
  'total_liabilities_and_equity': 153781,
  'is_balanced': true,
});

final _outstanding = OutstandingReport.fromJson({
  'as_of': '2026-10-10',
  'receivables': {'description': 'Non-cash/bank asset accounts with a net debit balance — amounts owed to the institution', 'accounts': [_row('1003', 'Accounts Receivable (Fee Dues)', 'ASSET', 5000, 0, 5000)], 'total': 5000},
  'payables': {'description': 'Liability accounts with a net credit balance', 'accounts': [], 'total': 0},
  'net_position': 5000,
});

final _dayBook = DayBook.fromJson({
  'period': {'from': '2026-04-01', 'to': '2026-10-10'},
  'entries': [
    for (final t in ['RECEIPT_VOUCHER', 'PAYMENT_VOUCHER', 'MANUAL'])
      {
        'entry_id': 'e$t',
        'voucher_no': 'JE-20260825-$t',
        'entry_date': '2026-07-01T00:00:00.000Z',
        'narration': 'Receipt from TB Test Donor',
        'entry_type': t,
        'source_module': t,
        'source_reference_id': 'x',
        'total_debit': 20000,
        'total_credit': 20000,
        'lines': [
          {'account_id': 'a1001', 'account_code': '1001', 'account_name': 'Cash in Hand', 'account_type': 'ASSET', 'debit_amount': 20000, 'credit_amount': 0},
          {'account_id': 'a4001', 'account_code': '4001', 'account_name': 'Fee Income', 'account_type': 'INCOME', 'debit_amount': 0, 'credit_amount': 20000},
        ],
      },
  ],
  'total_debit': 60000,
  'total_credit': 60000,
});

CashBankBook _book(String subtype) => CashBankBook.fromJson({
      'period': {'from': '2026-04-01', 'to': '2026-10-10'},
      'accounts': [
        {
          'account_id': 'a1',
          'account_code': subtype == 'CASH' ? '1001' : '1002',
          'account_name': subtype == 'CASH' ? 'Cash in Hand' : 'Bank Account — State Bank of India, Main Branch',
          'account_subtype': subtype,
          'opening_balance': 0,
          'lines': [_line(1, dr: 20000, bal: 20000), _line(2, cr: 5000, bal: 15000)],
          'total_debit': 20000,
          'total_credit': 5000,
          'closing_balance': 15000,
        },
      ],
      'total_opening_balance': 0,
      'total_debit': 20000,
      'total_credit': 5000,
      'total_closing_balance': 15000,
    });

final _gst = GstReport.fromJson({
  'period': {'from': '2026-04-01', 'to': '2026-10-10'},
  'output_gst': {
    'description': 'GST collected on income received (receipt vouchers)',
    'items': [
      {'voucher_no': 'RV-20260825-8231', 'entry_date': '2026-08-25T00:00:00.000Z', 'payer_name': 'Sharma Foundation Charitable Trust', 'payer_type': 'DONOR', 'amount': 15000, 'gst_amount': 1800, 'source_description': 'Annual donation for school infrastructure'},
    ],
    'total': 1800,
  },
  'input_gst': {'description': 'GST paid on purchases (payment vouchers)', 'items': [], 'total': 0},
  'adjustment_gst': {
    'description': 'GST on debit / credit notes',
    'items': [
      {'note_no': 'DN-20260825-8491', 'note_type': 'DEBIT', 'entry_date': '2026-08-25T00:00:00.000Z', 'party_name': 'ABC Stationery Suppliers', 'party_type': 'VENDOR', 'amount': 5000, 'gst_amount': 900, 'reason': 'Vendor overcharge correction'},
    ],
    'total': 900,
  },
  'net_gst_liability': 1800,
});

final _tds = TdsReport.fromJson({
  'period': {'from': '2026-04-01', 'to': '2026-10-10'},
  'sections': [
    {
      'tds_section': '194C',
      'items': [
        {'voucher_no': 'PV-20260901-1111', 'entry_date': '2026-09-01T00:00:00.000Z', 'payee_name': 'Reliable Construction Contractors Pvt Ltd', 'payee_type': 'VENDOR', 'amount': 100000, 'tds_section': '194C', 'tds_amount': 2000, 'purpose': 'Classroom renovation'},
      ],
      'total_base_amount': 100000,
      'total_tds_amount': 2000,
    },
  ],
  'total_tds': 2000,
});

final _profile = StaffProfile.fromJson({'staff_id': 'st1', 'full_name': 'Test Accountant', 'users': {'username': 'AURA-EMP-0011'}});
final _inbox = NotificationInbox.fromJson({'notifications': [], 'unread_count': 0});

List<Override> get _overrides => [
      shellNotificationsProvider.overrideWith((ref, role) async => _inbox),
      accountantProfileProvider.overrideWith((ref) async => _profile),
      chartOfAccountsProvider.overrideWith((ref) async => _coa),
      ledgerProvider.overrideWith((ref, k) async => _ledger),
      trialBalanceProvider.overrideWith((ref, k) async => _tb),
      profitAndLossProvider.overrideWith((ref, k) async => _pl),
      balanceSheetProvider.overrideWith((ref, k) async => _bs),
      outstandingProvider.overrideWith((ref, k) async => _outstanding),
      dayBookProvider.overrideWith((ref, k) async => _dayBook),
      cashBookProvider.overrideWith((ref, k) async => _book('CASH')),
      bankBookProvider.overrideWith((ref, k) async => _book('BANK')),
      gstReportProvider.overrideWith((ref, k) async => _gst),
      tdsReportProvider.overrideWith((ref, k) async => _tds),
    ];

/// Flow tests use a tall view so the lazily-built list renders every section.
const _tall = Size(800, 2600);

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Chart of accounts': () => const ChartOfAccountsScreen(),
  'General ledger': () => const GeneralLedgerScreen(),
  'Trial balance': () => const TrialBalanceScreen(),
  'Profit & loss': () => const ProfitAndLossScreen(),
  'Balance sheet': () => const BalanceSheetScreen(),
  'Outstanding': () => const OutstandingScreen(),
  'Day book': () => const DayBookScreen(),
  'Cash book': () => const CashBankBookScreen(bank: false),
  'Bank book': () => const CashBankBookScreen(bank: true),
  'GST': () => const GstReportScreen(),
  'TDS': () => const TdsReportScreen(),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: _overrides,
      child: MaterialApp.router(
        routerConfig: GoRouter(routes: [GoRoute(path: '/', builder: (_, _) => screen), ...AccountantModule().routes()]),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  group('helpers', () {
    test('drCr shows the side of a debit − credit balance', () {
      expect(drCr(_tb.accounts.first.net), '₹2,78,284.00 Cr');
      expect(drCr(_ledger.lines.first.runningBalance), '₹20,000.00 Dr');
    });

    test('financial year starts on 1 April', () {
      final fy = financialYearToDate();
      expect(fy.start.month, 4);
      expect(fy.start.day, 1);
      expect(fy.start.isAfter(fy.end), isFalse);
    });
  });

  for (final size in _sizes.entries) {
    group(size.key, () {
      for (final screen in _screens.entries) {
        testWidgets('${screen.key} renders without overflow', (tester) async {
          await _pump(tester, screen.value(), size.value);
          expect(tester.takeException(), isNull);
        });
      }
    });
  }

  testWidgets('General ledger defaults to the cash account and shows Dr/Cr balances', (tester) async {
    await _pump(tester, const GeneralLedgerScreen(), _tall);
    expect(find.text('1001 · Cash in Hand'), findsOneWidget);
    expect(find.text('₹3,33,800.00 Cr'), findsWidgets); // closing balance
    expect(find.text('2 entries'), findsOneWidget);
  });

  testWidgets('Trial balance shows the tie-out badge', (tester) async {
    await _pump(tester, const TrialBalanceScreen(), _tall);
    expect(find.text('Balanced'), findsOneWidget);
    expect(find.text('₹2,78,284.00 Cr'), findsOneWidget);
  });

  testWidgets('Profit & loss shows net profit; balance sheet folds net income into equity', (tester) async {
    await _pump(tester, const ProfitAndLossScreen(), _tall);
    expect(find.text('Net profit'), findsOneWidget);
    expect(find.text('₹1,53,781.00'), findsWidgets);
    await _pump(tester, const BalanceSheetScreen(), _tall);
    expect(find.text('Net income (current period)'), findsOneWidget);
  });

  testWidgets('Day book: type chips filter and an entry expands to its lines', (tester) async {
    await _pump(tester, const DayBookScreen(), _tall);
    await tester.tap(find.widgetWithText(ChoiceChip, 'Journal'));
    await tester.pumpAndSettle();
    expect(find.text('JE-20260825-MANUAL'), findsOneWidget);
    expect(find.text('JE-20260825-RECEIPT_VOUCHER'), findsNothing);
    await tester.tap(find.text('JE-20260825-MANUAL'));
    await tester.pumpAndSettle();
    expect(find.text('4001 · Fee Income'), findsOneWidget);
  });

  testWidgets('Period chip offers presets', (tester) async {
    await _pump(tester, const GstReportScreen(), _tall);
    await tester.tap(find.byType(PeriodChip));
    await tester.pumpAndSettle();
    expect(find.text('This financial year'), findsOneWidget);
    expect(find.text('Last financial year'), findsOneWidget);
    await tester.tap(find.text('This month'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('GST reads payer/party names and shows net payable', (tester) async {
    await _pump(tester, const GstReportScreen(), _tall);
    expect(find.text('Sharma Foundation Charitable Trust'), findsOneWidget);
    expect(find.text('ABC Stationery Suppliers'), findsOneWidget);
    expect(find.text('Net GST payable'), findsOneWidget);
  });
}
