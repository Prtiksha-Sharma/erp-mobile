// Renders every accountant (Phase 1) screen at phone, portrait-tablet and
// landscape-tablet sizes with stubbed providers — Flutter fails a widget
// test on any RenderFlex overflow or build exception. Fixture shapes are
// copied from live /accountant/* responses.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

import 'package:edusoft_mobile/core/models/accountant.dart';
import 'package:edusoft_mobile/core/models/app_notification.dart';
import 'package:edusoft_mobile/core/models/library.dart';
import 'package:edusoft_mobile/core/models/staff_profile.dart';
import 'package:edusoft_mobile/core/roles/app_role.dart';
import 'package:edusoft_mobile/core/roles/role_registry.dart';
import 'package:edusoft_mobile/core/shell/shell_notifications_provider.dart';
import 'package:edusoft_mobile/features/accountant/accountant_module.dart';
import 'package:edusoft_mobile/features/accountant/providers/accountant_providers.dart';
import 'package:edusoft_mobile/features/accountant/screens/accountant_dashboard_screen.dart';
import 'package:edusoft_mobile/features/accountant/screens/accountant_library_fines_screen.dart';
import 'package:edusoft_mobile/features/accountant/screens/accountant_online_payments_screen.dart';
import 'package:edusoft_mobile/features/accountant/screens/accountant_policy_profile_screens.dart';
import 'package:edusoft_mobile/features/accountant/screens/accountant_receipts_screen.dart';
import 'package:edusoft_mobile/features/accountant/screens/collect_fee_screen.dart';

// ── Fixtures ────────────────────────────────────────────────────────────

final _dashboard = AccountantDashboard.fromJson({
  'todays_collection': 125000.5,
  'this_month_collection': 1234567.75,
  'pending_fees_amount': 9876543,
  'students_with_pending_fees': 128,
  'pending_library_fines': 450,
  'pending_online_payments': 2,
  'failed_online_payments': 5,
});

final _profile = StaffProfile.fromJson({
  'staff_id': 'st1',
  'employee_code': 'AURA-EMP-0011',
  'full_name': 'Test Accountant With A Long Name',
  'designation': 'Senior Accountant',
  'department': 'Finance',
  'contact_number': '9876543210',
  'address': '12 MG Road, Pune',
  'profile_photo_url': null,
  'users': {'username': 'AURA-EMP-0011', 'email': 'accounts@example.com', 'mobile_no': '9876543210'},
});

const _studentJson = {
  'student_id': 's1',
  'admission_no': 'ADM-2026-44702',
  'roll_no': '12',
  'student_status': 'ACTIVE',
  'current_class': {'class_id': 'c1', 'class_name': 'Class 10'},
  'current_section': {'section_id': 'x1', 'section_name': 'A'},
  'applicants': {'first_name': 'Aishwarya-Lakshmi', 'last_name': 'Venkataraman-Subramanian'},
};

Map<String, dynamic> _receiptJson(int n, {String status = 'PAID', String mode = 'CASH'}) => {
      'receipt_id': 'r$n',
      'receipt_no': 'RCPT-20261010-${1000 + n}',
      'student_id': 's1',
      'receipt_date': '2026-10-10T00:00:00.000Z',
      'total_amount': '12500.00',
      'discount_amount': '500.00',
      'fine_amount': '250.00',
      'net_amount': '12250.00',
      'payment_mode': mode,
      'receipt_status': status,
      'remarks': status == 'REFUNDED' ? '[REFUNDED 2026-10-10T10:00:00.000Z: Duplicate payment]' : null,
      'cancelled_at': status == 'CANCELLED' ? '2026-10-10T10:00:00.000Z' : null,
      'students': {
        'student_id': 's1',
        'admission_no': 'ADM-2026-44702',
        'applicants': {'first_name': 'Aishwarya-Lakshmi', 'last_name': 'Venkataraman-Subramanian'},
      },
      'classes': {'class_id': 'c1', 'class_name': 'Class 10'},
      'student_fee_receipt_items': [
        {'receipt_item_id': 'i1', 'fee_head_name': 'Tuition Fee — Term 2', 'amount': '10000.00', 'discount_amount': '500.00', 'fine_amount': '250.00', 'net_amount': '9750.00'},
        {'receipt_item_id': 'i2', 'fee_head_name': 'Transport Fee', 'amount': '2500.00', 'discount_amount': '0.00', 'fine_amount': '0.00', 'net_amount': '2500.00'},
      ],
    };

