import 'package:go_router/go_router.dart';

import '../../core/roles/app_role.dart';
import '../../core/roles/role_module.dart';
import 'screens/accountant_dashboard_screen.dart';
import 'screens/accounting_accounts_screens.dart';
import 'screens/accounting_books_screens.dart';
import 'screens/accounting_statements_screens.dart';
import 'screens/accounting_tax_screens.dart';
import 'screens/bank_reconciliation_screens.dart';
import 'screens/journal_entries_screens.dart';
import 'screens/vouchers_screens.dart';
import 'screens/accountant_library_fines_screen.dart';
import 'screens/accountant_online_payments_screen.dart';
import 'screens/accountant_policy_profile_screens.dart';
import 'screens/accountant_receipts_screen.dart';
import 'screens/collect_fee_screen.dart';

/// Accountant portal — drawer-shell role like Librarian:
///   Phase 1 (fee desk): Dashboard · Collect Fee · Receipts · Online
///   Payments · Library Fines · Late Fee Policy · My Profile
///   Phase 2 (reports): Chart of Accounts · General Ledger · Trial Balance ·
///   Profit & Loss · Balance Sheet · Outstanding · Day/Cash/Bank Book · GST · TDS
///   Phase 3 (entries): Journal · Contra · Payment / Receipt Vouchers ·
///   Debit / Credit Notes · Bank Reconciliation
/// The backend gates every /accountant/* route with authorize("Accountant")
/// and resolves the institution from the JWT.
class AccountantModule implements RoleModule {
  @override
  AppRole get role => AppRole.accountant;

  @override
  String get homePath => '/accountant/home';

  @override
  List<RouteBase> routes() => [
        GoRoute(path: '/accountant/home', builder: (context, state) => const AccountantDashboardScreen()),
        GoRoute(
          path: '/accountant/collect',
          builder: (context, state) => const CollectFeeSearchScreen(),
          routes: [
            GoRoute(
              path: ':studentId',
              builder: (context, state) => CollectFeeScreen(studentId: state.pathParameters['studentId']!),
            ),
          ],
        ),
        GoRoute(
          path: '/accountant/receipts',
          builder: (context, state) => const AccountantReceiptsScreen(),
          routes: [
            GoRoute(
              path: ':receiptId',
              builder: (context, state) => ReceiptDetailScreen(receiptId: state.pathParameters['receiptId']!),
            ),
          ],
        ),
        GoRoute(
          path: '/accountant/online-payments',
          builder: (context, state) => const AccountantOnlinePaymentsScreen(),
          routes: [
            GoRoute(
              path: ':paymentId',
              builder: (context, state) => OnlinePaymentDetailScreen(paymentId: state.pathParameters['paymentId']!),
            ),
          ],
        ),
        GoRoute(path: '/accountant/library-fines', builder: (context, state) => const AccountantLibraryFinesScreen()),
        // Phase 2 — accounting reports (read-only).
        GoRoute(path: '/accountant/chart-of-accounts', builder: (context, state) => const ChartOfAccountsScreen()),
        GoRoute(path: '/accountant/general-ledger', builder: (context, state) => const GeneralLedgerScreen()),
        GoRoute(path: '/accountant/trial-balance', builder: (context, state) => const TrialBalanceScreen()),
        GoRoute(path: '/accountant/profit-and-loss', builder: (context, state) => const ProfitAndLossScreen()),
        GoRoute(path: '/accountant/balance-sheet', builder: (context, state) => const BalanceSheetScreen()),
        GoRoute(path: '/accountant/outstanding', builder: (context, state) => const OutstandingScreen()),
        GoRoute(path: '/accountant/day-book', builder: (context, state) => const DayBookScreen()),
        GoRoute(path: '/accountant/cash-book', builder: (context, state) => const CashBankBookScreen(bank: false)),
        GoRoute(path: '/accountant/bank-book', builder: (context, state) => const CashBankBookScreen(bank: true)),
        GoRoute(path: '/accountant/gst-report', builder: (context, state) => const GstReportScreen()),
        GoRoute(path: '/accountant/tds-report', builder: (context, state) => const TdsReportScreen()),
        // Phase 3 — accounting entries. `new` routes are declared before the
        // `:id` ones so "new" is never read as an id.
        GoRoute(
          path: '/accountant/journal-entries',
          builder: (context, state) => const JournalEntriesScreen(),
          routes: [
            GoRoute(path: 'new', builder: (context, state) => const NewJournalEntryScreen()),
            GoRoute(path: ':id', builder: (context, state) => JournalEntryDetailScreen(entryId: state.pathParameters['id']!)),
          ],
        ),
        GoRoute(path: '/accountant/contra-entries', builder: (context, state) => const ContraEntriesScreen()),
        GoRoute(
          path: '/accountant/payment-vouchers',
          builder: (context, state) => const PaymentVouchersScreen(),
          routes: [
            GoRoute(path: 'new', builder: (context, state) => const NewPaymentVoucherScreen()),
            GoRoute(path: ':id', builder: (context, state) => PaymentVoucherDetailScreen(voucherId: state.pathParameters['id']!)),
          ],
        ),
        GoRoute(
          path: '/accountant/receipt-vouchers',
          builder: (context, state) => const ReceiptVouchersScreen(),
          routes: [
            GoRoute(path: 'new', builder: (context, state) => const NewReceiptVoucherScreen()),
            GoRoute(path: ':id', builder: (context, state) => ReceiptVoucherDetailScreen(voucherId: state.pathParameters['id']!)),
          ],
        ),
        GoRoute(
          path: '/accountant/notes',
          builder: (context, state) => const NotesScreen(),
          routes: [
            GoRoute(path: 'new', builder: (context, state) => const NewNoteScreen()),
            GoRoute(path: ':id', builder: (context, state) => NoteDetailScreen(noteId: state.pathParameters['id']!)),
          ],
        ),
        GoRoute(
          path: '/accountant/bank-reconciliation',
          builder: (context, state) => const BankReconciliationsScreen(),
          routes: [
            GoRoute(
              path: ':id',
              builder: (context, state) => BankReconciliationDetailScreen(reconciliationId: state.pathParameters['id']!),
            ),
          ],
        ),
        GoRoute(path: '/accountant/late-fee-policy', builder: (context, state) => const LateFeePolicyScreen()),
        GoRoute(path: '/accountant/profile', builder: (context, state) => const AccountantProfileScreen()),
      ];

  /// Drawer-style role: no bottom tabs.
  @override
  List<NavTab> tabs() => const [];
}
