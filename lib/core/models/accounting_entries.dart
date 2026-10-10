import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/decimal_json.dart';
import 'accounting.dart';

part 'accounting_entries.freezed.dart';
part 'accounting_entries.g.dart';

/// Accounting entries (Accountant portal, Phase 3) — shapes verified
/// against live /accountant/accounting/* responses. Journal line amounts are
/// raw Prisma Decimals (JSON strings); voucher / note / reconciliation
/// amounts are already numbers — [decimalFromJson] takes both.

/// payment_vouchers.service.js PAYEE_TYPES.
const payeeTypes = ['VENDOR', 'STAFF', 'OTHER'];

/// receipt_vouchers.service.js PAYER_TYPES.
const payerTypes = ['DONOR', 'INDIVIDUAL', 'COMPANY', 'OTHER'];

/// debit_credit_notes.service.js PARTY_TYPES.
const notePartyTypes = ['STUDENT', 'VENDOR', 'STAFF', 'OTHER'];

@freezed
abstract class JournalLine with _$JournalLine {
  const factory JournalLine({
    @JsonKey(name: 'line_id') required String lineId,
    @JsonKey(name: 'account_id') String? accountId,
    @JsonKey(name: 'debit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal debitAmount,
    @JsonKey(name: 'credit_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal creditAmount,
    @JsonKey(name: 'line_narration') String? lineNarration,
    @JsonKey(name: 'chart_of_accounts') LedgerAccountRef? account,
  }) = _JournalLine;

  factory JournalLine.fromJson(Map<String, dynamic> json) => _$JournalLineFromJson(json);
}

/// A journal_entries row with its lines — GET .../journal-entries(/:id),
/// contra entries, and the `journal_entries` relation on vouchers / notes.
@freezed
abstract class JournalEntry with _$JournalEntry {
  const factory JournalEntry({
    @JsonKey(name: 'entry_id') required String entryId,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    @JsonKey(name: 'voucher_no') @Default('') String voucherNo,
    String? narration,

    /// MANUAL / CONTRA / PAYMENT_VOUCHER / RECEIPT_VOUCHER /
    /// DEBIT_CREDIT_NOTE / SYSTEM_FEE_RECEIPT.
    @JsonKey(name: 'entry_type') @Default('') String entryType,

    /// DRAFT / POSTED / REVERSED.
    @Default('DRAFT') String status,
    @JsonKey(name: 'reversal_of_entry_id') String? reversalOfEntryId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'journal_entry_lines') @Default([]) List<JournalLine> lines,
  }) = _JournalEntry;

  factory JournalEntry.fromJson(Map<String, dynamic> json) => _$JournalEntryFromJson(json);
}

extension JournalEntryX on JournalEntry {
  Decimal get total => lines.fold(Decimal.zero, (s, l) => s + l.debitAmount);
  bool get isDraft => status == 'DRAFT';

  /// Only POSTED manual entries can be reversed (system entries 409).
  bool get canReverse => status == 'POSTED' && entryType == 'MANUAL';
}

/// GET/POST .../payment-vouchers(/:id) — money paid out (expense or payable).
@freezed
abstract class PaymentVoucher with _$PaymentVoucher {
  const factory PaymentVoucher({
    @JsonKey(name: 'voucher_id') required String voucherId,
    @JsonKey(name: 'voucher_no') @Default('') String voucherNo,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    @JsonKey(name: 'payee_type') String? payeeType,
    @JsonKey(name: 'payee_name') @Default('') String payeeName,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'payment_mode') String? paymentMode,
    @JsonKey(name: 'cheque_no') String? chequeNo,
    String? utr,
    String? purpose,
    @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,
    @JsonKey(name: 'tds_section') String? tdsSection,
    @JsonKey(name: 'tds_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? tdsAmount,

    /// ACTIVE / CANCELLED.
    @Default('ACTIVE') String status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'journal_entries') JournalEntry? entry,
    @JsonKey(name: 'expense_account') LedgerAccountRef? expenseAccount,
    @JsonKey(name: 'paid_from') LedgerAccountRef? paidFrom,
  }) = _PaymentVoucher;

  factory PaymentVoucher.fromJson(Map<String, dynamic> json) => _$PaymentVoucherFromJson(json);
}

/// GET/POST .../receipt-vouchers(/:id) — non-fee money received.
@freezed
abstract class ReceiptVoucher with _$ReceiptVoucher {
  const factory ReceiptVoucher({
    @JsonKey(name: 'voucher_id') required String voucherId,
    @JsonKey(name: 'voucher_no') @Default('') String voucherNo,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    @JsonKey(name: 'payer_type') String? payerType,
    @JsonKey(name: 'payer_name') @Default('') String payerName,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'payment_mode') String? paymentMode,
    @JsonKey(name: 'cheque_no') String? chequeNo,
    String? utr,
    @JsonKey(name: 'source_description') String? sourceDescription,
    @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,
    @JsonKey(name: 'journal_entries') JournalEntry? entry,
    @JsonKey(name: 'received_in') LedgerAccountRef? receivedIn,
    @JsonKey(name: 'income_account') LedgerAccountRef? incomeAccount,
  }) = _ReceiptVoucher;

  factory ReceiptVoucher.fromJson(Map<String, dynamic> json) => _$ReceiptVoucherFromJson(json);
}