final _receipts = [
  AcctReceipt.fromJson(_receiptJson(1)),
  AcctReceipt.fromJson(_receiptJson(2, status: 'CANCELLED', mode: 'UPI')),
  AcctReceipt.fromJson(_receiptJson(3, status: 'REFUNDED')),
];

final _summary = FeeCollectionSummary.fromJson({
  'student': _studentJson,
  'fee_category': {'fee_category_id': 'fc1', 'category_name': 'General'},
  'scholarships': [
    {
      'student_concession_id': 'sc1',
      'valid_from': '2026-04-01T00:00:00.000Z',
      'fee_concessions': {'name': 'Sibling discount', 'concession_type': 'SCHOLARSHIP', 'calculation_type': 'PERCENTAGE', 'value': '10.00'},
    },
  ],
  'previous_payments': [_receiptJson(1)],
  'pending_items': [
    {
      'fee_structure_id': 'fs1',
      'fee_head_id': 'fh1',
      'fee_head_name': 'Tuition Fee — Term 2',
      'due_date': '2026-09-15T00:00:00.000Z',
      'amount': 10000,
      'concession_amount': 1000,
      'paid_amount': 2000,
      'net_due': 7000,
      'status': 'OVERDUE',
      'suggested_fine_amount': 250,
    },
    {
      'fee_structure_id': null,
      'fee_head_id': 'fh2',
      'fee_head_name': 'Transport Fee',
      'due_date': null,
      'amount': 3000,
      'concession_amount': 0,
      'paid_amount': 0,
      'net_due': 3000,
      'status': 'DUE',
      'suggested_fine_amount': 0,
    },
    {
      'fee_structure_id': 'fs3',
      'fee_head_id': 'fh3',
      'fee_head_name': 'Admission Fee',
      'due_date': '2026-04-01T00:00:00.000Z',
      'amount': 5000,
      'concession_amount': 0,
      'paid_amount': 5000,
      'net_due': 0,
      'status': 'PAID',
      'suggested_fine_amount': 0,
    },
  ],
  'total_due': 10000,
  'fee_plans': [],
});

final _payments = [
  for (final s in ['Success', 'Failed', 'Pending'])
    AcctOnlinePayment.fromJson({
      'payment_id': 'p$s',
      'student_id': 's1',
      'items_snapshot': [
        {'amount': 5000, 'status': 'DUE', 'net_due': 4000, 'due_date': '2026-08-15T00:00:00.000Z', 'fee_head_name': 'Transport Fee', 'paid_amount': 0, 'concession_amount': 1000},
      ],
      'transaction_id': 'TXN-PHONEPE-0000000000123456789',
      'gateway_name': 'PhonePe',
      'payment_method': null,
      'amount': '4000.00',
      'currency': 'INR',
      'payment_status': s,
      'payment_date': s == 'Success' ? '2026-10-09T08:30:00.000Z' : null,
      'receipt_id': s == 'Success' ? 'r1' : null,
      'created_at': '2026-10-09T08:29:00.000Z',
      'students': _studentJson,
      'parent_accounts': {
        'parent_account_id': 'pa1',
        'parents': {'first_name': 'Ravishankar', 'last_name': 'Venkataraman', 'mobile_no': '9876543210', 'email': 'ravi@example.com'},
      },
    }),
];

final _bookRef = {'book_id': 'b1', 'title': 'Introduction to Algorithms, Third Edition', 'accession_no': 'ACC-1'};
final _issueStudent = {
  'student_id': 's1',
  'admission_no': 'ADM-2026-44702',
  'applicants': {'first_name': 'Aishwarya', 'last_name': 'Venkataraman'},
};

final _pendingFines = PendingFines.fromJson({
  'returned_unpaid': [
    {'fine_id': 'f1', 'issue_id': 'is1', 'fine_amount': '40.00', 'returned_at': '2026-10-01T10:00:00.000Z', 'books': _bookRef, 'students': _issueStudent},
  ],
  'still_issued_overdue': [
    {'issue_id': 'is2', 'status': 'ISSUED', 'due_date': '2026-09-20T00:00:00.000Z', 'overdue_days': 20, 'fine_amount': 40, 'books': _bookRef, 'students': _issueStudent},
  ],
});

