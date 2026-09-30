// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fee_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeeCategory _$FeeCategoryFromJson(Map<String, dynamic> json) => _FeeCategory(
  feeCategoryId: json['fee_category_id'] as String,
  categoryName: json['category_name'] as String,
);

Map<String, dynamic> _$FeeCategoryToJson(_FeeCategory instance) =>
    <String, dynamic>{
      'fee_category_id': instance.feeCategoryId,
      'category_name': instance.categoryName,
    };

_PendingFeeItem _$PendingFeeItemFromJson(Map<String, dynamic> json) =>
    _PendingFeeItem(
      feeStructureId: json['fee_structure_id'] as String?,
      feeHeadId: json['fee_head_id'] as String,
      feeHeadName: json['fee_head_name'] as String,
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      amount: decimalFromJson(json['amount']),
      netDue: decimalFromJson(json['net_due']),
      suggestedFineAmount: decimalFromJson(json['suggested_fine_amount']),
      status: $enumDecode(
        _$PendingItemStatusEnumMap,
        json['status'],
        unknownValue: PendingItemStatus.unknown,
      ),
    );

Map<String, dynamic> _$PendingFeeItemToJson(_PendingFeeItem instance) =>
    <String, dynamic>{
      'fee_structure_id': instance.feeStructureId,
      'fee_head_id': instance.feeHeadId,
      'fee_head_name': instance.feeHeadName,
      'due_date': instance.dueDate?.toIso8601String(),
      'amount': decimalToJson(instance.amount),
      'net_due': decimalToJson(instance.netDue),
      'suggested_fine_amount': decimalToJson(instance.suggestedFineAmount),
      'status': _$PendingItemStatusEnumMap[instance.status]!,
    };

const _$PendingItemStatusEnumMap = {
  PendingItemStatus.paid: 'PAID',
  PendingItemStatus.partiallyPaid: 'PARTIALLY_PAID',
  PendingItemStatus.overdue: 'OVERDUE',
  PendingItemStatus.due: 'DUE',
  PendingItemStatus.unknown: 'unknown',
};