/// GET/POST .../debit-credit-notes(/:id).
@freezed
abstract class DebitCreditNote with _$DebitCreditNote {
  const factory DebitCreditNote({
    @JsonKey(name: 'note_id') required String noteId,
    @JsonKey(name: 'note_no') @Default('') String noteNo,

    /// DEBIT / CREDIT.
    @JsonKey(name: 'note_type') @Default('DEBIT') String noteType,
    @JsonKey(name: 'entry_date') DateTime? entryDate,
    @JsonKey(name: 'party_type') String? partyType,
    @JsonKey(name: 'party_name') @Default('') String partyName,
    @JsonKey(name: 'party_reference') String? partyReference,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    String? reason,
    @JsonKey(name: 'related_receipt_id') String? relatedReceiptId,
    @JsonKey(name: 'gst_amount', fromJson: _optDecimal, toJson: _optDecimalToJson) Decimal? gstAmount,
    @JsonKey(name: 'journal_entries') JournalEntry? entry,
    @JsonKey(name: 'debit_account') LedgerAccountRef? debitAccount,
    @JsonKey(name: 'credit_account') LedgerAccountRef? creditAccount,
  }) = _DebitCreditNote;

  factory DebitCreditNote.fromJson(Map<String, dynamic> json) => _$DebitCreditNoteFromJson(json);
}

/// A row of GET .../bank-reconciliation.
@freezed
abstract class BankReconciliationSummary with _$BankReconciliationSummary {
  const factory BankReconciliationSummary({
    @JsonKey(name: 'reconciliation_id') required String reconciliationId,
    LedgerAccountRef? account,
    @JsonKey(name: 'as_of_date') DateTime? asOfDate,
    @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal bankStatementBalance,

    /// OPEN / RECONCILED.
    @Default('OPEN') String status,
    String? notes,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _BankReconciliationSummary;

  factory BankReconciliationSummary.fromJson(Map<String, dynamic> json) => _$BankReconciliationSummaryFromJson(json);
}

@freezed
abstract class ReconClearedBlock with _$ReconClearedBlock {
  const factory ReconClearedBlock({
    @Default([]) List<BookLine> lines,
    @JsonKey(name: 'total_debit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDebit,
    @JsonKey(name: 'total_credit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalCredit,
  }) = _ReconClearedBlock;

  factory ReconClearedBlock.fromJson(Map<String, dynamic> json) => _$ReconClearedBlockFromJson(json);
}

@freezed
abstract class ReconOutstandingBlock with _$ReconOutstandingBlock {
  const factory ReconOutstandingBlock({
    @Default([]) List<BookLine> lines,

    /// Book debits (money in) not yet on the bank statement.
    @JsonKey(name: 'deposits_in_transit', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal depositsInTransit,

    /// Book credits (money out) not yet on the bank statement.
    @JsonKey(name: 'outstanding_payments', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal outstandingPayments,
  }) = _ReconOutstandingBlock;

  factory ReconOutstandingBlock.fromJson(Map<String, dynamic> json) => _$ReconOutstandingBlockFromJson(json);
}

/// GET/POST .../bank-reconciliation(/:id) and the clear/unclear/close
/// responses — the full report: book vs statement, cleared and outstanding
/// lines, and whether it balances (it can only be closed when it does).
@freezed
abstract class BankReconciliation with _$BankReconciliation {
  const factory BankReconciliation({
    @JsonKey(name: 'reconciliation_id') required String reconciliationId,
    @JsonKey(name: 'account_id') String? accountId,
    @JsonKey(name: 'as_of_date') DateTime? asOfDate,
    @JsonKey(name: 'bank_statement_balance', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal bankStatementBalance,
    @Default('OPEN') String status,
    String? notes,
    @JsonKey(name: 'book_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal bookBalance,
    ReconClearedBlock? cleared,
    ReconOutstandingBlock? outstanding,
    @JsonKey(name: 'adjusted_bank_balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal adjustedBankBalance,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal difference,
    @JsonKey(name: 'is_balanced') @Default(false) bool isBalanced,
  }) = _BankReconciliation;

  factory BankReconciliation.fromJson(Map<String, dynamic> json) => _$BankReconciliationFromJson(json);
}

extension BankReconciliationX on BankReconciliation {
  bool get isClosed => status == 'RECONCILED';
}

Decimal? _optDecimal(Object? v) => v == null ? null : decimalFromJson(v);
String? _optDecimalToJson(Decimal? v) => v?.toString();
