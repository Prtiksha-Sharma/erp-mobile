// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounting_entries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JournalLine _$JournalLineFromJson(Map<String, dynamic> json) => _JournalLine(
  lineId: json['line_id'] as String,
  accountId: json['account_id'] as String?,
  debitAmount: decimalFromJson(json['debit_amount']),
  creditAmount: decimalFromJson(json['credit_amount']),
  lineNarration: json['line_narration'] as String?,
  account: json['chart_of_accounts'] == null
      ? null
      : LedgerAccountRef.fromJson(
          json['chart_of_accounts'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$JournalLineToJson(_JournalLine instance) =>
    <String, dynamic>{
      'line_id': instance.lineId,
      'account_id': instance.accountId,
      'debit_amount': decimalToJson(instance.debitAmount),
      'credit_amount': decimalToJson(instance.creditAmount),
      'line_narration': instance.lineNarration,
      'chart_of_accounts': instance.account,
    };

_JournalEntry _$JournalEntryFromJson(Map<String, dynamic> json) =>
    _JournalEntry(
      entryId: json['entry_id'] as String,
      entryDate: json['entry_date'] == null
          ? null
          : DateTime.parse(json['entry_date'] as String),
      voucherNo: json['voucher_no'] as String? ?? '',
      narration: json['narration'] as String?,
      entryType: json['entry_type'] as String? ?? '',
      status: json['status'] as String? ?? 'DRAFT',
      reversalOfEntryId: json['reversal_of_entry_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      lines:
          (json['journal_entry_lines'] as List<dynamic>?)
              ?.map((e) => JournalLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$JournalEntryToJson(_JournalEntry instance) =>
    <String, dynamic>{
      'entry_id': instance.entryId,
      'entry_date': instance.entryDate?.toIso8601String(),
      'voucher_no': instance.voucherNo,
      'narration': instance.narration,
      'entry_type': instance.entryType,
      'status': instance.status,
      'reversal_of_entry_id': instance.reversalOfEntryId,
      'created_at': instance.createdAt?.toIso8601String(),
      'journal_entry_lines': instance.lines,
    };

_PaymentVoucher _$PaymentVoucherFromJson(
  Map<String, dynamic> json,
) => _PaymentVoucher(
  voucherId: json['voucher_id'] as String,
  voucherNo: json['voucher_no'] as String? ?? '',
  entryDate: json['entry_date'] == null
      ? null
      : DateTime.parse(json['entry_date'] as String),
  payeeType: json['payee_type'] as String?,
  payeeName: json['payee_name'] as String? ?? '',
  amount: decimalFromJson(json['amount']),
  paymentMode: json['payment_mode'] as String?,
  chequeNo: json['cheque_no'] as String?,
  utr: json['utr'] as String?,
  purpose: json['purpose'] as String?,
  gstAmount: _optDecimal(json['gst_amount']),
  tdsSection: json['tds_section'] as String?,
  tdsAmount: _optDecimal(json['tds_amount']),
  status: json['status'] as String? ?? 'ACTIVE',
  cancelledAt: json['cancelled_at'] == null
      ? null
      : DateTime.parse(json['cancelled_at'] as String),
  entry: json['journal_entries'] == null
      ? null
      : JournalEntry.fromJson(json['journal_entries'] as Map<String, dynamic>),
  expenseAccount: json['expense_account'] == null
      ? null
      : LedgerAccountRef.fromJson(
          json['expense_account'] as Map<String, dynamic>,
        ),
  paidFrom: json['paid_from'] == null
      ? null
      : LedgerAccountRef.fromJson(json['paid_from'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentVoucherToJson(_PaymentVoucher instance) =>
    <String, dynamic>{
      'voucher_id': instance.voucherId,
      'voucher_no': instance.voucherNo,
      'entry_date': instance.entryDate?.toIso8601String(),
      'payee_type': instance.payeeType,
      'payee_name': instance.payeeName,
      'amount': decimalToJson(instance.amount),
      'payment_mode': instance.paymentMode,
      'cheque_no': instance.chequeNo,
      'utr': instance.utr,
      'purpose': instance.purpose,
      'gst_amount': _optDecimalToJson(instance.gstAmount),
      'tds_section': instance.tdsSection,
      'tds_amount': _optDecimalToJson(instance.tdsAmount),
      'status': instance.status,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'journal_entries': instance.entry,
      'expense_account': instance.expenseAccount,
      'paid_from': instance.paidFrom,
    };

_ReceiptVoucher _$ReceiptVoucherFromJson(
  Map<String, dynamic> json,
) => _ReceiptVoucher(
  voucherId: json['voucher_id'] as String,
  voucherNo: json['voucher_no'] as String? ?? '',
  entryDate: json['entry_date'] == null
      ? null
      : DateTime.parse(json['entry_date'] as String),
  payerType: json['payer_type'] as String?,
  payerName: json['payer_name'] as String? ?? '',
  amount: decimalFromJson(json['amount']),
  paymentMode: json['payment_mode'] as String?,
  chequeNo: json['cheque_no'] as String?,
  utr: json['utr'] as String?,
  sourceDescription: json['source_description'] as String?,
  gstAmount: _optDecimal(json['gst_amount']),
  entry: json['journal_entries'] == null
      ? null
      : JournalEntry.fromJson(json['journal_entries'] as Map<String, dynamic>),
  receivedIn: json['received_in'] == null
      ? null
      : LedgerAccountRef.fromJson(json['received_in'] as Map<String, dynamic>),
  incomeAccount: json['income_account'] == null
      ? null
      : LedgerAccountRef.fromJson(
          json['income_account'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ReceiptVoucherToJson(_ReceiptVoucher instance) =>
    <String, dynamic>{
      'voucher_id': instance.voucherId,
      'voucher_no': instance.voucherNo,
      'entry_date': instance.entryDate?.toIso8601String(),
      'payer_type': instance.payerType,
      'payer_name': instance.payerName,
      'amount': decimalToJson(instance.amount),
      'payment_mode': instance.paymentMode,
      'cheque_no': instance.chequeNo,
      'utr': instance.utr,
      'source_description': instance.sourceDescription,
      'gst_amount': _optDecimalToJson(instance.gstAmount),
      'journal_entries': instance.entry,
      'received_in': instance.receivedIn,
      'income_account': instance.incomeAccount,
    };

_DebitCreditNote _$DebitCreditNoteFromJson(Map<String, dynamic> json) =>
    _DebitCreditNote(
      noteId: json['note_id'] as String,
      noteNo: json['note_no'] as String? ?? '',
      noteType: json['note_type'] as String? ?? 'DEBIT',
      entryDate: json['entry_date'] == null
          ? null
          : DateTime.parse(json['entry_date'] as String),
      partyType: json['party_type'] as String?,
      partyName: json['party_name'] as String? ?? '',
      partyReference: json['party_reference'] as String?,
      amount: decimalFromJson(json['amount']),
      reason: json['reason'] as String?,
      relatedReceiptId: json['related_receipt_id'] as String?,
      gstAmount: _optDecimal(json['gst_amount']),
      entry: json['journal_entries'] == null
          ? null
          : JournalEntry.fromJson(
              json['journal_entries'] as Map<String, dynamic>,
            ),
      debitAccount: json['debit_account'] == null
          ? null
          : LedgerAccountRef.fromJson(
              json['debit_account'] as Map<String, dynamic>,
            ),
      creditAccount: json['credit_account'] == null
          ? null
          : LedgerAccountRef.fromJson(
              json['credit_account'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DebitCreditNoteToJson(_DebitCreditNote instance) =>
    <String, dynamic>{
      'note_id': instance.noteId,
      'note_no': instance.noteNo,
      'note_type': instance.noteType,
      'entry_date': instance.entryDate?.toIso8601String(),
      'party_type': instance.partyType,
      'party_name': instance.partyName,
      'party_reference': instance.partyReference,
      'amount': decimalToJson(instance.amount),
      'reason': instance.reason,
      'related_receipt_id': instance.relatedReceiptId,
      'gst_amount': _optDecimalToJson(instance.gstAmount),
      'journal_entries': instance.entry,
      'debit_account': instance.debitAccount,
      'credit_account': instance.creditAccount,
    };

_BankReconciliationSummary _$BankReconciliationSummaryFromJson(
  Map<String, dynamic> json,
) => _BankReconciliationSummary(
  reconciliationId: json['reconciliation_id'] as String,
  account: json['account'] == null
      ? null
      : LedgerAccountRef.fromJson(json['account'] as Map<String, dynamic>),
  asOfDate: json['as_of_date'] == null
      ? null
      : DateTime.parse(json['as_of_date'] as String),
  bankStatementBalance: decimalFromJson(json['bank_statement_balance']),
  status: json['status'] as String? ?? 'OPEN',
  notes: json['notes'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$BankReconciliationSummaryToJson(
  _BankReconciliationSummary instance,
) => <String, dynamic>{
  'reconciliation_id': instance.reconciliationId,
  'account': instance.account,
  'as_of_date': instance.asOfDate?.toIso8601String(),
  'bank_statement_balance': decimalToJson(instance.bankStatementBalance),
  'status': instance.status,
  'notes': instance.notes,
  'created_at': instance.createdAt?.toIso8601String(),
};

_ReconClearedBlock _$ReconClearedBlockFromJson(Map<String, dynamic> json) =>
    _ReconClearedBlock(
      lines:
          (json['lines'] as List<dynamic>?)
              ?.map((e) => BookLine.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalDebit: decimalFromJson(json['total_debit']),
      totalCredit: decimalFromJson(json['total_credit']),
    );

Map<String, dynamic> _$ReconClearedBlockToJson(_ReconClearedBlock instance) =>
    <String, dynamic>{
      'lines': instance.lines,
      'total_debit': decimalToJson(instance.totalDebit),
      'total_credit': decimalToJson(instance.totalCredit),
    };

_ReconOutstandingBlock _$ReconOutstandingBlockFromJson(
  Map<String, dynamic> json,
) => _ReconOutstandingBlock(
  lines:
      (json['lines'] as List<dynamic>?)
          ?.map((e) => BookLine.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  depositsInTransit: decimalFromJson(json['deposits_in_transit']),
  outstandingPayments: decimalFromJson(json['outstanding_payments']),
);

Map<String, dynamic> _$ReconOutstandingBlockToJson(
  _ReconOutstandingBlock instance,
) => <String, dynamic>{
  'lines': instance.lines,
  'deposits_in_transit': decimalToJson(instance.depositsInTransit),
  'outstanding_payments': decimalToJson(instance.outstandingPayments),
};

_BankReconciliation _$BankReconciliationFromJson(Map<String, dynamic> json) =>
    _BankReconciliation(
      reconciliationId: json['reconciliation_id'] as String,
      accountId: json['account_id'] as String?,
      asOfDate: json['as_of_date'] == null
          ? null
          : DateTime.parse(json['as_of_date'] as String),
      bankStatementBalance: decimalFromJson(json['bank_statement_balance']),
      status: json['status'] as String? ?? 'OPEN',
      notes: json['notes'] as String?,
      bookBalance: decimalFromJson(json['book_balance']),
      cleared: json['cleared'] == null
          ? null
          : ReconClearedBlock.fromJson(json['cleared'] as Map<String, dynamic>),
      outstanding: json['outstanding'] == null
          ? null
          : ReconOutstandingBlock.fromJson(
              json['outstanding'] as Map<String, dynamic>,
            ),
      adjustedBankBalance: decimalFromJson(json['adjusted_bank_balance']),
      difference: decimalFromJson(json['difference']),
      isBalanced: json['is_balanced'] as bool? ?? false,
    );

Map<String, dynamic> _$BankReconciliationToJson(_BankReconciliation instance) =>
    <String, dynamic>{
      'reconciliation_id': instance.reconciliationId,
      'account_id': instance.accountId,
      'as_of_date': instance.asOfDate?.toIso8601String(),
      'bank_statement_balance': decimalToJson(instance.bankStatementBalance),
      'status': instance.status,
      'notes': instance.notes,
      'book_balance': decimalToJson(instance.bookBalance),
      'cleared': instance.cleared,
      'outstanding': instance.outstanding,
      'adjusted_bank_balance': decimalToJson(instance.adjustedBankBalance),
      'difference': decimalToJson(instance.difference),
      'is_balanced': instance.isBalanced,
    };
