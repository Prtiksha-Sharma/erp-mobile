import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';
import 'student_brief.dart';

part 'admin_finance_reports.freezed.dart';
part 'admin_finance_reports.g.dart';

/// School Admin fee reports — backend features/admin/fees/reports.service.js
/// and onlinePayments.service.js. Receipt rows are raw
/// finance.student_fee_receipts rows plus RECEIPT_INCLUDE (`students
/// { student_id, admission_no, applicants { first_name, last_name } }`,
/// `classes { class_id, class_name }`). Totals are `Number(...)` sums
/// (JSON numbers); row amounts are Prisma Decimal strings.

/// finance.student_fee_receipts row (Payment History, Collection, Daily
/// Collection, Refunds). `receipt_date` is `@db.Date`; `updated_at` is a
/// timestamp (the Refunds report's "Refunded On").
@freezed
abstract class AdminFeeReceipt with _$AdminFeeReceipt {
  const factory AdminFeeReceipt({
    @JsonKey(name: 'receipt_id') required String receiptId,
    @JsonKey(name: 'receipt_no') String? receiptNo,
    @JsonKey(name: 'receipt_date') DateTime? receiptDate,
    @JsonKey(name: 'total_amount') @NullableDecimalConverter() Decimal? totalAmount,
    @JsonKey(name: 'discount_amount') @NullableDecimalConverter() Decimal? discountAmount,
    @JsonKey(name: 'fine_amount') @NullableDecimalConverter() Decimal? fineAmount,
    @JsonKey(name: 'net_amount') @DecimalConverter() required Decimal netAmount,
    @JsonKey(name: 'payment_mode') String? paymentMode,
    @JsonKey(name: 'receipt_status') String? receiptStatus,
    String? remarks,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'students') StudentBrief? student,
    @JsonKey(name: 'classes') ClassRef? classRef,
  }) = _AdminFeeReceipt;

  factory AdminFeeReceipt.fromJson(Map<String, dynamic> json) => _$AdminFeeReceiptFromJson(json);
}

/// GET /admin/fees/reports/collection → `{ total, receipt_count, receipts }`;
/// GET /admin/fees/reports/daily-collection adds `date` (not shown — the
/// web drops it too, since the picker already shows the day).
@freezed
abstract class FeeCollectionReport with _$FeeCollectionReport {
  const factory FeeCollectionReport({
    @DecimalConverter() required Decimal total,
    @JsonKey(name: 'receipt_count') @Default(0) int receiptCount,
    @Default(<AdminFeeReceipt>[]) List<AdminFeeReceipt> receipts,
  }) = _FeeCollectionReport;

  factory FeeCollectionReport.fromJson(Map<String, dynamic> json) => _$FeeCollectionReportFromJson(json);
}

/// GET /admin/fees/reports/refunds → `{ total_refunded, receipt_count, receipts }`.
@freezed
abstract class FeeRefundReport with _$FeeRefundReport {
  const factory FeeRefundReport({
    @JsonKey(name: 'total_refunded') @DecimalConverter() required Decimal totalRefunded,
    @JsonKey(name: 'receipt_count') @Default(0) int receiptCount,
    @Default(<AdminFeeReceipt>[]) List<AdminFeeReceipt> receipts,
  }) = _FeeRefundReport;

  factory FeeRefundReport.fromJson(Map<String, dynamic> json) => _$FeeRefundReportFromJson(json);
}

/// GET /admin/fees/reports/class-wise-collection — a bare array of
/// `{ class_id, class_name, total, receipt_count }` (class_id null →
/// "Unassigned"), sorted by total desc.
@freezed
abstract class ClassWiseCollectionRow with _$ClassWiseCollectionRow {
  const factory ClassWiseCollectionRow({
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'class_name') String? className,
    @DecimalConverter() required Decimal total,
    @JsonKey(name: 'receipt_count') @Default(0) int receiptCount,
  }) = _ClassWiseCollectionRow;

  factory ClassWiseCollectionRow.fromJson(Map<String, dynamic> json) => _$ClassWiseCollectionRowFromJson(json);
}

/// GET /admin/fees/reports/outstanding — utils/feeDues.js
/// #computeInstitutionPendingSummary: `{ total_pending,
/// students_with_pending, students: [{ student_id, admission_no,
/// total_due }] }`. No student name is returned.
@freezed
abstract class OutstandingFeeReport with _$OutstandingFeeReport {
  const factory OutstandingFeeReport({
    @JsonKey(name: 'total_pending') @DecimalConverter() required Decimal totalPending,
    @JsonKey(name: 'students_with_pending') @Default(0) int studentsWithPending,
    @Default(<OutstandingStudent>[]) List<OutstandingStudent> students,
  }) = _OutstandingFeeReport;

