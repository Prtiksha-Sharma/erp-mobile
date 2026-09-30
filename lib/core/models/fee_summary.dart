import 'package:flutter/material.dart';
import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/decimal_json.dart';

part 'fee_summary.freezed.dart';
part 'fee_summary.g.dart';

@freezed
abstract class FeeCategory with _$FeeCategory {
  const factory FeeCategory({
    @JsonKey(name: 'fee_category_id') required String feeCategoryId,
    @JsonKey(name: 'category_name') required String categoryName,
  }) = _FeeCategory;

  factory FeeCategory.fromJson(Map<String, dynamic> json) => _$FeeCategoryFromJson(json);
}

/// PAID/PARTIALLY_PAID/OVERDUE/DUE — verified against
/// utils/feeDues.js#computeStudentPendingDues's own status computation
/// (source-derived: this account has no pending items live, so the exact
/// string values are confirmed by reading the ternary, not observed on
/// the wire).
enum PendingItemStatus {
  @JsonValue('PAID')
  paid,
  @JsonValue('PARTIALLY_PAID')
  partiallyPaid,
  @JsonValue('OVERDUE')
  overdue,
  @JsonValue('DUE')
  due,
  unknown,
}

extension PendingItemStatusDisplay on PendingItemStatus {
  String get label => switch (this) {
        PendingItemStatus.paid => 'Paid',
        PendingItemStatus.partiallyPaid => 'Partially Paid',
        PendingItemStatus.overdue => 'Overdue',
        PendingItemStatus.due => 'Due',
        PendingItemStatus.unknown => 'Unknown',
      };

  Color get color => switch (this) {
        PendingItemStatus.paid => const Color(0xFF16A34A),
        PendingItemStatus.partiallyPaid => const Color(0xFFD97706),
        PendingItemStatus.overdue => const Color(0xFFDC2626),
        PendingItemStatus.due => const Color(0xFF2563EB),
        PendingItemStatus.unknown => const Color(0xFF64748B),
      };
}

/// Every money field here is computed via plain Number() arithmetic on
/// the backend (see decimal_json.dart's own comment) — raw JSON numbers,
/// not strings. Source-derived shape (utils/feeDues.js lines 89-99);
/// this test account currently has none pending, so not live-observed.
@freezed
abstract class PendingFeeItem with _$PendingFeeItem {
  const factory PendingFeeItem({
    @JsonKey(name: 'fee_structure_id') String? feeStructureId,
    @JsonKey(name: 'fee_head_id') required String feeHeadId,
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netDue,
    // computeLateFee() always returns a fine_amount, defaulting to 0 when
    // there's no due date — never actually omitted (utils/feeLateFee.js:29).
    @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal suggestedFineAmount,
    @JsonKey(name: 'status', unknownEnumValue: PendingItemStatus.unknown)
    required PendingItemStatus status,
  }) = _PendingFeeItem;

  factory PendingFeeItem.fromJson(Map<String, dynamic> json) => _$PendingFeeItemFromJson(json);
}

/// Receipt-item money fields ARE direct Prisma Decimal passthroughs —
/// JSON strings, verified live.
@freezed
abstract class FeeReceiptItem with _$FeeReceiptItem {
  const factory FeeReceiptItem({
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
    @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netAmount,
    String? remarks,
  }) = _FeeReceiptItem;

  factory FeeReceiptItem.fromJson(Map<String, dynamic> json) => _$FeeReceiptItemFromJson(json);
}

/// Matches both GET /parent/children/:studentId/fees's previous_payments
/// entries AND GET .../fees/receipts/:receiptId's detail response —
/// verified live, identical shape (the detail endpoint just adds
/// students/classes context this app doesn't need to render, so those
/// are left unmodeled — same leanness convention as AttendanceRecord).
@freezed
abstract class FeeReceipt with _$FeeReceipt {
  const factory FeeReceipt({
    @JsonKey(name: 'receipt_id') required String receiptId,
    @JsonKey(name: 'receipt_no') required String receiptNo,
    @JsonKey(name: 'receipt_date') required DateTime receiptDate,
    @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalAmount,
    @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netAmount,
    @JsonKey(name: 'payment_mode') String? paymentMode,
    // Plain String, not a strict enum — only "PAID" confirmed live;
    // CANCELLED referenced in backend filters elsewhere but no full
    // vocabulary confirmed, and this is a low-stakes display field.
    @JsonKey(name: 'receipt_status') String? receiptStatus,
    String? remarks,
    @JsonKey(name: 'student_fee_receipt_items') required List<FeeReceiptItem> items,
  }) = _FeeReceipt;

  factory FeeReceipt.fromJson(Map<String, dynamic> json) => _$FeeReceiptFromJson(json);
}

