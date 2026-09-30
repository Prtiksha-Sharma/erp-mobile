import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';

part 'student_fees.freezed.dart';
part 'student_fees.g.dart';

/// Student fee endpoints — admin/student/fees.service.js, utils/feeDues.js,
/// utils/feeInstallments.js. Stored money columns arrive as Decimal JSON
/// strings, computed ones (totals, balances) as JSON numbers —
/// DecimalConverter accepts both.

/// GET /student/fees/summary — PAID receipts only.
@freezed
abstract class FeeSummary with _$FeeSummary {
  const factory FeeSummary({
    @JsonKey(name: 'total_paid') @DecimalConverter() required Decimal totalPaid,
    @JsonKey(name: 'receipt_count') @Default(0) int receiptCount,
  }) = _FeeSummary;

  factory FeeSummary.fromJson(Map<String, dynamic> json) => _$FeeSummaryFromJson(json);
}

/// GET /student/fees/receipts (list, items included) and
/// GET /student/fees/receipts/:receiptId (single, same shape).
@freezed
abstract class FeeReceipt with _$FeeReceipt {
  const factory FeeReceipt({
    @JsonKey(name: 'receipt_id') required String receiptId,
    @JsonKey(name: 'receipt_no') required String receiptNo,
    @JsonKey(name: 'receipt_date') DateTime? receiptDate,
    @JsonKey(name: 'net_amount') @DecimalConverter() required Decimal netAmount,
    @JsonKey(name: 'payment_mode') String? paymentMode,
    @JsonKey(name: 'receipt_status') String? receiptStatus,
    @JsonKey(name: 'student_fee_receipt_items') @Default([]) List<FeeReceiptItem> items,
  }) = _FeeReceipt;

  factory FeeReceipt.fromJson(Map<String, dynamic> json) => _$FeeReceiptFromJson(json);
}

@freezed
abstract class FeeReceiptItem with _$FeeReceiptItem {
  const factory FeeReceiptItem({
    @JsonKey(name: 'receipt_item_id') required String receiptItemId,
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
    @JsonKey(name: 'net_amount') @DecimalConverter() required Decimal netAmount,
  }) = _FeeReceiptItem;

  factory FeeReceiptItem.fromJson(Map<String, dynamic> json) => _$FeeReceiptItemFromJson(json);
}

/// GET /student/fees/pending-dues — `{ items, total_due }`, all numbers.
@freezed
abstract class PendingDues with _$PendingDues {
  const factory PendingDues({
    @Default([]) List<PendingDueItem> items,
    @JsonKey(name: 'total_due') @DecimalConverter() required Decimal totalDue,
  }) = _PendingDues;

  factory PendingDues.fromJson(Map<String, dynamic> json) => _$PendingDuesFromJson(json);
}

@freezed
abstract class PendingDueItem with _$PendingDueItem {
  const factory PendingDueItem({
    // null for the transport fee (it has no fee_structure row).
    @JsonKey(name: 'fee_structure_id') String? feeStructureId,
    @JsonKey(name: 'fee_head_id') required String feeHeadId,
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @DecimalConverter() required Decimal amount,
    @JsonKey(name: 'net_due') @DecimalConverter() required Decimal netDue,
    required String status,
  }) = _PendingDueItem;

  factory PendingDueItem.fromJson(Map<String, dynamic> json) => _$PendingDueItemFromJson(json);
}

/// Backend constant FEE_PLAN_FREQUENCIES (utils/feeInstallments.js) — no
/// endpoint returns it, every fee always offers all four.
const feePlanFrequencies = ['MONTHLY', 'QUARTERLY', 'HALF_YEARLY', 'YEARLY'];

/// GET /student/fee-plan -> `{ plans: [FeePlanEntry] }`, one entry per fee
/// head the student has chosen an installment plan for.
@freezed
abstract class FeePlanEntry with _$FeePlanEntry {
  const factory FeePlanEntry({
    required FeePlan plan,
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
    @Default([]) List<FeeInstallment> installments,
  }) = _FeePlanEntry;

  factory FeePlanEntry.fromJson(Map<String, dynamic> json) => _$FeePlanEntryFromJson(json);
}

@freezed
abstract class FeePlan with _$FeePlan {
  const factory FeePlan({
    @JsonKey(name: 'plan_id') required String planId,
    @JsonKey(name: 'fee_head_id') required String feeHeadId,
    required String frequency,
  }) = _FeePlan;

  factory FeePlan.fromJson(Map<String, dynamic> json) => _$FeePlanFromJson(json);
}

@freezed
abstract class FeeInstallment with _$FeeInstallment {
  const factory FeeInstallment({
    @JsonKey(name: 'installment_id') required String installmentId,
    @JsonKey(name: 'period_label') required String periodLabel,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @DecimalConverter() required Decimal amount,
    @DecimalConverter() required Decimal balance,
    required String status,
  }) = _FeeInstallment;

  factory FeeInstallment.fromJson(Map<String, dynamic> json) => _$FeeInstallmentFromJson(json);
}
