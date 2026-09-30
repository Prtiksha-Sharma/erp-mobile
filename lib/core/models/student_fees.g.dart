// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_fees.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeeSummary _$FeeSummaryFromJson(Map<String, dynamic> json) => _FeeSummary(
  totalPaid: const DecimalConverter().fromJson(json['total_paid']),
  receiptCount: (json['receipt_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$FeeSummaryToJson(_FeeSummary instance) =>
    <String, dynamic>{
      'total_paid': const DecimalConverter().toJson(instance.totalPaid),
      'receipt_count': instance.receiptCount,
    };

_FeeReceipt _$FeeReceiptFromJson(Map<String, dynamic> json) => _FeeReceipt(
  receiptId: json['receipt_id'] as String,
  receiptNo: json['receipt_no'] as String,
  receiptDate: json['receipt_date'] == null
      ? null
      : DateTime.parse(json['receipt_date'] as String),
  netAmount: const DecimalConverter().fromJson(json['net_amount']),
  paymentMode: json['payment_mode'] as String?,
  receiptStatus: json['receipt_status'] as String?,
  items:
      (json['student_fee_receipt_items'] as List<dynamic>?)
          ?.map((e) => FeeReceiptItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$FeeReceiptToJson(_FeeReceipt instance) =>
    <String, dynamic>{
      'receipt_id': instance.receiptId,
      'receipt_no': instance.receiptNo,
      'receipt_date': instance.receiptDate?.toIso8601String(),
      'net_amount': const DecimalConverter().toJson(instance.netAmount),
      'payment_mode': instance.paymentMode,
      'receipt_status': instance.receiptStatus,
      'student_fee_receipt_items': instance.items,
    };

_FeeReceiptItem _$FeeReceiptItemFromJson(Map<String, dynamic> json) =>
    _FeeReceiptItem(
      receiptItemId: json['receipt_item_id'] as String,
      feeHeadName: json['fee_head_name'] as String,
      netAmount: const DecimalConverter().fromJson(json['net_amount']),
    );

Map<String, dynamic> _$FeeReceiptItemToJson(_FeeReceiptItem instance) =>
    <String, dynamic>{
      'receipt_item_id': instance.receiptItemId,
      'fee_head_name': instance.feeHeadName,
      'net_amount': const DecimalConverter().toJson(instance.netAmount),
    };

_PendingDues _$PendingDuesFromJson(Map<String, dynamic> json) => _PendingDues(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => PendingDueItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalDue: const DecimalConverter().fromJson(json['total_due']),
);

Map<String, dynamic> _$PendingDuesToJson(_PendingDues instance) =>
    <String, dynamic>{
      'items': instance.items,
      'total_due': const DecimalConverter().toJson(instance.totalDue),
    };

_PendingDueItem _$PendingDueItemFromJson(Map<String, dynamic> json) =>
    _PendingDueItem(
      feeStructureId: json['fee_structure_id'] as String?,
      feeHeadId: json['fee_head_id'] as String,
      feeHeadName: json['fee_head_name'] as String,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      amount: const DecimalConverter().fromJson(json['amount']),
      netDue: const DecimalConverter().fromJson(json['net_due']),
      status: json['status'] as String,
    );

Map<String, dynamic> _$PendingDueItemToJson(_PendingDueItem instance) =>
    <String, dynamic>{
      'fee_structure_id': instance.feeStructureId,
      'fee_head_id': instance.feeHeadId,
      'fee_head_name': instance.feeHeadName,
      'due_date': instance.dueDate?.toIso8601String(),
      'amount': const DecimalConverter().toJson(instance.amount),
      'net_due': const DecimalConverter().toJson(instance.netDue),
      'status': instance.status,
    };

_FeePlanEntry _$FeePlanEntryFromJson(Map<String, dynamic> json) =>
    _FeePlanEntry(
      plan: FeePlan.fromJson(json['plan'] as Map<String, dynamic>),
      feeHeadName: json['fee_head_name'] as String,
      installments:
          (json['installments'] as List<dynamic>?)
              ?.map((e) => FeeInstallment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FeePlanEntryToJson(_FeePlanEntry instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'fee_head_name': instance.feeHeadName,
      'installments': instance.installments,
    };

_FeePlan _$FeePlanFromJson(Map<String, dynamic> json) => _FeePlan(
  planId: json['plan_id'] as String,
  feeHeadId: json['fee_head_id'] as String,
  frequency: json['frequency'] as String,
);

Map<String, dynamic> _$FeePlanToJson(_FeePlan instance) => <String, dynamic>{
  'plan_id': instance.planId,
  'fee_head_id': instance.feeHeadId,
  'frequency': instance.frequency,
};

_FeeInstallment _$FeeInstallmentFromJson(Map<String, dynamic> json) =>
    _FeeInstallment(
      installmentId: json['installment_id'] as String,
      periodLabel: json['period_label'] as String,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      amount: const DecimalConverter().fromJson(json['amount']),
      balance: const DecimalConverter().fromJson(json['balance']),
      status: json['status'] as String,
    );

Map<String, dynamic> _$FeeInstallmentToJson(_FeeInstallment instance) =>
    <String, dynamic>{
      'installment_id': instance.installmentId,
      'period_label': instance.periodLabel,
      'due_date': instance.dueDate?.toIso8601String(),
      'amount': const DecimalConverter().toJson(instance.amount),
      'balance': const DecimalConverter().toJson(instance.balance),
      'status': instance.status,
    };
