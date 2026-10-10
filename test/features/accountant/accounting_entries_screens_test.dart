// Renders every accounting entry screen (Accountant Phase 3) at phone,
// portrait-tablet and landscape-tablet sizes with stubbed providers — fails
// on any overflow or build exception — plus the form / action flows.
// Fixture shapes follow live /accountant/accounting/* responses.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/accounting.dart';
import 'package:edusoft_mobile/core/models/accounting_entries.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/accountant/accountant_module.dart';
import 'package:edusoft_mobile/features/accountant/providers/accountant_providers.dart';
import 'package:edusoft_mobile/features/accountant/providers/accounting_entries_providers.dart';
import 'package:edusoft_mobile/features/accountant/providers/accounting_providers.dart';
import 'package:edusoft_mobile/features/accountant/screens/bank_reconciliation_screens.dart';
import 'package:edusoft_mobile/features/accountant/screens/journal_entries_screens.dart';
import 'package:edusoft_mobile/features/accountant/screens/vouchers_screens.dart';

Map<String, dynamic> _acct(String code, String name, String type, {String? subtype}) => {
      'account_id': 'a$code',
      'account_code': code,
      'account_name': name,
      'account_type': type,
      'account_subtype': subtype,
      'opening_balance': 0,
      'is_active': true,
    };

final _coa = [
  LedgerAccount.fromJson(_acct('1001', 'Cash in Hand', 'ASSET', subtype: 'CASH')),
  LedgerAccount.fromJson(_acct('1002', 'Bank Account', 'ASSET', subtype: 'BANK')),
  LedgerAccount.fromJson(_acct('4001', 'Fee Income', 'INCOME')),
  LedgerAccount.fromJson(_acct('5001', 'Salary & Wages', 'EXPENSE')),
];

Map<String, dynamic> _jline(String id, String code, String name, String dr, String cr) => {
      'line_id': id,
      'account_id': 'a$code',
      'debit_amount': dr,
      'credit_amount': cr,
      'line_narration': null,
      'chart_of_accounts': {'account_id': 'a$code', 'account_code': code, 'account_name': name, 'account_type': 'ASSET'},
    };

Map<String, dynamic> _entryJson(String id, {String status = 'POSTED', String type = 'MANUAL'}) => {
      'entry_id': id,
      'entry_date': '2026-10-08T00:00:00.000Z',
      'voucher_no': 'JE-20261008-$id',
      'narration': 'Office supplies bought from the stationery vendor near the main gate',
      'entry_type': type,
      'status': status,
      'reversal_of_entry_id': null,
      'journal_entry_lines': [_jline('l1$id', '5001', 'Salary & Wages', '2500.00', '0'), _jline('l2$id', '1001', 'Cash in Hand', '0', '2500.00')],
    };

final _entries = {
  'draft': JournalEntry.fromJson(_entryJson('draft', status: 'DRAFT')),
  'posted': JournalEntry.fromJson(_entryJson('posted')),
  'system': JournalEntry.fromJson(_entryJson('system', type: 'SYSTEM_FEE_RECEIPT')),
};

final _ref = {'account_id': 'a1001', 'account_code': '1001', 'account_name': 'Cash in Hand', 'account_subtype': 'CASH'};
final _exp = {'account_id': 'a5001', 'account_code': '5001', 'account_name': 'Salary & Wages', 'account_type': 'EXPENSE'};

PaymentVoucher _pv(String status) => PaymentVoucher.fromJson({
      'voucher_id': 'pv-$status',
      'voucher_no': 'PV-20261008-6687',
      'entry_date': '2026-10-08T00:00:00.000Z',
      'payee_type': 'VENDOR',
      'payee_name': 'Reliable Construction Contractors Private Limited',
      'amount': 25000,
      'payment_mode': 'CHEQUE',
      'cheque_no': '000123',
      'purpose': 'Classroom renovation — phase 1',
      'gst_amount': 4500,
      'tds_section': '194C',
      'tds_amount': 500,
      'status': status,
      'cancelled_at': status == 'CANCELLED' ? '2026-10-09T10:00:00.000Z' : null,
      'journal_entries': _entryJson('pvje', type: 'PAYMENT_VOUCHER'),
      'expense_account': _exp,
      'paid_from': _ref,
    });