  factory OutstandingFeeReport.fromJson(Map<String, dynamic> json) => _$OutstandingFeeReportFromJson(json);
}

@freezed
abstract class OutstandingStudent with _$OutstandingStudent {
  const factory OutstandingStudent({
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'admission_no') String? admissionNo,
    @JsonKey(name: 'total_due') @DecimalConverter() required Decimal totalDue,
  }) = _OutstandingStudent;

  factory OutstandingStudent.fromJson(Map<String, dynamic> json) => _$OutstandingStudentFromJson(json);
}

/// `fee_concessions { concession_id, name, concession_type,
/// calculation_type, value }` include on a scholarship assignment.
@freezed
abstract class ScholarshipConcessionRef with _$ScholarshipConcessionRef {
  const factory ScholarshipConcessionRef({
    @JsonKey(name: 'concession_id') String? concessionId,
    String? name,
    @JsonKey(name: 'concession_type') String? concessionType,
    @JsonKey(name: 'calculation_type') String? calculationType,
    @NullableDecimalConverter() Decimal? value,
  }) = _ScholarshipConcessionRef;

  factory ScholarshipConcessionRef.fromJson(Map<String, dynamic> json) => _$ScholarshipConcessionRefFromJson(json);
}

/// GET /admin/fees/reports/scholarships — finance.student_fee_concessions
/// rows (reports.service.js#getScholarshipReport) with `students` and
/// `fee_concessions` included, plus a computed `status`
/// (ACTIVE / EXPIRED). `valid_from` / `valid_to` are `@db.Date`.
@freezed
abstract class ScholarshipAssignment with _$ScholarshipAssignment {
  const factory ScholarshipAssignment({
    @JsonKey(name: 'student_concession_id') required String studentConcessionId,
    @JsonKey(name: 'valid_from') DateTime? validFrom,
    @JsonKey(name: 'valid_to') DateTime? validTo,
    String? remarks,
    @Default('ACTIVE') String status,
    @JsonKey(name: 'students') StudentBrief? student,
    @JsonKey(name: 'fee_concessions') ScholarshipConcessionRef? concession,
  }) = _ScholarshipAssignment;

  factory ScholarshipAssignment.fromJson(Map<String, dynamic> json) => _$ScholarshipAssignmentFromJson(json);
}

/// `parent_accounts.parents { first_name, last_name, mobile_no, email }`.
@freezed
abstract class OnlinePaymentParent with _$OnlinePaymentParent {
  const factory OnlinePaymentParent({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'mobile_no') String? mobileNo,
    String? email,
  }) = _OnlinePaymentParent;

  factory OnlinePaymentParent.fromJson(Map<String, dynamic> json) => _$OnlinePaymentParentFromJson(json);
}

@freezed
abstract class OnlinePaymentParentAccount with _$OnlinePaymentParentAccount {
  const factory OnlinePaymentParentAccount({
    @JsonKey(name: 'parent_account_id') String? parentAccountId,
    @JsonKey(name: 'parents') OnlinePaymentParent? parent,
  }) = _OnlinePaymentParentAccount;

  factory OnlinePaymentParentAccount.fromJson(Map<String, dynamic> json) => _$OnlinePaymentParentAccountFromJson(json);
}

/// GET /admin/fees/online-payments — onlinePayments.service.js
/// #listOnlinePayments: a bare array of
/// finance.parent_fee_payment_transactions rows with PAYMENT_INCLUDE
/// (`students`, `parent_accounts.parents`). `payment_status` is a free
/// String (Success / Pending / Failed seen today).
@freezed
abstract class AdminOnlinePayment with _$AdminOnlinePayment {
  const factory AdminOnlinePayment({
    @JsonKey(name: 'payment_id') required String paymentId,
    @JsonKey(name: 'transaction_id') String? transactionId,
    @JsonKey(name: 'gateway_name') String? gatewayName,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @DecimalConverter() required Decimal amount,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    @JsonKey(name: 'payment_date') DateTime? paymentDate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'students') StudentBrief? student,
    @JsonKey(name: 'parent_accounts') OnlinePaymentParentAccount? parentAccount,
  }) = _AdminOnlinePayment;

  factory AdminOnlinePayment.fromJson(Map<String, dynamic> json) => _$AdminOnlinePaymentFromJson(json);
}