/// PAID/PARTIALLY_PAID/OVERDUE/PENDING — note "PENDING" here vs
/// PendingItemStatus's "DUE": two genuinely different backend enums
/// (utils/feeInstallments.js#withStatus vs feeDues.js), not the same
/// vocabulary reused. Source-derived — no live fee_plans data exists for
/// this test account.
enum InstallmentStatus {
  @JsonValue('PAID')
  paid,
  @JsonValue('PARTIALLY_PAID')
  partiallyPaid,
  @JsonValue('OVERDUE')
  overdue,
  @JsonValue('PENDING')
  pending,
  unknown,
}

extension InstallmentStatusDisplay on InstallmentStatus {
  String get label => switch (this) {
        InstallmentStatus.paid => 'Paid',
        InstallmentStatus.partiallyPaid => 'Partially Paid',
        InstallmentStatus.overdue => 'Overdue',
        InstallmentStatus.pending => 'Pending',
        InstallmentStatus.unknown => 'Unknown',
      };

  Color get color => switch (this) {
        InstallmentStatus.paid => const Color(0xFF16A34A),
        InstallmentStatus.partiallyPaid => const Color(0xFFD97706),
        InstallmentStatus.overdue => const Color(0xFFDC2626),
        InstallmentStatus.pending => const Color(0xFF2563EB),
        InstallmentStatus.unknown => const Color(0xFF64748B),
      };
}

@freezed
abstract class FeeInstallment with _$FeeInstallment {
  const factory FeeInstallment({
    @JsonKey(name: 'installment_id') required String installmentId,
    @JsonKey(name: 'period_index') required int periodIndex,
    @JsonKey(name: 'period_label') required String periodLabel,
    @JsonKey(name: 'due_date') required DateTime dueDate,
    @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal paidAmount,
    @JsonKey(name: 'balance', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal balance,
    @JsonKey(name: 'status', unknownEnumValue: InstallmentStatus.unknown)
    required InstallmentStatus status,
  }) = _FeeInstallment;

  factory FeeInstallment.fromJson(Map<String, dynamic> json) => _$FeeInstallmentFromJson(json);
}

/// The raw student_fee_plans row, nested under `plan` in each fee_plans
/// entry (utils/feeInstallments.js#getFeePlan) — only the fields this app
/// actually reads.
@freezed
abstract class FeePlanRef with _$FeePlanRef {
  const factory FeePlanRef({
    @JsonKey(name: 'plan_id') required String planId,
    @JsonKey(name: 'frequency') required String frequency,
  }) = _FeePlanRef;

  factory FeePlanRef.fromJson(Map<String, dynamic> json) => _$FeePlanRefFromJson(json);
}

@freezed
abstract class FeePlanEntry with _$FeePlanEntry {
  const factory FeePlanEntry({
    required FeePlanRef plan,
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
    required List<FeeInstallment> installments,
  }) = _FeePlanEntry;

  factory FeePlanEntry.fromJson(Map<String, dynamic> json) => _$FeePlanEntryFromJson(json);
}

/// student_fee_concessions row's nested fee_concessions relation
/// (admin/student/students.service.js#getStudentFeeSummary's own
/// `include`) — only the nested info is modeled; the outer row's other
/// fields (validity window, etc.) aren't read anywhere in this app yet.
/// Source-derived — no live scholarship data exists for this test account.
@freezed
abstract class ConcessionInfo with _$ConcessionInfo {
  const factory ConcessionInfo({
    required String name,
    @JsonKey(name: 'concession_type') String? concessionType,
    @JsonKey(name: 'calculation_type') String? calculationType,
    @JsonKey(name: 'value', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal value,
  }) = _ConcessionInfo;

  factory ConcessionInfo.fromJson(Map<String, dynamic> json) => _$ConcessionInfoFromJson(json);
}

@freezed
abstract class Scholarship with _$Scholarship {
  const factory Scholarship({
    @JsonKey(name: 'fee_concessions') required ConcessionInfo feeConcessions,
  }) = _Scholarship;

  factory Scholarship.fromJson(Map<String, dynamic> json) => _$ScholarshipFromJson(json);
}

/// Matches GET /parent/children/:studentId/fees — verified live for
/// fee_category/previous_payments/total_due; scholarships/pending_items/
/// fee_plans are source-derived (all three are empty arrays for this
/// test account, so their non-empty shape isn't wire-confirmed). The
/// `student` field the backend also returns is deliberately NOT modeled
/// here — it duplicates data already available from the active
/// Child (activeChildProvider), same leanness convention as elsewhere.
@freezed
abstract class FeeSummary with _$FeeSummary {
  const factory FeeSummary({
    @JsonKey(name: 'fee_category') FeeCategory? feeCategory,
    required List<Scholarship> scholarships,
    @JsonKey(name: 'previous_payments') required List<FeeReceipt> previousPayments,
    @JsonKey(name: 'pending_items') required List<PendingFeeItem> pendingItems,
    @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDue,
    @JsonKey(name: 'fee_plans') required List<FeePlanEntry> feePlans,
  }) = _FeeSummary;

  factory FeeSummary.fromJson(Map<String, dynamic> json) => _$FeeSummaryFromJson(json);
}