final _rv = ReceiptVoucher.fromJson({
  'voucher_id': 'rv1',
  'voucher_no': 'RV-20260825-6120',
  'entry_date': '2026-08-25T00:00:00.000Z',
  'payer_type': 'DONOR',
  'payer_name': 'Sharma Foundation Charitable Trust',
  'amount': 15000,
  'payment_mode': 'UPI',
  'utr': 'UTR0000123456',
  'source_description': 'Annual donation for school infrastructure',
  'gst_amount': 1800,
  'journal_entries': _entryJson('rvje', type: 'RECEIPT_VOUCHER'),
  'received_in': _ref,
  'income_account': {'account_id': 'a4001', 'account_code': '4001', 'account_name': 'Fee Income', 'account_type': 'INCOME'},
});

final _note = DebitCreditNote.fromJson({
  'note_id': 'n1',
  'note_no': 'DN-20260825-8491',
  'note_type': 'DEBIT',
  'entry_date': '2026-08-25T00:00:00.000Z',
  'party_type': 'VENDOR',
  'party_name': 'ABC Stationery Suppliers',
  'party_reference': 'INV-2026-0042',
  'amount': 5000,
  'reason': 'Vendor overcharge correction',
  'gst_amount': 900,
  'journal_entries': _entryJson('nje', type: 'DEBIT_CREDIT_NOTE'),
  'debit_account': _ref,
  'credit_account': _exp,
});

Map<String, dynamic> _rline(String id, num dr, num cr) => {
      'line_id': id,
      'entry_id': 'e$id',
      'voucher_no': 'JE-20260824-$id',
      'entry_date': '2026-08-24T00:00:00.000Z',
      'narration': 'Cash deposited into bank by the office assistant',
      'entry_type': 'CONTRA',
      'line_narration': null,
      'debit_amount': dr,
      'credit_amount': cr,
    };

BankReconciliation _recon({bool balanced = false, String status = 'OPEN'}) => BankReconciliation.fromJson({
      'reconciliation_id': 'br1',
      'account_id': 'a1002',
      'as_of_date': '2026-10-10T00:00:00.000Z',
      'bank_statement_balance': 150000,
      'status': status,
      'notes': 'September statement',
      'book_balance': 430065,
      'cleared': {'lines': [_rline('c1', 0, 2000)], 'total_debit': 0, 'total_credit': 2000},
      'outstanding': {'lines': [_rline('o1', 10000, 0), _rline('o2', 0, 1200)], 'deposits_in_transit': 433265, 'outstanding_payments': 1200},
      'adjusted_bank_balance': balanced ? 430065 : 582065,
      'difference': balanced ? 0 : 152000,
      'is_balanced': balanced,
    });

final _reconList = [
  BankReconciliationSummary.fromJson({
    'reconciliation_id': 'br1',
    'account': {'account_id': 'a1002', 'account_code': '1002', 'account_name': 'Bank Account'},
    'as_of_date': '2026-10-10T00:00:00.000Z',
    'bank_statement_balance': 150000,
    'status': 'OPEN',
  }),
];

final _profile = StaffProfile.fromJson({'staff_id': 'st1', 'full_name': 'Test Accountant', 'users': {'username': 'AURA-EMP-0011'}});
final _inbox = NotificationInbox.fromJson({'notifications': [], 'unread_count': 0});

List<Override> _overrides({BankReconciliation? recon}) => [
      shellNotificationsProvider.overrideWith((ref, role) async => _inbox),
      accountantProfileProvider.overrideWith((ref) async => _profile),
      chartOfAccountsProvider.overrideWith((ref) async => _coa),
      journalEntriesProvider.overrideWith((ref, k) async => _entries.values.toList()),
      journalEntryProvider.overrideWith((ref, id) async => _entries[id] ?? _entries['posted']!),
      contraEntriesProvider.overrideWith((ref, k) async => [JournalEntry.fromJson(_entryJson('contra', type: 'CONTRA'))]),
      paymentVouchersProvider.overrideWith((ref, k) async => [_pv('ACTIVE'), _pv('CANCELLED')]),
      paymentVoucherProvider.overrideWith((ref, id) async => _pv(id == 'pv-CANCELLED' ? 'CANCELLED' : 'ACTIVE')),
      receiptVouchersProvider.overrideWith((ref, k) async => [_rv]),
      receiptVoucherProvider.overrideWith((ref, id) async => _rv),
      notesProvider.overrideWith((ref, k) async => [_note]),
      noteProvider.overrideWith((ref, id) async => _note),
      reconciliationsProvider.overrideWith((ref) async => _reconList),
      reconciliationProvider.overrideWith((ref, id) async => recon ?? _recon()),
    ];

