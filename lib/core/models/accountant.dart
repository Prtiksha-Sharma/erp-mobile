import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/decimal_json.dart';

part 'accountant.freezed.dart';
part 'accountant.g.dart';

/// Accountant portal (fee side) models — shapes verified against
/// edusoft_backend/src/features/accountant/*.service.js (GET/POST/PATCH
/// /accountant/*). Library fines reuse library.dart's [PendingFines] /
/// [FineRecord] (same payloads) and the profile reuses staff_profile.dart.
///
/// Money: raw Prisma Decimal columns (receipts, online payments) arrive as
/// JSON strings, computed figures (dashboard, pending dues) as numbers —
/// [decimalFromJson] accepts both.

/// Payment modes a counter collection can be recorded with. Stored
/// uppercase — the web admin reports filter on these exact values, and
/// journalPosting.js treats `CASH` (case-insensitive) as cash-in-hand and
/// everything else as bank.
const feePaymentModes = ['CASH', 'UPI', 'CARD', 'CHEQUE', 'ONLINE'];

/// GET /accountant/dashboard — every figure is a computed JS number.
@freezed
abstract class AccountantDashboard with _$AccountantDashboard {
  const factory AccountantDashboard({
    @JsonKey(name: 'todays_collection', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal todaysCollection,
    @JsonKey(name: 'this_month_collection', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal thisMonthCollection,
    @JsonKey(name: 'pending_fees_amount', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal pendingFeesAmount,
    @JsonKey(name: 'students_with_pending_fees') @Default(0) int studentsWithPendingFees,
    @JsonKey(name: 'pending_library_fines', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal pendingLibraryFines,
    @JsonKey(name: 'pending_online_payments') @Default(0) int pendingOnlinePayments,
    @JsonKey(name: 'failed_online_payments') @Default(0) int failedOnlinePayments,
  }) = _AccountantDashboard;

  factory AccountantDashboard.fromJson(Map<String, dynamic> json) => _$AccountantDashboardFromJson(json);
}

@freezed
abstract class AcctApplicantRef with _$AcctApplicantRef {
  const factory AcctApplicantRef({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
  }) = _AcctApplicantRef;

  factory AcctApplicantRef.fromJson(Map<String, dynamic> json) => _$AcctApplicantRefFromJson(json);
}

/// A student row — GET /accountant/students (search) and the `student` /
/// `students` relation on the fee summary and receipts. class/section are
/// flattened to their names.
@freezed
abstract class AcctStudent with _$AcctStudent {
  const factory AcctStudent({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'roll_no') String? rollNo,
    @JsonKey(name: 'student_status') String? studentStatus,
    @JsonKey(name: 'current_class', readValue: _readClassName) String? className,
    @JsonKey(name: 'current_section', readValue: _readSectionName) String? sectionName,
    AcctApplicantRef? applicants,
  }) = _AcctStudent;

  factory AcctStudent.fromJson(Map<String, dynamic> json) => _$AcctStudentFromJson(json);
}

Object? _readClassName(Map json, String key) => (json[key] as Map?)?['class_name'];
Object? _readSectionName(Map json, String key) => (json[key] as Map?)?['section_name'];

extension AcctStudentX on AcctStudent {
  String get name {
    final n = [applicants?.firstName, applicants?.lastName].where((p) => p != null && p.trim().isNotEmpty).join(' ');
    return n.isEmpty ? (admissionNo ?? 'Student') : n;
  }

  /// `Class 8 - A`, or null when neither is set.
  String? get classLabel {
    final parts = [className, sectionName].whereType<String>().where((s) => s.isNotEmpty).toList();
    return parts.isEmpty ? null : parts.join(' - ');
  }
}

/// One pending fee line — utils/feeDues.js#computeStudentPendingDues, plus
/// `suggested_fine_amount` (the late fee computeLateFee() would apply today).
/// Also the shape of an online payment's `items_snapshot` entries (no
/// suggested fine there, hence the zero default).
@freezed
abstract class AcctPendingItem with _$AcctPendingItem {
  const factory AcctPendingItem({
    @JsonKey(name: 'fee_structure_id') String? feeStructureId,
    @JsonKey(name: 'fee_head_id') String? feeHeadId,
    @JsonKey(name: 'fee_head_name') @Default('') String feeHeadName,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'concession_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal concessionAmount,
    @JsonKey(name: 'paid_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal paidAmount,
    @JsonKey(name: 'net_due', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netDue,

    /// PAID / PARTIALLY_PAID / OVERDUE / DUE.
    @Default('DUE') String status,
    @JsonKey(name: 'suggested_fine_amount', fromJson: decimalFromJson, toJson: decimalToJson)
    required Decimal suggestedFineAmount,
  }) = _AcctPendingItem;

  factory AcctPendingItem.fromJson(Map<String, dynamic> json) => _$AcctPendingItemFromJson(json);
}

@freezed
abstract class AcctConcession with _$AcctConcession {
  const factory AcctConcession({
    String? name,
    @JsonKey(name: 'concession_type') String? concessionType,

    /// PERCENTAGE / FIXED.
    @JsonKey(name: 'calculation_type') String? calculationType,
    @JsonKey(fromJson: decimalFromJson, toJson: decimalToJson) required Decimal value,
  }) = _AcctConcession;

  factory AcctConcession.fromJson(Map<String, dynamic> json) => _$AcctConcessionFromJson(json);
}

/// A student_fee_concessions row with its `fee_concessions`.
@freezed
abstract class AcctScholarship with _$AcctScholarship {
  const factory AcctScholarship({
    @JsonKey(name: 'student_concession_id') required String studentConcessionId,
    @JsonKey(name: 'valid_from') DateTime? validFrom,
    @JsonKey(name: 'valid_to') DateTime? validTo,
    String? remarks,
    @JsonKey(name: 'fee_concessions') AcctConcession? concession,
  }) = _AcctScholarship;

  factory AcctScholarship.fromJson(Map<String, dynamic> json) => _$AcctScholarshipFromJson(json);
}

@freezed
abstract class AcctReceiptItem with _$AcctReceiptItem {
  const factory AcctReceiptItem({
    @JsonKey(name: 'receipt_item_id') String? receiptItemId,
    @JsonKey(name: 'fee_head_name') @Default('') String feeHeadName,
    @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal discountAmount,
    @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal fineAmount,
    @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netAmount,
    String? remarks,
  }) = _AcctReceiptItem;

  factory AcctReceiptItem.fromJson(Map<String, dynamic> json) => _$AcctReceiptItemFromJson(json);
}

/// A student_fee_receipts row — GET /accountant/receipts(/:id), POST
/// /accountant/receipts (201), the cancel/refund responses (bare row, no
/// relations) and the fee summary's `previous_payments`.
@freezed
abstract class AcctReceipt with _$AcctReceipt {
  const factory AcctReceipt({
    @JsonKey(name: 'receipt_id') required String receiptId,
    @JsonKey(name: 'receipt_no') @Default('') String receiptNo,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'receipt_date') DateTime? receiptDate,
    @JsonKey(name: 'total_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalAmount,
    @JsonKey(name: 'discount_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal discountAmount,
    @JsonKey(name: 'fine_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal fineAmount,
    @JsonKey(name: 'net_amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal netAmount,
    @JsonKey(name: 'payment_mode') @Default('') String paymentMode,

    /// PAID / CANCELLED / REFUNDED.
    @JsonKey(name: 'receipt_status') @Default('PAID') String receiptStatus,
    String? remarks,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'students') AcctStudent? student,
    @JsonKey(name: 'classes', readValue: _readReceiptClass) String? className,
    @JsonKey(name: 'student_fee_receipt_items') @Default([]) List<AcctReceiptItem> items,
  }) = _AcctReceipt;

  factory AcctReceipt.fromJson(Map<String, dynamic> json) => _$AcctReceiptFromJson(json);
}

Object? _readReceiptClass(Map json, String key) => (json[key] as Map?)?['class_name'];

extension AcctReceiptX on AcctReceipt {
  bool get isPaid => receiptStatus == 'PAID';
}

@freezed
abstract class AcctFeeCategory with _$AcctFeeCategory {
  const factory AcctFeeCategory({
    @JsonKey(name: 'fee_category_id') String? feeCategoryId,
    @JsonKey(name: 'category_name') String? categoryName,
  }) = _AcctFeeCategory;

  factory AcctFeeCategory.fromJson(Map<String, dynamic> json) => _$AcctFeeCategoryFromJson(json);
}

/// GET /accountant/students/:studentId/fee-summary — the fee collection
/// screen's data. `fee_plans` (installment schedules) isn't modelled: Phase 1
/// collects against the pending fee lines.
@freezed
abstract class FeeCollectionSummary with _$FeeCollectionSummary {
  const factory FeeCollectionSummary({
    required AcctStudent student,
    @JsonKey(name: 'fee_category') AcctFeeCategory? feeCategory,
    @Default([]) List<AcctScholarship> scholarships,
    @JsonKey(name: 'previous_payments') @Default([]) List<AcctReceipt> previousPayments,
    @JsonKey(name: 'pending_items') @Default([]) List<AcctPendingItem> pendingItems,
    @JsonKey(name: 'total_due', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal totalDue,
  }) = _FeeCollectionSummary;

  factory FeeCollectionSummary.fromJson(Map<String, dynamic> json) => _$FeeCollectionSummaryFromJson(json);
}

@freezed
abstract class AcctParentRef with _$AcctParentRef {
  const factory AcctParentRef({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
  }) = _AcctParentRef;

  factory AcctParentRef.fromJson(Map<String, dynamic> json) => _$AcctParentRefFromJson(json);
}

/// GET /accountant/online-payments(/:id) — a parent's gateway transaction.
@freezed
abstract class AcctOnlinePayment with _$AcctOnlinePayment {
  const factory AcctOnlinePayment({
    @JsonKey(name: 'payment_id') required String paymentId,
    @JsonKey(name: 'student_id') String? studentId,
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'gateway_name') String? gatewayName,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'amount', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal amount,
    String? currency,

    /// Pending / Success / Failed (title case, as stored).
    @JsonKey(name: 'payment_status') @Default('Pending') String paymentStatus,
    @JsonKey(name: 'payment_date') DateTime? paymentDate,
    @JsonKey(name: 'receipt_id') String? receiptId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'items_snapshot', fromJson: _snapshotFromJson) @Default([]) List<AcctPendingItem> items,
    @JsonKey(name: 'students') AcctStudent? student,
    @JsonKey(name: 'parent_accounts', readValue: _readParent) AcctParentRef? parent,
  }) = _AcctOnlinePayment;

  factory AcctOnlinePayment.fromJson(Map<String, dynamic> json) => _$AcctOnlinePaymentFromJson(json);
}

Object? _readParent(Map json, String key) => (json[key] as Map?)?['parents'];

/// items_snapshot is free-form JSON on the backend — tolerate anything that
/// isn't a list of objects instead of failing the whole row.
List<AcctPendingItem> _snapshotFromJson(Object? raw) {
  if (raw is! List) return const [];
  return [
    for (final e in raw)
      if (e is Map<String, dynamic>) AcctPendingItem.fromJson(e),
  ];
}

/// GET /accountant/late-fee-settings — School Admin's policy, read-only here.
@freezed
abstract class FeeLateFeeSettings with _$FeeLateFeeSettings {
  const factory FeeLateFeeSettings({
    @JsonKey(name: 'rate_per_day', fromJson: decimalFromJson, toJson: decimalToJson) required Decimal ratePerDay,
    @JsonKey(name: 'grace_period_days') @Default(0) int gracePeriodDays,
    @JsonKey(name: 'max_fine_per_item', fromJson: _nullableDecimal, toJson: _nullableDecimalToJson) Decimal? maxFinePerItem,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _FeeLateFeeSettings;

  factory FeeLateFeeSettings.fromJson(Map<String, dynamic> json) => _$FeeLateFeeSettingsFromJson(json);
}

Decimal? _nullableDecimal(Object? v) => v == null ? null : decimalFromJson(v);
String? _nullableDecimalToJson(Decimal? v) => v?.toString();