final _fineHistory = [
  FineRecord.fromJson({
    'fine_id': 'f1',
    'issue_id': 'is1',
    'fine_amount': '40.00',
    'fine_paid': true,
    'fine_paid_at': '2026-10-02T10:00:00.000Z',
    'created_at': '2026-10-01T10:00:00.000Z',
    'book_issues': {'books': _bookRef, 'students': _issueStudent},
  }),
];

final _lateFee = FeeLateFeeSettings.fromJson({'rate_per_day': 10, 'grace_period_days': 5, 'max_fine_per_item': 500, 'updated_at': '2026-09-01T00:00:00.000Z'});

final _inbox = NotificationInbox.fromJson({'notifications': [], 'unread_count': 0});

List<Override> _overrides({List<AcctReceipt>? receipts}) => [
      shellNotificationsProvider.overrideWith((ref, role) async => _inbox),
      accountantProfileProvider.overrideWith((ref) async => _profile),
      accountantDashboardProvider.overrideWith((ref) async => _dashboard),
      lateFeeSettingsProvider.overrideWith((ref) async => _lateFee),
      accountantStudentSearchProvider.overrideWith((ref, q) async => [AcctStudent.fromJson(_studentJson)]),
      feeCollectionSummaryProvider.overrideWith((ref, id) async => _summary),
      receiptsProvider.overrideWith((ref, q) async => receipts ?? _receipts),
      receiptDetailProvider.overrideWith((ref, id) async => _receipts.firstWhere((r) => r.receiptId == id, orElse: () => _receipts.first)),
      onlinePaymentsProvider.overrideWith((ref, q) async => _payments),
      onlinePaymentDetailProvider.overrideWith((ref, id) async => _payments.first),
      pendingLibraryFinesProvider.overrideWith((ref) async => _pendingFines),
      libraryFineHistoryProvider.overrideWith((ref) async => _fineHistory),
    ];

/// Flow tests use a tall view so the lazily-built list renders every section.
const _tall = Size(800, 2600);

const _sizes = {
  'phone (360x780)': Size(360, 780),
  'tablet portrait (800x1280)': Size(800, 1280),
  'tablet landscape (1280x800)': Size(1280, 800),
};