_FeeReceiptItem _$FeeReceiptItemFromJson(Map<String, dynamic> json) =>
    _FeeReceiptItem(
      feeHeadName: json['fee_head_name'] as String,
      amount: decimalFromJson(json['amount']),
      netAmount: decimalFromJson(json['net_amount']),
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$FeeReceiptItemToJson(_FeeReceiptItem instance) =>
    <String, dynamic>{
      'fee_head_name': instance.feeHeadName,
      'amount': decimalToJson(instance.amount),
      'net_amount': decimalToJson(instance.netAmount),
      'remarks': instance.remarks,
    };

_FeeReceipt _$FeeReceiptFromJson(Map<String, dynamic> json) => _FeeReceipt(
  receiptId: json['receipt_id'] as String,
  receiptNo: json['receipt_no'] as String,
  receiptDate: DateTime.parse(json['receipt_date'] as String),
  totalAmount: decimalFromJson(json['total_amount']),
  netAmount: decimalFromJson(json['net_amount']),
  paymentMode: json['payment_mode'] as String?,
  receiptStatus: json['receipt_status'] as String?,
  remarks: json['remarks'] as String?,
  items: (json['student_fee_receipt_items'] as List<dynamic>)
      .map((e) => FeeReceiptItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FeeReceiptToJson(_FeeReceipt instance) =>
    <String, dynamic>{
      'receipt_id': instance.receiptId,
      'receipt_no': instance.receiptNo,
      'receipt_date': instance.receiptDate.toIso8601String(),
      'total_amount': decimalToJson(instance.totalAmount),
      'net_amount': decimalToJson(instance.netAmount),
      'payment_mode': instance.paymentMode,
      'receipt_status': instance.receiptStatus,
      'remarks': instance.remarks,
      'student_fee_receipt_items': instance.items,
    };

_FeeInstallment _$FeeInstallmentFromJson(Map<String, dynamic> json) =>
    _FeeInstallment(
      installmentId: json['installment_id'] as String,
      periodIndex: (json['period_index'] as num).toInt(),
      periodLabel: json['period_label'] as String,
      dueDate: DateTime.parse(json['due_date'] as String),
      amount: decimalFromJson(json['amount']),
      paidAmount: decimalFromJson(json['paid_amount']),
      balance: decimalFromJson(json['balance']),
      status: $enumDecode(
        _$InstallmentStatusEnumMap,
        json['status'],
        unknownValue: InstallmentStatus.unknown,
      ),
    );

Map<String, dynamic> _$FeeInstallmentToJson(_FeeInstallment instance) =>
    <String, dynamic>{
      'installment_id': instance.installmentId,
      'period_index': instance.periodIndex,
      'period_label': instance.periodLabel,
      'due_date': instance.dueDate.toIso8601String(),
      'amount': decimalToJson(instance.amount),
      'paid_amount': decimalToJson(instance.paidAmount),
      'balance': decimalToJson(instance.balance),
      'status': _$InstallmentStatusEnumMap[instance.status]!,
    };

const _$InstallmentStatusEnumMap = {
  InstallmentStatus.paid: 'PAID',
  InstallmentStatus.partiallyPaid: 'PARTIALLY_PAID',
  InstallmentStatus.overdue: 'OVERDUE',
  InstallmentStatus.pending: 'PENDING',
  InstallmentStatus.unknown: 'unknown',
};

_FeePlanRef _$FeePlanRefFromJson(Map<String, dynamic> json) => _FeePlanRef(
  planId: json['plan_id'] as String,
  frequency: json['frequency'] as String,
);

Map<String, dynamic> _$FeePlanRefToJson(_FeePlanRef instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'frequency': instance.frequency,
    };

_FeePlanEntry _$FeePlanEntryFromJson(Map<String, dynamic> json) =>
    _FeePlanEntry(
      plan: FeePlanRef.fromJson(json['plan'] as Map<String, dynamic>),
      feeHeadName: json['fee_head_name'] as String,
      installments: (json['installments'] as List<dynamic>)
          .map((e) => FeeInstallment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeePlanEntryToJson(_FeePlanEntry instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'fee_head_name': instance.feeHeadName,
      'installments': instance.installments,
    };

_ConcessionInfo _$ConcessionInfoFromJson(Map<String, dynamic> json) =>
    _ConcessionInfo(
      name: json['name'] as String,
      concessionType: json['concession_type'] as String?,
      calculationType: json['calculation_type'] as String?,
      value: decimalFromJson(json['value']),
    );

Map<String, dynamic> _$ConcessionInfoToJson(_ConcessionInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'concession_type': instance.concessionType,
      'calculation_type': instance.calculationType,
      'value': decimalToJson(instance.value),
    };

_Scholarship _$ScholarshipFromJson(Map<String, dynamic> json) => _Scholarship(
  feeConcessions: ConcessionInfo.fromJson(
    json['fee_concessions'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ScholarshipToJson(_Scholarship instance) =>
    <String, dynamic>{'fee_concessions': instance.feeConcessions};

_FeeSummary _$FeeSummaryFromJson(Map<String, dynamic> json) => _FeeSummary(
  feeCategory: json['fee_category'] == null
      ? null
      : FeeCategory.fromJson(json['fee_category'] as Map<String, dynamic>),
  scholarships: (json['scholarships'] as List<dynamic>)
      .map((e) => Scholarship.fromJson(e as Map<String, dynamic>))
      .toList(),
  previousPayments: (json['previous_payments'] as List<dynamic>)
      .map((e) => FeeReceipt.fromJson(e as Map<String, dynamic>))
      .toList(),
  pendingItems: (json['pending_items'] as List<dynamic>)
      .map((e) => PendingFeeItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalDue: decimalFromJson(json['total_due']),
  feePlans: (json['fee_plans'] as List<dynamic>)
      .map((e) => FeePlanEntry.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FeeSummaryToJson(_FeeSummary instance) =>
    <String, dynamic>{
      'fee_category': instance.feeCategory,
      'scholarships': instance.scholarships,
      'previous_payments': instance.previousPayments,
      'pending_items': instance.pendingItems,
      'total_due': decimalToJson(instance.totalDue),
      'fee_plans': instance.feePlans,
    };
