import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/accounting_entries.dart';
import 'accountant_service.dart' show apiDay;

/// Accounting entry endpoints (`/accountant/accounting/*`, Phase 3). Every
/// create posts to the books immediately except a manual journal entry,
/// which is saved as a DRAFT until posted. Posting, reversing, cancelling
/// and closing a reconciliation are permanent. The backend validates
/// everything (balanced lines, cash/bank vs expense accounts, …) and its
/// messages are shown as-is.
class AccountingEntriesService {
  Dio get _dio => DioClient.instance.dio;

  Future<List<T>> _list<T>(String path, T Function(Map<String, dynamic>) fromJson, Map<String, dynamic> query) async {
    final res = await _dio.get(path, queryParameters: query);
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => fromJson(e as Map<String, dynamic>)).toList();
  }

  Future<T> _one<T>(String path, T Function(Map<String, dynamic>) fromJson) async {
    final res = await _dio.get(path);
    return fromJson(res.data['data'] as Map<String, dynamic>);
  }

  /// POST and return the new row's id (read from [idKey]).
  Future<String> _create(String path, Map<String, dynamic> body, String idKey) async {
    final res = await _dio.post(path, data: body);
    return (res.data['data'] as Map<String, dynamic>)[idKey] as String;
  }

  Map<String, dynamic> _range(DateTime from, DateTime to) => {'from_date': apiDay(from), 'to_date': apiDay(to)};

  static const _a = '/accountant/accounting';

  // ── Journal entries ────────────────────────────────────────────────────
  Future<Result<List<JournalEntry>>> listJournalEntries({required DateTime from, required DateTime to, String? status}) =>
      guard(() => _list('$_a/journal-entries', JournalEntry.fromJson, {..._range(from, to), 'status': ?status}));

  Future<Result<JournalEntry>> getJournalEntry(String id) => guard(() => _one('$_a/journal-entries/$id', JournalEntry.fromJson));

  /// Saved as DRAFT (no effect on the books until posted). Lines must
  /// balance and each line has exactly one of debit / credit.
  Future<Result<String>> createJournalEntry({
    required DateTime date,
    required String narration,
    required List<JournalLineInput> lines,
  }) =>
      guard(() => _create('$_a/journal-entries', {
            'entry_date': apiDay(date),
            'narration': narration.trim(),
            'lines': [for (final l in lines) l.toJson()],
          }, 'entry_id'));

  Future<Result<void>> postJournalEntry(String id) => guard(() async => _dio.patch('$_a/journal-entries/$id/post'));

  /// Creates an opposite POSTED entry and marks this one REVERSED.
  Future<Result<void>> reverseJournalEntry(String id) => guard(() async => _dio.patch('$_a/journal-entries/$id/reverse'));

  // ── Contra (cash ↔ bank transfers) ─────────────────────────────────────
  Future<Result<List<JournalEntry>>> listContraEntries({required DateTime from, required DateTime to}) =>
      guard(() => _list('$_a/contra-entries', JournalEntry.fromJson, _range(from, to)));

  Future<Result<String>> createContraEntry({
    required DateTime date,
    required String fromAccountId,
    required String toAccountId,
    required Decimal amount,
    String? narration,
  }) =>
      guard(() => _create('$_a/contra-entries', {
            'entry_date': apiDay(date),
            'from_account_id': fromAccountId,
            'to_account_id': toAccountId,
            'amount': amount.toDouble(),
            'narration': _blankToNull(narration),
          }, 'entry_id'));

  // ── Payment vouchers ───────────────────────────────────────────────────
  Future<Result<List<PaymentVoucher>>> listPaymentVouchers({required DateTime from, required DateTime to, String? status}) =>
      guard(() => _list('$_a/payment-vouchers', PaymentVoucher.fromJson, {..._range(from, to), 'status': ?status}));

  Future<Result<PaymentVoucher>> getPaymentVoucher(String id) =>
      guard(() => _one('$_a/payment-vouchers/$id', PaymentVoucher.fromJson));

  Future<Result<String>> createPaymentVoucher(PaymentVoucherInput input) =>
      guard(() => _create('$_a/payment-vouchers', input.toJson(), 'voucher_id'));

  /// Posts a reversing entry and marks the voucher CANCELLED.
  Future<Result<void>> cancelPaymentVoucher(String id) => guard(() async => _dio.patch('$_a/payment-vouchers/$id/cancel'));

  // ── Receipt vouchers ───────────────────────────────────────────────────
  Future<Result<List<ReceiptVoucher>>> listReceiptVouchers({required DateTime from, required DateTime to}) =>
      guard(() => _list('$_a/receipt-vouchers', ReceiptVoucher.fromJson, _range(from, to)));

  Future<Result<ReceiptVoucher>> getReceiptVoucher(String id) =>
      guard(() => _one('$_a/receipt-vouchers/$id', ReceiptVoucher.fromJson));

  Future<Result<String>> createReceiptVoucher(ReceiptVoucherInput input) =>
      guard(() => _create('$_a/receipt-vouchers', input.toJson(), 'voucher_id'));

  // ── Debit / credit notes ───────────────────────────────────────────────
  Future<Result<List<DebitCreditNote>>> listNotes({required DateTime from, required DateTime to, String? noteType}) =>
      guard(() => _list('$_a/debit-credit-notes', DebitCreditNote.fromJson, {..._range(from, to), 'note_type': ?noteType}));

  Future<Result<DebitCreditNote>> getNote(String id) => guard(() => _one('$_a/debit-credit-notes/$id', DebitCreditNote.fromJson));

  Future<Result<String>> createNote(NoteInput input) => guard(() => _create('$_a/debit-credit-notes', input.toJson(), 'note_id'));

  // ── Bank reconciliation ────────────────────────────────────────────────
  Future<Result<List<BankReconciliationSummary>>> listReconciliations() =>
      guard(() => _list('$_a/bank-reconciliation', BankReconciliationSummary.fromJson, const {}));

  Future<Result<BankReconciliation>> getReconciliation(String id) =>
      guard(() => _one('$_a/bank-reconciliation/$id', BankReconciliation.fromJson));

  Future<Result<String>> createReconciliation({
    required String accountId,
    required DateTime asOf,
    required Decimal statementBalance,
    String? notes,
  }) =>
      guard(() => _create('$_a/bank-reconciliation', {
            'account_id': accountId,
            'as_of_date': apiDay(asOf),
            'bank_statement_balance': statementBalance.toDouble(),
            'notes': _blankToNull(notes),
          }, 'reconciliation_id'));

  /// Marks book lines as appearing on the bank statement.
  Future<Result<void>> clearLines(String id, List<String> lineIds) =>
      guard(() async => _dio.post('$_a/bank-reconciliation/$id/clear', data: {'line_ids': lineIds}));

  Future<Result<void>> unclearLines(String id, List<String> lineIds) =>
      guard(() async => _dio.post('$_a/bank-reconciliation/$id/unclear', data: {'line_ids': lineIds}));

  /// Only allowed once the reconciliation balances; locks it.
  Future<Result<void>> closeReconciliation(String id) => guard(() async => _dio.patch('$_a/bank-reconciliation/$id/close'));
}

