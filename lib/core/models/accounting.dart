import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/decimal_json.dart';

part 'accounting.freezed.dart';
part 'accounting.g.dart';

/// Accounting reports (Accountant portal, Phase 2) — shapes verified against
/// live /accountant/accounting/* and /admin/accounting/chart-of-accounts
/// responses. Every report figure is a computed JS number (rounded to 2
/// decimals server-side); [decimalFromJson] keeps them exact.
///
/// Sign conventions (from the services): trial-balance / ledger / book
/// balances are debit − credit (negative = credit balance). P&L and
/// balance-sheet `net` are already signed for their section (income and
/// liabilities positive when credit-heavy).

/// ASSET / LIABILITY / EQUITY / INCOME / EXPENSE.
const accountTypes = ['ASSET', 'LIABILITY', 'EQUITY', 'INCOME', 'EXPENSE'];

/// A chart_of_accounts row (GET /admin/accounting/chart-of-accounts — the
/// Accountant may read it; only School Admin edits).
@freezed
abstract class LedgerAccount with _$LedgerAccount {
  const factory LedgerAccount({
    @JsonKey(name: 'account_id') required String accountId,
    @JsonKey(name: 'account_code') @Default('') String accountCode,
    @JsonKey(name: 'account_name') @Default('') String accountName,
    @JsonKey(name: 'account_type') @Default('') String accountType,

    /// CASH / BANK for the cash-book / bank-book accounts, else usually null.
    @JsonKey(name: 'account_subtype') String? accountSubtype,
    @JsonKey(name: 'parent_account_id') String? parentAccountId,
    @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal openingBalance,

    /// DR / CR.
    @JsonKey(name: 'opening_balance_side') String? openingBalanceSide,
    @JsonKey(name: 'is_system_account') @Default(false) bool isSystemAccount,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _LedgerAccount;

  factory LedgerAccount.fromJson(Map<String, dynamic> json) => _$LedgerAccountFromJson(json);
}

extension LedgerAccountX on LedgerAccount {
  String get label => '$accountCode · $accountName';
}

/// `{ from, to }` — echoes the query (null when not sent).
@freezed
abstract class ReportPeriod with _$ReportPeriod {
  const factory ReportPeriod({String? from, String? to}) = _ReportPeriod;

  factory ReportPeriod.fromJson(Map<String, dynamic> json) => _$ReportPeriodFromJson(json);
}

/// One account's totals — trial balance (`net_balance`), P&L / balance sheet
/// (`net`), outstanding (`net_balance`). Both keys read into [net].
@freezed
abstract class AccountTotalRow with _$AccountTotalRow {
  const factory AccountTotalRow({
    @JsonKey(name: 'account_id') required String accountId,
    @JsonKey(name: 'account_code') @Default('') String accountCode,
    @JsonKey(name: 'account_name') @Default('') String accountName,
    @JsonKey(name: 'account_type') @Default('') String accountType,
    @JsonKey(name: 'account_subtype') String? accountSubtype,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,
    @JsonKey(name: 'net', readValue: _readNet, fromJson: decimalFromJson, toJson: decimalToJson) required Decimal net,
  }) = _AccountTotalRow;

  factory AccountTotalRow.fromJson(Map<String, dynamic> json) => _$AccountTotalRowFromJson(json);
}

Object? _readNet(Map json, String key) => json['net'] ?? json['net_balance'];

/// A titled block of accounts with its total — P&L income/expenses, balance
/// sheet assets/liabilities/equity, outstanding receivables/payables.
@freezed
abstract class AccountGroup with _$AccountGroup {
  const factory AccountGroup({
    String? description,
    @Default([]) List<AccountTotalRow> accounts,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal total,

    /// Balance sheet equity only: the period's P&L folded into equity.
    @JsonKey(name: 'net_income', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? netIncome,
  }) = _AccountGroup;

  factory AccountGroup.fromJson(Map<String, dynamic> json) => _$AccountGroupFromJson(json);
}

/// GET /accountant/accounting/trial-balance?as_of.
@freezed
abstract class TrialBalance with _$TrialBalance {
  const factory TrialBalance({
    @JsonKey(name: 'as_of') String? asOf,
    @Default([]) List<AccountTotalRow> accounts,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,

    /// Total debits equal total credits.
    @JsonKey(name: 'tie_out') @Default(false) bool tieOut,
  }) = _TrialBalance;

  factory TrialBalance.fromJson(Map<String, dynamic> json) => _$TrialBalanceFromJson(json);
}

/// GET /accountant/accounting/reports/profit-and-loss?from&to.
@freezed
abstract class ProfitAndLoss with _$ProfitAndLoss {
  const factory ProfitAndLoss({
    ReportPeriod? period,
    required AccountGroup income,
    required AccountGroup expenses,
    @JsonKey(name: 'net_profit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netProfit,
    @JsonKey(name: 'is_profit') @Default(true) bool isProfit,
  }) = _ProfitAndLoss;

  factory ProfitAndLoss.fromJson(Map<String, dynamic> json) => _$ProfitAndLossFromJson(json);
}

/// GET /accountant/accounting/reports/balance-sheet?as_of.
@freezed
abstract class BalanceSheet with _$BalanceSheet {
  const factory BalanceSheet({
    @JsonKey(name: 'as_of') String? asOf,
    required AccountGroup assets,
    required AccountGroup liabilities,
    required AccountGroup equity,
    @JsonKey(name: 'total_liabilities_and_equity', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal totalLiabilitiesAndEquity,
    @JsonKey(name: 'is_balanced') @Default(false) bool isBalanced,
  }) = _BalanceSheet;

  factory BalanceSheet.fromJson(Map<String, dynamic> json) => _$BalanceSheetFromJson(json);
}

/// GET /accountant/accounting/reports/outstanding?as_of.
@freezed
abstract class OutstandingReport with _$OutstandingReport {
  const factory OutstandingReport({
    @JsonKey(name: 'as_of') String? asOf,
    required AccountGroup receivables,
    required AccountGroup payables,
    @JsonKey(name: 'net_position', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netPosition,
  }) = _OutstandingReport;

  factory OutstandingReport.fromJson(Map<String, dynamic> json) => _$OutstandingReportFromJson(json);
}

/// One posted journal line against a single account — ledger lines and
/// cash/bank book lines (running_balance = debit − credit so far).
@freezed
abstract class BookLine with _$BookLine {
  const factory BookLine({
    @JsonKey(name: 'line_id') String? lineId,
    @JsonKey(name: 'entry_id') String? entryId,
    @JsonKey(name: 'voucher_no') @Default('') String voucherNo,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    String? narration,
    @JsonKey(name: 'entry_type') String? entryType,
    @JsonKey(name: 'line_narration') String? lineNarration,
    @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal debitAmount,
    @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal creditAmount,
    @JsonKey(name: 'running_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal runningBalance,
  }) = _BookLine;

  factory BookLine.fromJson(Map<String, dynamic> json) => _$BookLineFromJson(json);
}

@freezed
abstract class LedgerAccountRef with _$LedgerAccountRef {
  const factory LedgerAccountRef({
    @JsonKey(name: 'account_id') required String accountId,
    @JsonKey(name: 'account_code') @Default('') String accountCode,
    @JsonKey(name: 'account_name') @Default('') String accountName,
    @JsonKey(name: 'account_type') @Default('') String accountType,
    @JsonKey(name: 'account_subtype') String? accountSubtype,
  }) = _LedgerAccountRef;

  factory LedgerAccountRef.fromJson(Map<String, dynamic> json) => _$LedgerAccountRefFromJson(json);
}

/// GET /accountant/accounting/ledger/:accountId?from&to.
@freezed
abstract class LedgerReport with _$LedgerReport {
  const factory LedgerReport({
    required LedgerAccountRef account,
    ReportPeriod? period,
    @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal openingBalance,
    @Default([]) List<BookLine> lines,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,
    @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal closingBalance,
  }) = _LedgerReport;

  factory LedgerReport.fromJson(Map<String, dynamic> json) => _$LedgerReportFromJson(json);
}

/// One cash or bank account inside the cash book / bank book.
@freezed
abstract class BookAccount with _$BookAccount {
  const factory BookAccount({
    @JsonKey(name: 'account_id') required String accountId,
    @JsonKey(name: 'account_code') @Default('') String accountCode,
    @JsonKey(name: 'account_name') @Default('') String accountName,
    @JsonKey(name: 'account_subtype') String? accountSubtype,
    @JsonKey(name: 'opening_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal openingBalance,
    @Default([]) List<BookLine> lines,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,
    @JsonKey(name: 'closing_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal closingBalance,
  }) = _BookAccount;

  factory BookAccount.fromJson(Map<String, dynamic> json) => _$BookAccountFromJson(json);
}

/// GET .../reports/cash-book and .../reports/bank-book?from&to.
@freezed
abstract class CashBankBook with _$CashBankBook {
  const factory CashBankBook({
    ReportPeriod? period,
    @Default([]) List<BookAccount> accounts,
    @JsonKey(name: 'total_opening_balance', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal totalOpeningBalance,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,
    @JsonKey(name: 'total_closing_balance', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal totalClosingBalance,
  }) = _CashBankBook;

  factory CashBankBook.fromJson(Map<String, dynamic> json) => _$CashBankBookFromJson(json);
}

@freezed
abstract class DayBookLine with _$DayBookLine {
  const factory DayBookLine({
    @JsonKey(name: 'account_id') String? accountId,
    @JsonKey(name: 'account_code') @Default('') String accountCode,
    @JsonKey(name: 'account_name') @Default('') String accountName,
    @JsonKey(name: 'account_type') String? accountType,
    @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal debitAmount,
    @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal creditAmount,
    @JsonKey(name: 'line_narration') String? lineNarration,
  }) = _DayBookLine;

  factory DayBookLine.fromJson(Map<String, dynamic> json) => _$DayBookLineFromJson(json);
}

/// One posted voucher in the day book, with all of its lines.
@freezed
abstract class DayBookEntry with _$DayBookEntry {
  const factory DayBookEntry({
    @JsonKey(name: 'entry_id') required String entryId,
    @JsonKey(name: 'voucher_no') @Default('') String voucherNo,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    String? narration,

    /// MANUAL / RECEIPT_VOUCHER / PAYMENT_VOUCHER / CONTRA /
    /// DEBIT_CREDIT_NOTE / SYSTEM_FEE_RECEIPT …
    @JsonKey(name: 'entry_type') @Default('') String entryType,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,
    @Default([]) List<DayBookLine> lines,
  }) = _DayBookEntry;

  factory DayBookEntry.fromJson(Map<String, dynamic> json) => _$DayBookEntryFromJson(json);
}

/// GET .../reports/day-book?from&to.
@freezed
abstract class DayBook with _$DayBook {
  const factory DayBook({
    ReportPeriod? period,
    @Default([]) List<DayBookEntry> entries,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,
  }) = _DayBook;

  factory DayBook.fromJson(Map<String, dynamic> json) => _$DayBookFromJson(json);
}

/// One GST-bearing document — a receipt voucher (output), payment voucher
/// (input) or debit/credit note (adjustment). Their differently-named fields
/// (payer_/payee_/party_, source_description/purpose/reason, voucher_no /
/// note_no) are read into one shape.
@freezed
abstract class GstItem with _$GstItem {
  const factory GstItem({
    @JsonKey(name: 'voucher_no', readValue: _readDocNo) String? documentNo,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    @JsonKey(name: 'party', readValue: _readParty) String? party,
    @JsonKey(name: 'party_type', readValue: _readPartyType) String? partyType,
    @JsonKey(name: 'detail', readValue: _readDetail) String? detail,

    /// DEBIT / CREDIT on adjustment rows.
    @JsonKey(name: 'note_type') String? noteType,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'gst_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal gstAmount,
  }) = _GstItem;

  factory GstItem.fromJson(Map<String, dynamic> json) => _$GstItemFromJson(json);
}

Object? _readDocNo(Map json, String key) => json['voucher_no'] ?? json['note_no'];
Object? _readParty(Map json, String key) => json['payer_name'] ?? json['payee_name'] ?? json['party_name'];
Object? _readPartyType(Map json, String key) => json['payer_type'] ?? json['payee_type'] ?? json['party_type'];
Object? _readDetail(Map json, String key) => json['source_description'] ?? json['purpose'] ?? json['reason'];

@freezed
abstract class GstSection with _$GstSection {
  const factory GstSection({
    String? description,
    @Default([]) List<GstItem> items,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal total,
  }) = _GstSection;

  factory GstSection.fromJson(Map<String, dynamic> json) => _$GstSectionFromJson(json);
}

/// GET .../reports/gst?from&to.
@freezed
abstract class GstReport with _$GstReport {
  const factory GstReport({
    ReportPeriod? period,
    @JsonKey(name: 'output_gst') required GstSection outputGst,
    @JsonKey(name: 'input_gst') required GstSection inputGst,
    @JsonKey(name: 'adjustment_gst') required GstSection adjustmentGst,
    @JsonKey(name: 'net_gst_liability', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netGstLiability,
  }) = _GstReport;

  factory GstReport.fromJson(Map<String, dynamic> json) => _$GstReportFromJson(json);
}

@freezed
abstract class TdsItem with _$TdsItem {
  const factory TdsItem({
    @JsonKey(name: 'voucher_no') @Default('') String voucherNo,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    @JsonKey(name: 'payee_name') String? payeeName,
    @JsonKey(name: 'payee_type') String? payeeType,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'tds_section') String? tdsSection,
    @JsonKey(name: 'tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal tdsAmount,
    String? purpose,
  }) = _TdsItem;

  factory TdsItem.fromJson(Map<String, dynamic> json) => _$TdsItemFromJson(json);
}

/// Payment vouchers grouped by TDS section (`UNSPECIFIED` when blank).
@freezed
abstract class TdsSection with _$TdsSection {
  const factory TdsSection({
    @JsonKey(name: 'tds_section') @Default('UNSPECIFIED') String tdsSection,
    @Default([]) List<TdsItem> items,
    @JsonKey(name: 'total_base_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalBaseAmount,
    @JsonKey(name: 'total_tds_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalTdsAmount,
  }) = _TdsSection;

  factory TdsSection.fromJson(Map<String, dynamic> json) => _$TdsSectionFromJson(json);
}

/// GET .../reports/tds?from&to.
@freezed
abstract class TdsReport with _$TdsReport {
  const factory TdsReport({
    ReportPeriod? period,
    @Default([]) List<TdsSection> sections,
    @JsonKey(name: 'total_tds', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalTds,
  }) = _TdsReport;

  factory TdsReport.fromJson(Map<String, dynamic> json) => _$TdsReportFromJson(json);
}

Decimal? _nullableDecimal(Object? v) => v == null ? null : decimalFromJson(v);
String? _nullableDecimalToJson(Decimal? v) => v?.toString();