const _tall = Size(800, 2600);

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Journal list': () => const JournalEntriesScreen(),
  'Journal detail (draft)': () => const JournalEntryDetailScreen(entryId: 'draft'),
  'Journal detail (posted)': () => const JournalEntryDetailScreen(entryId: 'posted'),
  'New journal entry': () => const NewJournalEntryScreen(),
  'Contra list': () => const ContraEntriesScreen(),
  'Payment voucher list': () => const PaymentVouchersScreen(),
  'Payment voucher detail': () => const PaymentVoucherDetailScreen(voucherId: 'pv-ACTIVE'),
  'New payment voucher': () => const NewPaymentVoucherScreen(),
  'Receipt voucher list': () => const ReceiptVouchersScreen(),
  'Receipt voucher detail': () => const ReceiptVoucherDetailScreen(voucherId: 'rv1'),
  'New receipt voucher': () => const NewReceiptVoucherScreen(),
  'Notes list': () => const NotesScreen(),
  'Note detail': () => const NoteDetailScreen(noteId: 'n1'),
  'New note': () => const NewNoteScreen(),
  'Reconciliation list': () => const BankReconciliationsScreen(),
  'Reconciliation detail': () => const BankReconciliationDetailScreen(reconciliationId: 'br1'),
};

Future<void> _pump(WidgetTester tester, Widget screen, Size size, {List<Override>? overrides}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    ProviderScope(
      overrides: overrides ?? _overrides(),
      child: MaterialApp.router(
        routerConfig: GoRouter(routes: [GoRoute(path: '/', builder: (_, _) => screen), ...AccountantModule().routes()]),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

void main() {
  test('JournalEntry: total, draft / reversible rules', () {
    expect(_entries['posted']!.total.toString(), '2500');
    expect(_entries['draft']!.isDraft, isTrue);
    expect(_entries['posted']!.canReverse, isTrue);
    expect(_entries['system']!.canReverse, isFalse);
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

  testWidgets('Journal detail: draft offers Post; posted manual offers Reverse; system entry neither', (tester) async {
    await _pump(tester, const JournalEntryDetailScreen(entryId: 'draft'), _tall);
    expect(find.text('Post to books'), findsOneWidget);
    expect(find.text('Reverse entry'), findsNothing);
    await _pump(tester, const JournalEntryDetailScreen(entryId: 'posted'), _tall);
    expect(find.text('Reverse entry'), findsOneWidget);
    expect(find.text('Post to books'), findsNothing);
    await _pump(tester, const JournalEntryDetailScreen(entryId: 'system'), _tall);
    expect(find.text('Reverse entry'), findsNothing);
    expect(find.textContaining('Posted automatically by fee receipt'), findsOneWidget);
  });

  testWidgets('Journal detail: Post asks for confirmation', (tester) async {
    await _pump(tester, const JournalEntryDetailScreen(entryId: 'draft'), _tall);
    await tester.tap(find.text('Post to books'));
    await tester.pumpAndSettle();
    expect(find.text('Post JE-20261008-draft?'), findsOneWidget);
  });

  testWidgets('New journal entry: live balance, add / remove lines, validation', (tester) async {
    await _pump(tester, const NewJournalEntryScreen(), _tall);
    expect(find.text('Difference'), findsOneWidget);
    final amounts = find.widgetWithText(TextField, 'Amount');
    await tester.enterText(amounts.at(0), '100');
    await tester.enterText(amounts.at(1), '60');
    await tester.pumpAndSettle();
    expect(find.text('₹40.00'), findsOneWidget); // difference
    await tester.enterText(amounts.at(1), '100');
    await tester.pumpAndSettle();
    expect(find.text('Balanced'), findsOneWidget);
    await tester.tap(find.text('Add line'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextField, 'Amount'), findsNWidgets(3));
    await tester.tap(find.byTooltip('Remove line').last);
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextField, 'Amount'), findsNWidgets(2));
    await tester.tap(find.text('Save as draft'));
    await tester.pumpAndSettle();
    expect(find.text('Enter a narration.'), findsOneWidget);
    await tester.enterText(find.widgetWithText(TextField, 'Narration'), 'Test');
    await tester.tap(find.text('Save as draft'));
    await tester.pumpAndSettle();
    expect(find.text('Line 1: pick an account.'), findsOneWidget);
  });

  testWidgets('Payment voucher: active shows Cancel; cancelled does not', (tester) async {
    await _pump(tester, const PaymentVoucherDetailScreen(voucherId: 'pv-ACTIVE'), _tall);
    expect(find.text('Cancel voucher'), findsOneWidget);
    expect(find.text('TDS 194C'), findsOneWidget);
    await _pump(tester, const PaymentVoucherDetailScreen(voucherId: 'pv-CANCELLED'), _tall);
    expect(find.text('Cancel voucher'), findsNothing);
  });

  testWidgets('New payment voucher: cash/bank only in "Paid from"; validation; cheque field', (tester) async {
    await _pump(tester, const NewPaymentVoucherScreen(), _tall);
    await tester.tap(find.widgetWithText(DropdownButtonFormField<String>, 'Paid from (cash / bank)'));
    await tester.pumpAndSettle();
    expect(find.text('1001 · Cash in Hand').hitTestable(), findsOneWidget);
    expect(find.text('5001 · Salary & Wages').hitTestable(), findsNothing);
    await tester.tapAt(const Offset(5, 5));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ChoiceChip, 'Cheque'));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(TextField, 'Cheque no.'), findsOneWidget);
    await tester.tap(find.text('Post payment'));
    await tester.pumpAndSettle();
    expect(find.text('Enter who was paid, both accounts and an amount above 0.'), findsOneWidget);
  });

  testWidgets('Contra: new-transfer sheet opens', (tester) async {
    await _pump(tester, const ContraEntriesScreen(), _tall);
    await tester.tap(find.text('New transfer'));
    await tester.pumpAndSettle();
    expect(find.text('New transfer (contra)'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Reconciliation: ticking lines shows the bulk action; close is disabled until balanced', (tester) async {
    await _pump(tester, const BankReconciliationDetailScreen(reconciliationId: 'br1'), _tall);
    expect(find.text('Difference'), findsOneWidget);
    final close = tester.widget<FilledButton>(find.ancestor(of: find.text('Close reconciliation'), matching: find.byType(FilledButton)));
    expect(close.onPressed, isNull);
    await tester.tap(find.byType(Checkbox).first);
    await tester.pumpAndSettle();
    expect(find.text('Mark 1 cleared'), findsOneWidget);
    await tester.tap(find.byType(Checkbox).last); // the cleared line
    await tester.pumpAndSettle();
    expect(find.text('Move 1 back'), findsOneWidget);
  });

  testWidgets('Reconciliation: balanced enables Close', (tester) async {
    await _pump(tester, const BankReconciliationDetailScreen(reconciliationId: 'br1'), _tall, overrides: _overrides(recon: _recon(balanced: true)));
    final close = tester.widget<FilledButton>(find.ancestor(of: find.text('Close reconciliation'), matching: find.byType(FilledButton)));
    expect(close.onPressed, isNotNull);
  });

  testWidgets('Reconciliation: a closed one is locked', (tester) async {
    await _pump(tester, const BankReconciliationDetailScreen(reconciliationId: 'br1'), _tall,
        overrides: _overrides(recon: _recon(balanced: true, status: 'RECONCILED')));
    expect(find.text('Close reconciliation'), findsNothing);
    expect(find.text('Reconciled'), findsOneWidget);
  });
}
