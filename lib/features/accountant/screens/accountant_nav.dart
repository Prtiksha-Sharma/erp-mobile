import 'package:flutter/material.dart';

import '../../../core/shell/app_nav_item.dart';

/// The accountant drawer — fee desk, transactions (vouchers / journal /
/// reconciliation) and the accounting reports, grouped like the web's
/// ACCOUNTANT_NAV.
const accountantNavSections = <AppNavSection>[
  AppNavSection(items: [AppNavItem(label: 'Dashboard', icon: Icons.dashboard_outlined, path: '/accountant/home')]),
  AppNavSection(
    title: 'Fees',
    items: [
      AppNavItem(label: 'Collect Fee', icon: Icons.point_of_sale_outlined, path: '/accountant/collect'),
      AppNavItem(label: 'Receipts', icon: Icons.receipt_long_outlined, path: '/accountant/receipts'),
      AppNavItem(label: 'Online Payments', icon: Icons.account_balance_wallet_outlined, path: '/accountant/online-payments'),
      AppNavItem(label: 'Library Fines', icon: Icons.local_library_outlined, path: '/accountant/library-fines'),
    ],
  ),
  AppNavSection(
    title: 'Transactions',
    items: [
      AppNavItem(label: 'Journal Entries', icon: Icons.edit_note_outlined, path: '/accountant/journal-entries'),
      AppNavItem(label: 'Contra Entries', icon: Icons.swap_horiz_outlined, path: '/accountant/contra-entries'),
      AppNavItem(label: 'Payment Vouchers', icon: Icons.outbox_outlined, path: '/accountant/payment-vouchers'),
      AppNavItem(label: 'Receipt Vouchers', icon: Icons.move_to_inbox_outlined, path: '/accountant/receipt-vouchers'),
      AppNavItem(label: 'Debit / Credit Notes', icon: Icons.note_alt_outlined, path: '/accountant/notes'),
      AppNavItem(label: 'Bank Reconciliation', icon: Icons.fact_check_outlined, path: '/accountant/bank-reconciliation'),
    ],
  ),
  AppNavSection(
    title: 'Accounts',
    items: [
      AppNavItem(label: 'Chart of Accounts', icon: Icons.account_tree_outlined, path: '/accountant/chart-of-accounts'),
      AppNavItem(label: 'General Ledger', icon: Icons.menu_book_outlined, path: '/accountant/general-ledger'),
      AppNavItem(label: 'Trial Balance', icon: Icons.balance_outlined, path: '/accountant/trial-balance'),
    ],
  ),
  AppNavSection(
    title: 'Statements',
    items: [
      AppNavItem(label: 'Profit & Loss', icon: Icons.trending_up, path: '/accountant/profit-and-loss'),
      AppNavItem(label: 'Balance Sheet', icon: Icons.account_balance_outlined, path: '/accountant/balance-sheet'),
      AppNavItem(label: 'Outstanding', icon: Icons.pending_actions_outlined, path: '/accountant/outstanding'),
    ],
  ),
  AppNavSection(
    title: 'Books',
    items: [
      AppNavItem(label: 'Day Book', icon: Icons.today_outlined, path: '/accountant/day-book'),
      AppNavItem(label: 'Cash Book', icon: Icons.payments_outlined, path: '/accountant/cash-book'),
      AppNavItem(label: 'Bank Book', icon: Icons.account_balance_wallet_outlined, path: '/accountant/bank-book'),
    ],
  ),
  AppNavSection(
    title: 'Tax',
    items: [
      AppNavItem(label: 'GST Report', icon: Icons.request_quote_outlined, path: '/accountant/gst-report'),
      AppNavItem(label: 'TDS Report', icon: Icons.receipt_outlined, path: '/accountant/tds-report'),
    ],
  ),
  AppNavSection(
    title: 'Account',
    items: [
      AppNavItem(label: 'Late Fee Policy', icon: Icons.rule_outlined, path: '/accountant/late-fee-policy'),
      AppNavItem(label: 'My Profile', icon: Icons.person_outline, path: '/accountant/profile'),
    ],
  ),
];
