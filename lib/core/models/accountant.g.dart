// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accountant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountantDashboard _$AccountantDashboardFromJson(Map<String, dynamic> json) =>
    _AccountantDashboard(
      todaysCollection: decimalFromJson(json['todays_collection']),
      thisMonthCollection: decimalFromJson(json['this_month_collection']),
      pendingFeesAmount: decimalFromJson(json['pending_fees_amount']),
      studentsWithPendingFees:
          (json['students_with_pending_fees'] as num?)?.toInt() ?? 0,
      pendingLibraryFines: decimalFromJson(json['pending_library_fines']),
      pendingOnlinePayments:
          (json['pending_online_payments'] as num?)?.toInt() ?? 0,
      failedOnlinePayments:
          (json['failed_online_payments'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$AccountantDashboardToJson(
  _AccountantDashboard instance,
) => <String, dynamic>{
  'todays_collection': decimalToJson(instance.todaysCollection),
  'this_month_collection': decimalToJson(instance.thisMonthCollection),
  'pending_fees_amount': decimalToJson(instance.pendingFeesAmount),
  'students_with_pending_fees': instance.studentsWithPendingFees,
  'pending_library_fines': decimalToJson(instance.pendingLibraryFines),
  'pending_online_payments': instance.pendingOnlinePayments,
  'failed_online_payments': instance.failedOnlinePayments,
};

_AcctApplicantRef _$AcctApplicantRefFromJson(Map<String, dynamic> json) =>
    _AcctApplicantRef(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
    );

Map<String, dynamic> _$AcctApplicantRefToJson(_AcctApplicantRef instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

_AcctStudent _$AcctStudentFromJson(Map<String, dynamic> json) => _AcctStudent(
  studentId: json['student_id'] as String,
  admissionNo: json['admission_no'] as String?,
  rollNo: json['roll_no'] as String?,
  studentStatus: json['student_status'] as String?,
  className: _readClassName(json, 'current_class') as String?,
  sectionName: _readSectionName(json, 'current_section') as String?,
  applicants: json['applicants'] == null
      ? null
      : AcctApplicantRef.fromJson(json['applicants'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AcctStudentToJson(_AcctStudent instance) =>
    <String, dynamic>{
      'student_id': instance.studentId,
      'admission_no': instance.admissionNo,
      'roll_no': instance.rollNo,
      'student_status': instance.studentStatus,
      'current_class': instance.className,
      'current_section': instance.sectionName,
      'applicants': instance.applicants,
    };

_AcctPendingItem _$AcctPendingItemFromJson(Map<String, dynamic> json) =>
    _AcctPendingItem(
      feeStructureId: json['fee_structure_id'] as String?,
      feeHeadId: json['fee_head_id'] as String?,
      feeHeadName: json['fee_head_name'] as String? ?? '',
      dueDate: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      amount: decimalFromJson(json['amount']),
      concessionAmount: decimalFromJson(json['concession_amount']),
      paidAmount: decimalFromJson(json['paid_amount']),
      netDue: decimalFromJson(json['net_due']),
      status: json['status'] as String? ?? 'DUE',
      suggestedFineAmount: decimalFromJson(json['suggested_fine_amount']),
    );

Map<String, dynamic> _$AcctPendingItemToJson(_AcctPendingItem instance) =>
    <String, dynamic>{
      'fee_structure_id': instance.feeStructureId,
      'fee_head_id': instance.feeHeadId,
      'fee_head_name': instance.feeHeadName,
      'due_date': instance.dueDate?.toIso8601String(),
      'amount': decimalToJson(instance.amount),
      'concession_amount': decimalToJson(instance.concessionAmount),
      'paid_amount': decimalToJson(instance.paidAmount),
      'net_due': decimalToJson(instance.netDue),
      'status': instance.status,
      'suggested_fine_amount': decimalToJson(instance.suggestedFineAmount),
    };

_AcctConcession _$AcctConcessionFromJson(Map<String, dynamic> json) =>
    _AcctConcession(
      name: json['name'] as String?,
      concessionType: json['concession_type'] as String?,
      calculationType: json['calculation_type'] as String?,
      value: decimalFromJson(json['value']),
    );

Map<String, dynamic> _$AcctConcessionToJson(_AcctConcession instance) =>
    <String, dynamic>{
      'name': instance.name,
      'concession_type': instance.concessionType,
      'calculation_type': instance.calculationType,
      'value': decimalToJson(instance.value),
    };

_AcctScholarship _$AcctScholarshipFromJson(Map<String, dynamic> json) =>
    _AcctScholarship(
      studentConcessionId: json['student_concession_id'] as String,
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validTo: json['valid_to'] == null
          ? null
          : DateTime.parse(json['valid_to'] as String),
      remarks: json['remarks'] as String?,
      concession: json['fee_concessions'] == null
          ? null
          : AcctConcession.fromJson(
              json['fee_concessions'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AcctScholarshipToJson(_AcctScholarship instance) =>
    <String, dynamic>{
      'student_concession_id': instance.studentConcessionId,
      'valid_from': instance.validFrom?.toIso8601String(),
      'valid_to': instance.validTo?.toIso8601String(),
      'remarks': instance.remarks,
      'fee_concessions': instance.concession,
    };

_AcctReceiptItem _$AcctReceiptItemFromJson(Map<String, dynamic> json) =>
    _AcctReceiptItem(
      receiptItemId: json['receipt_item_id'] as String?,
      feeHeadName: json['fee_head_name'] as String? ?? '',
      amount: decimalFromJson(json['amount']),
      discountAmount: decimalFromJson(json['discount_amount']),
      fineAmount: decimalFromJson(json['fine_amount']),
      netAmount: decimalFromJson(json['net_amount']),
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$AcctReceiptItemToJson(_AcctReceiptItem instance) =>
    <String, dynamic>{
      'receipt_item_id': instance.receiptItemId,
      'fee_head_name': instance.feeHeadName,
      'amount': decimalToJson(instance.amount),
      'discount_amount': decimalToJson(instance.discountAmount),
      'fine_amount': decimalToJson(instance.fineAmount),
      'net_amount': decimalToJson(instance.netAmount),
      'remarks': instance.remarks,
    };

_AcctReceipt _$AcctReceiptFromJson(Map<String, dynamic> json) => _AcctReceipt(
  receiptId: json['receipt_id'] as String,
  receiptNo: json['receipt_no'] as String? ?? '',
  studentId: json['student_id'] as String?,
  receiptDate: json['receipt_date'] == null
      ? null
      : DateTime.parse(json['receipt_date'] as String),
  totalAmount: decimalFromJson(json['total_amount']),
  discountAmount: decimalFromJson(json['discount_amount']),
  fineAmount: decimalFromJson(json['fine_amount']),
  netAmount: decimalFromJson(json['net_amount']),
  paymentMode: json['payment_mode'] as String? ?? '',
  receiptStatus: json['receipt_status'] as String? ?? 'PAID',
  remarks: json['remarks'] as String?,
  cancelledAt: json['cancelled_at'] == null
      ? null
      : DateTime.parse(json['cancelled_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  student: json['students'] == null
      ? null
      : AcctStudent.fromJson(json['students'] as Map<String, dynamic>),
  className: _readReceiptClass(json, 'classes') as String?,
  items:
      (json['student_fee_receipt_items'] as List<dynamic>?)
          ?.map((e) => AcctReceiptItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AcctReceiptToJson(_AcctReceipt instance) =>
    <String, dynamic>{
      'receipt_id': instance.receiptId,
      'receipt_no': instance.receiptNo,
      'student_id': instance.studentId,
      'receipt_date': instance.receiptDate?.toIso8601String(),
      'total_amount': decimalToJson(instance.totalAmount),
      'discount_amount': decimalToJson(instance.discountAmount),
      'fine_amount': decimalToJson(instance.fineAmount),
      'net_amount': decimalToJson(instance.netAmount),
      'payment_mode': instance.paymentMode,
      'receipt_status': instance.receiptStatus,
      'remarks': instance.remarks,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'students': instance.student,
      'classes': instance.className,
      'student_fee_receipt_items': instance.items,
    };

_AcctFeeCategory _$AcctFeeCategoryFromJson(Map<String, dynamic> json) =>
    _AcctFeeCategory(
      feeCategoryId: json['fee_category_id'] as String?,
      categoryName: json['category_name'] as String?,
    );

Map<String, dynamic> _$AcctFeeCategoryToJson(_AcctFeeCategory instance) =>
    <String, dynamic>{
      'fee_category_id': instance.feeCategoryId,
      'category_name': instance.categoryName,
    };

_FeeCollectionSummary _$FeeCollectionSummaryFromJson(
  Map<String, dynamic> json,
) => _FeeCollectionSummary(
  student: AcctStudent.fromJson(json['student'] as Map<String, dynamic>),
  feeCategory: json['fee_category'] == null
      ? null
      : AcctFeeCategory.fromJson(json['fee_category'] as Map<String, dynamic>),
  scholarships:
      (json['scholarships'] as List<dynamic>?)
          ?.map((e) => AcctScholarship.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  previousPayments:
      (json['previous_payments'] as List<dynamic>?)
          ?.map((e) => AcctReceipt.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  pendingItems:
      (json['pending_items'] as List<dynamic>?)
          ?.map((e) => AcctPendingItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  totalDue: decimalFromJson(json['total_due']),
);

Map<String, dynamic> _$FeeCollectionSummaryToJson(
  _FeeCollectionSummary instance,
) => <String, dynamic>{
  'student': instance.student,
  'fee_category': instance.feeCategory,
  'scholarships': instance.scholarships,
  'previous_payments': instance.previousPayments,
  'pending_items': instance.pendingItems,
  'total_due': decimalToJson(instance.totalDue),
};

_AcctParentRef _$AcctParentRefFromJson(Map<String, dynamic> json) =>
    _AcctParentRef(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      mobileNo: json['mobile_no'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$AcctParentRefToJson(_AcctParentRef instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'mobile_no': instance.mobileNo,
      'email': instance.email,
    };

_AcctOnlinePayment _$AcctOnlinePaymentFromJson(Map<String, dynamic> json) =>
    _AcctOnlinePayment(
      paymentId: json['payment_id'] as String,
      studentId: json['student_id'] as String?,
      transactionId: json['transaction_id'] as String?,
      gatewayName: json['gateway_name'] as String?,
      paymentMethod: json['payment_method'] as String?,
      amount: decimalFromJson(json['amount']),
      currency: json['currency'] as String?,
      paymentStatus: json['payment_status'] as String? ?? 'Pending',
      paymentDate: json['payment_date'] == null
          ? null
          : DateTime.parse(json['payment_date'] as String),
      receiptId: json['receipt_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      items: json['items_snapshot'] == null
          ? const []
          : _snapshotFromJson(json['items_snapshot']),
      student: json['students'] == null
          ? null
          : AcctStudent.fromJson(json['students'] as Map<String, dynamic>),
      parent: _readParent(json, 'parent_accounts') == null
          ? null
          : AcctParentRef.fromJson(
              _readParent(json, 'parent_accounts') as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AcctOnlinePaymentToJson(_AcctOnlinePayment instance) =>
    <String, dynamic>{
      'payment_id': instance.paymentId,
      'student_id': instance.studentId,
      'transaction_id': instance.transactionId,
      'gateway_name': instance.gatewayName,
      'payment_method': instance.paymentMethod,
      'amount': decimalToJson(instance.amount),
      'currency': instance.currency,
      'payment_status': instance.paymentStatus,
      'payment_date': instance.paymentDate?.toIso8601String(),
      'receipt_id': instance.receiptId,
      'created_at': instance.createdAt?.toIso8601String(),
      'items_snapshot': instance.items,
      'students': instance.student,
      'parent_accounts': instance.parent,
    };

_FeeLateFeeSettings _$FeeLateFeeSettingsFromJson(Map<String, dynamic> json) =>
    _FeeLateFeeSettings(
      ratePerDay: decimalFromJson(json['rate_per_day']),
      gracePeriodDays: (json['grace_period_days'] as num?)?.toInt() ?? 0,
      maxFinePerItem: _nullableDecimal(json['max_fine_per_item']),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$FeeLateFeeSettingsToJson(_FeeLateFeeSettings instance) =>
    <String, dynamic>{
      'rate_per_day': decimalToJson(instance.ratePerDay),
      'grace_period_days': instance.gracePeriodDays,
      'max_fine_per_item': _nullableDecimalToJson(instance.maxFinePerItem),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
