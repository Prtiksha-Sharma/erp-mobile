// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_finance_reports.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminFeeReceipt _$AdminFeeReceiptFromJson(
  Map<String, dynamic> json,
) => _AdminFeeReceipt(
  receiptId: json['receipt_id'] as String,
  receiptNo: json['receipt_no'] as String?,
  receiptDate: json['receipt_date'] == null
      ? null
      : DateTime.parse(json['receipt_date'] as String),
  totalAmount: const NullableDecimalConverter().fromJson(json['total_amount']),
  discountAmount: const NullableDecimalConverter().fromJson(
    json['discount_amount'],
  ),
  fineAmount: const NullableDecimalConverter().fromJson(json['fine_amount']),
  netAmount: const DecimalConverter().fromJson(json['net_amount']),
  paymentMode: json['payment_mode'] as String?,
  receiptStatus: json['receipt_status'] as String?,
  remarks: json['remarks'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  student: json['students'] == null
      ? null
      : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminFeeReceiptToJson(
  _AdminFeeReceipt instance,
) => <String, dynamic>{
  'receipt_id': instance.receiptId,
  'receipt_no': instance.receiptNo,
  'receipt_date': instance.receiptDate?.toIso8601String(),
  'total_amount': const NullableDecimalConverter().toJson(instance.totalAmount),
  'discount_amount': const NullableDecimalConverter().toJson(
    instance.discountAmount,
  ),
  'fine_amount': const NullableDecimalConverter().toJson(instance.fineAmount),
  'net_amount': const DecimalConverter().toJson(instance.netAmount),
  'payment_mode': instance.paymentMode,
  'receipt_status': instance.receiptStatus,
  'remarks': instance.remarks,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'students': instance.student,
  'classes': instance.classRef,
};

_FeeCollectionReport _$FeeCollectionReportFromJson(Map<String, dynamic> json) =>
    _FeeCollectionReport(
      total: const DecimalConverter().fromJson(json['total']),
      receiptCount: (json['receipt_count'] as num?)?.toInt() ?? 0,
      receipts:
          (json['receipts'] as List<dynamic>?)
              ?.map((e) => AdminFeeReceipt.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AdminFeeReceipt>[],
    );

Map<String, dynamic> _$FeeCollectionReportToJson(
  _FeeCollectionReport instance,
) => <String, dynamic>{
  'total': const DecimalConverter().toJson(instance.total),
  'receipt_count': instance.receiptCount,
  'receipts': instance.receipts,
};

_FeeRefundReport _$FeeRefundReportFromJson(Map<String, dynamic> json) =>
    _FeeRefundReport(
      totalRefunded: const DecimalConverter().fromJson(json['total_refunded']),
      receiptCount: (json['receipt_count'] as num?)?.toInt() ?? 0,
      receipts:
          (json['receipts'] as List<dynamic>?)
              ?.map((e) => AdminFeeReceipt.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AdminFeeReceipt>[],
    );

Map<String, dynamic> _$FeeRefundReportToJson(_FeeRefundReport instance) =>
    <String, dynamic>{
      'total_refunded': const DecimalConverter().toJson(instance.totalRefunded),
      'receipt_count': instance.receiptCount,
      'receipts': instance.receipts,
    };

_ClassWiseCollectionRow _$ClassWiseCollectionRowFromJson(
  Map<String, dynamic> json,
) => _ClassWiseCollectionRow(
  classId: json['class_id'] as String?,
  className: json['class_name'] as String?,
  total: const DecimalConverter().fromJson(json['total']),
  receiptCount: (json['receipt_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$ClassWiseCollectionRowToJson(
  _ClassWiseCollectionRow instance,
) => <String, dynamic>{
  'class_id': instance.classId,
  'class_name': instance.className,
  'total': const DecimalConverter().toJson(instance.total),
  'receipt_count': instance.receiptCount,
};

_OutstandingFeeReport _$OutstandingFeeReportFromJson(
  Map<String, dynamic> json,
) => _OutstandingFeeReport(
  totalPending: const DecimalConverter().fromJson(json['total_pending']),
  studentsWithPending: (json['students_with_pending'] as num?)?.toInt() ?? 0,
  students:
      (json['students'] as List<dynamic>?)
          ?.map((e) => OutstandingStudent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <OutstandingStudent>[],
);

Map<String, dynamic> _$OutstandingFeeReportToJson(
  _OutstandingFeeReport instance,
) => <String, dynamic>{
  'total_pending': const DecimalConverter().toJson(instance.totalPending),
  'students_with_pending': instance.studentsWithPending,
  'students': instance.students,
};

_OutstandingStudent _$OutstandingStudentFromJson(Map<String, dynamic> json) =>
    _OutstandingStudent(
      studentId: json['student_id'] as String,
      admissionNo: json['admission_no'] as String?,
      totalDue: const DecimalConverter().fromJson(json['total_due']),
    );

Map<String, dynamic> _$OutstandingStudentToJson(_OutstandingStudent instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'total_due': const DecimalConverter().toJson(instance.totalDue),
    };

_ScholarshipConcessionRef _$ScholarshipConcessionRefFromJson(
  Map<String, dynamic> json,
) => _ScholarshipConcessionRef(
  concessionId: json['concession_id'] as String?,
  name: json['name'] as String?,
  concessionType: json['concession_type'] as String?,
  calculationType: json['calculation_type'] as String?,
  value: const NullableDecimalConverter().fromJson(json['value']),
);

Map<String, dynamic> _$ScholarshipConcessionRefToJson(
  _ScholarshipConcessionRef instance,
) => <String, dynamic>{
  'concession_id': instance.concessionId,
  'name': instance.name,
  'concession_type': instance.concessionType,
  'calculation_type': instance.calculationType,
  'value': const NullableDecimalConverter().toJson(instance.value),
};

_ScholarshipAssignment _$ScholarshipAssignmentFromJson(
  Map<String, dynamic> json,
) => _ScholarshipAssignment(
  studentConcessionId: json['student_concession_id'] as String,
  validFrom: json['valid_from'] == null
      ? null
      : DateTime.parse(json['valid_from'] as String),
  validTo: json['valid_to'] == null
      ? null
      : DateTime.parse(json['valid_to'] as String),
  remarks: json['remarks'] as String?,
  status: json['status'] as String? ?? 'ACTIVE',
  student: json['students'] == null
      ? null
      : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
  concession: json['fee_concessions'] == null
      ? null
      : ScholarshipConcessionRef.fromJson(
          json['fee_concessions'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ScholarshipAssignmentToJson(
  _ScholarshipAssignment instance,
) => <String, dynamic>{
  'student_concession_id': instance.studentConcessionId,
  'valid_from': instance.validFrom?.toIso8601String(),
  'valid_to': instance.validTo?.toIso8601String(),
  'remarks': instance.remarks,
  'status': instance.status,
  'students': instance.student,
  'fee_concessions': instance.concession,
};

_OnlinePaymentParent _$OnlinePaymentParentFromJson(Map<String, dynamic> json) =>
    _OnlinePaymentParent(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$OnlinePaymentParentToJson(
  _OnlinePaymentParent instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'mobile_no': instance.mobileNo,
  'email': instance.email,
};

_OnlinePaymentParentAccount _$OnlinePaymentParentAccountFromJson(
  Map<String, dynamic> json,
) => _OnlinePaymentParentAccount(
  parentAccountId: json['parent_account_id'] as String?,
  parent: json['parents'] == null
      ? null
      : OnlinePaymentParent.fromJson(json['parents'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OnlinePaymentParentAccountToJson(
  _OnlinePaymentParentAccount instance,
) => <String, dynamic>{
  'parent_account_id': instance.parentAccountId,
  'parents': instance.parent,
};

_AdminOnlinePayment _$AdminOnlinePaymentFromJson(Map<String, dynamic> json) =>
    _AdminOnlinePayment(
      paymentId: json['payment_id'] as String,
      transactionId: json['transaction_id'] as String?,
      gatewayName: json['gateway_name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      amount: const DecimalConverter().fromJson(json['amount']),
      paymentStatus: json['payment_status'] as String?,
      paymentDate: json['payment_date'] == null
          ? null
          : DateTime.parse(json['payment_date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      student: json['students'] == null
          ? null
          : StudentBrief.fromJson(json['students'] as Map<String, dynamic>),
      parentAccount: json['parent_accounts'] == null
          ? null
          : OnlinePaymentParentAccount.fromJson(
              json['parent_accounts'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdminOnlinePaymentToJson(_AdminOnlinePayment instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'transaction_id': instance.transactionId,
      'gateway_name': instance.gatewayName,
      'payment_method': instance.paymentMethod,
      'amount': const DecimalConverter().toJson(instance.amount),
      'payment_status': instance.paymentStatus,
      'payment_date': instance.paymentDate?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'students': instance.student,
      'parent_accounts': instance.parentAccount,
    };