String? _blankToNull(String? v) => (v == null || v.trim().isEmpty) ? null : v.trim();

/// One line of a manual journal entry — exactly one of debit / credit > 0.
class JournalLineInput {
  const JournalLineInput({required this.accountId, required this.amount, required this.isDebit, this.narration});

  final String accountId;
  final Decimal amount;
  final bool isDebit;
  final String? narration;

  Map<String, dynamic> toJson() => {
        'account_id': accountId,
        'debit_amount': isDebit ? amount.toDouble() : 0,
        'credit_amount': isDebit ? 0 : amount.toDouble(),
        'line_narration': _blankToNull(narration),
      };
}

class PaymentVoucherInput {
  const PaymentVoucherInput({
    required this.date,
    required this.payeeType,
    required this.payeeName,
    required this.expenseAccountId,
    required this.paidFromAccountId,
    required this.amount,
    required this.paymentMode,
    this.chequeNo,
    this.utr,
    this.purpose,
    this.gstAmount,
    this.tdsSection,
    this.tdsAmount,
  });

  final DateTime date;
  final String payeeType;
  final String payeeName;
  final String expenseAccountId;
  final String paidFromAccountId;
  final Decimal amount;
  final String paymentMode;
  final String? chequeNo;
  final String? utr;
  final String? purpose;
  final Decimal? gstAmount;
  final String? tdsSection;
  final Decimal? tdsAmount;

  Map<String, dynamic> toJson() => {
        'entry_date': apiDay(date),
        'payee_type': payeeType,
        'payee_name': payeeName.trim(),
        'expense_account_id': expenseAccountId,
        'paid_from_account_id': paidFromAccountId,
        'amount': amount.toDouble(),
        'payment_mode': paymentMode,
        'cheque_no': _blankToNull(chequeNo),
        'utr': _blankToNull(utr),
        'purpose': _blankToNull(purpose),
        'gst_amount': ?gstAmount?.toDouble(),
        'tds_section': _blankToNull(tdsSection),
        'tds_amount': ?tdsAmount?.toDouble(),
      };
}

class ReceiptVoucherInput {
  const ReceiptVoucherInput({
    required this.date,
    required this.payerType,
    required this.payerName,
    required this.receivedInAccountId,
    required this.incomeAccountId,
    required this.amount,
    required this.paymentMode,
    this.chequeNo,
    this.utr,
    this.description,
    this.gstAmount,
  });

  final DateTime date;
  final String payerType;
  final String payerName;
  final String receivedInAccountId;
  final String incomeAccountId;
  final Decimal amount;
  final String paymentMode;
  final String? chequeNo;
  final String? utr;
  final String? description;
  final Decimal? gstAmount;

  Map<String, dynamic> toJson() => {
        'entry_date': apiDay(date),
        'payer_type': payerType,
        'payer_name': payerName.trim(),
        'received_in_account_id': receivedInAccountId,
        'income_account_id': incomeAccountId,
        'amount': amount.toDouble(),
        'payment_mode': paymentMode,
        'cheque_no': _blankToNull(chequeNo),
        'utr': _blankToNull(utr),
        'source_description': _blankToNull(description),
        'gst_amount': ?gstAmount?.toDouble(),
      };
}

class NoteInput {
  const NoteInput({
    required this.noteType,
    required this.date,
    required this.partyType,
    required this.partyName,
    required this.debitAccountId,
    required this.creditAccountId,
    required this.amount,
    this.partyReference,
    this.reason,
    this.gstAmount,
  });

  final String noteType;
  final DateTime date;
  final String partyType;
  final String partyName;
  final String debitAccountId;
  final String creditAccountId;
  final Decimal amount;
  final String? partyReference;
  final String? reason;
  final Decimal? gstAmount;

  Map<String, dynamic> toJson() => {
        'note_type': noteType,
        'entry_date': apiDay(date),
        'party_type': partyType,
        'party_name': partyName.trim(),
        'party_reference': _blankToNull(partyReference),
        'debit_account_id': debitAccountId,
        'credit_account_id': creditAccountId,
        'amount': amount.toDouble(),
        'reason': _blankToNull(reason),
        'gst_amount': ?gstAmount?.toDouble(),
      };
}