final _screens = <String, Widget Function()>{
  'Dashboard': () => const AccountantDashboardScreen(),
  'Collect fee search': () => const CollectFeeSearchScreen(),
  'Collect fee': () => const CollectFeeScreen(studentId: 's1'),
  'Receipts': () => const AccountantReceiptsScreen(),
  'Receipt detail (paid)': () => const ReceiptDetailScreen(receiptId: 'r1'),
  'Receipt detail (refunded)': () => const ReceiptDetailScreen(receiptId: 'r3'),
  'Online payments': () => const AccountantOnlinePaymentsScreen(),
  'Online payment detail': () => const OnlinePaymentDetailScreen(paymentId: 'pSuccess'),
  'Library fines': () => const AccountantLibraryFinesScreen(),
  'Late fee policy': () => const LateFeePolicyScreen(),
  'Profile': () => const AccountantProfileScreen(),
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
  test('the backend "Accountant" role maps to the accountant module', () {
    expect(AppRole.fromBackendName('Accountant'), AppRole.accountant);
    expect(roleRegistry[AppRole.accountant], isA<AccountantModule>());
    expect(roleRegistry[AppRole.accountant]!.homePath, '/accountant/home');
  });

  for (final size in _sizes.entries) {
    group(size.key, () {
      for (final screen in _screens.entries) {
        testWidgets('${screen.key} renders without overflow', (tester) async {
          await _pump(tester, screen.value(), size.value);
          expect(tester.takeException(), isNull);
        });
      }

      testWidgets('Collect fee: ticking a line opens its fields without overflow', (tester) async {
        await _pump(tester, const CollectFeeScreen(studentId: 's1'), size.value);
        await tester.tap(find.byType(Checkbox).first);
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
        expect(find.text('Late fee'), findsOneWidget);
      });
    });
  }

  testWidgets('Collect fee: paid lines are hidden; ticking sums amount + late fee', (tester) async {
    await _pump(tester, const CollectFeeScreen(studentId: 's1'), _tall);
    expect(find.text('Admission Fee'), findsNothing); // net_due 0
    expect(find.text('Select fees to collect'), findsOneWidget);
    await tester.tap(find.byType(Checkbox).first); // Tuition: 7000 due + 250 suggested late fee
    await tester.pumpAndSettle();
    expect(find.text('Collect ₹7,250.00'), findsOneWidget);
    await tester.tap(find.byType(Checkbox).last); // + Transport 3000
    await tester.pumpAndSettle();
    expect(find.text('Collect ₹10,250.00'), findsOneWidget);
  });

  testWidgets('Collect fee: editing the discount updates the total; over-discount is flagged', (tester) async {
    await _pump(tester, const CollectFeeScreen(studentId: 's1'), _tall);
    await tester.tap(find.byType(Checkbox).first);
    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextField, 'Discount'), '1000');
    await tester.pumpAndSettle();
    expect(find.text('Collect ₹6,250.00'), findsOneWidget);
    await tester.enterText(find.widgetWithText(TextField, 'Discount'), '9000');
    await tester.pumpAndSettle();
    expect(find.text('Discount is more than the amount'), findsOneWidget);
  });

  testWidgets('Collect fee: confirm dialog summarises before posting', (tester) async {
    await _pump(tester, const CollectFeeScreen(studentId: 's1'), _tall);
    await tester.tap(find.byType(Checkbox).last);
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ChoiceChip, 'UPI'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Collect ₹3,000.00'));
    await tester.tap(find.text('Collect ₹3,000.00'));
    await tester.pumpAndSettle();
    expect(find.text('Collect this payment?'), findsOneWidget);
    expect(find.textContaining('₹3,000.00 from Aishwarya-Lakshmi Venkataraman-Subramanian by UPI'), findsOneWidget);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
  });

  testWidgets('Collect fee: other charge is added and selected', (tester) async {
    await _pump(tester, const CollectFeeScreen(studentId: 's1'), _tall);
    await tester.tap(find.text('Other charge'));
    await tester.pumpAndSettle();
    await tester.enterText(find.widgetWithText(TextField, 'Charge for'), 'ID card');
    await tester.enterText(find.widgetWithText(TextField, 'Amount'), '150');
    await tester.tap(find.text('Add'));
    await tester.pumpAndSettle();
    expect(find.text('ID card'), findsOneWidget);
    expect(find.text('Collect ₹150.00'), findsOneWidget);
  });

  testWidgets('Receipts: status chips filter on the device; paid total ignores cancelled', (tester) async {
    await _pump(tester, const AccountantReceiptsScreen(), _tall);
    expect(find.text('3 receipts'), findsOneWidget);
    expect(find.text('Paid ₹12,250.00'), findsOneWidget);
    await tester.tap(find.widgetWithText(ChoiceChip, 'Cancelled'));
    await tester.pumpAndSettle();
    expect(find.text('1 receipt'), findsOneWidget);
  });

  testWidgets('Receipts: empty range shows the empty state', (tester) async {
    await _pump(tester, const AccountantReceiptsScreen(), _tall, overrides: _overrides(receipts: const []));
    expect(find.text('No receipts'), findsOneWidget);
  });

  testWidgets('Receipt detail: paid shows refund/cancel; refund needs a reason', (tester) async {
    await _pump(tester, const ReceiptDetailScreen(receiptId: 'r1'), _tall);
    await tester.ensureVisible(find.text('Refund'));
    await tester.tap(find.text('Refund'));
    await tester.pumpAndSettle();
    expect(find.text('Refund RCPT-20261010-1001'), findsOneWidget);
    await tester.tap(find.widgetWithText(FilledButton, 'Refund'));
    await tester.pumpAndSettle();
    expect(find.text('A refund reason is required.'), findsOneWidget);
  });

  testWidgets('Receipt detail: cancel asks for confirmation', (tester) async {
    await _pump(tester, const ReceiptDetailScreen(receiptId: 'r1'), _tall);
    await tester.ensureVisible(find.text('Cancel receipt'));
    await tester.tap(find.text('Cancel receipt'));
    await tester.pumpAndSettle();
    expect(find.text('Cancel receipt RCPT-20261010-1001?'), findsOneWidget);
  });

  testWidgets('Receipt detail: a refunded receipt has no actions', (tester) async {
    await _pump(tester, const ReceiptDetailScreen(receiptId: 'r3'), _tall);
    expect(find.text('Refund'), findsNothing);
    expect(find.text('Cancel receipt'), findsNothing);
    expect(find.text('Refunded'), findsOneWidget);
  });

  testWidgets('Library fines: history tab', (tester) async {
    await _pump(tester, const AccountantLibraryFinesScreen(), _tall);
    await tester.tap(find.text('History'));
    await tester.pumpAndSettle();
    expect(find.text('Paid'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
