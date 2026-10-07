// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_finance_payroll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayrollSettings _$PayrollSettingsFromJson(Map<String, dynamic> json) =>
    _PayrollSettings(
      pfPercentage: const NullableDecimalConverter().fromJson(
        json['pf_percentage'],
      ),
      esiPercentage: const NullableDecimalConverter().fromJson(
        json['esi_percentage'],
      ),
      ptMonthlyAmount: const NullableDecimalConverter().fromJson(
        json['pt_monthly_amount'],
      ),
      paidLeaveDaysPerMonth: const LooseNumConverter().fromJson(
        json['paid_leave_days_per_month'],
      ),
    );

Map<String, dynamic> _$PayrollSettingsToJson(_PayrollSettings instance) =>
    <String, dynamic>{
      'pf_percentage': const NullableDecimalConverter().toJson(
        instance.pfPercentage,
      ),
      'esi_percentage': const NullableDecimalConverter().toJson(
        instance.esiPercentage,
      ),
      'pt_monthly_amount': const NullableDecimalConverter().toJson(
        instance.ptMonthlyAmount,
      ),
      'paid_leave_days_per_month': const LooseNumConverter().toJson(
        instance.paidLeaveDaysPerMonth,
      ),
    };

_PayrollTemplateCount _$PayrollTemplateCountFromJson(
  Map<String, dynamic> json,
) => _PayrollTemplateCount(
  assignments: (json['assignments'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PayrollTemplateCountToJson(
  _PayrollTemplateCount instance,
) => <String, dynamic>{'assignments': instance.assignments};

_PayrollSalaryTemplate _$PayrollSalaryTemplateFromJson(
  Map<String, dynamic> json,
) => _PayrollSalaryTemplate(
  templateId: json['template_id'] as String,
  templateName: json['template_name'] as String,
  description: json['description'] as String?,
  components:
      (json['components'] as List<dynamic>?)
          ?.map((e) => SalaryComponent.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <SalaryComponent>[],
  count: json['_count'] == null
      ? null
      : PayrollTemplateCount.fromJson(json['_count'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PayrollSalaryTemplateToJson(
  _PayrollSalaryTemplate instance,
) => <String, dynamic>{
  'template_id': instance.templateId,
  'template_name': instance.templateName,
  'description': instance.description,
  'components': instance.components,
  '_count': instance.count,
};

_PayslipStaffRef _$PayslipStaffRefFromJson(Map<String, dynamic> json) =>
    _PayslipStaffRef(
      fullName: json['full_name'] as String?,
      employeeCode: json['employee_code'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$PayslipStaffRefToJson(_PayslipStaffRef instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'designation': instance.designation,
    };

_Payslip _$PayslipFromJson(Map<String, dynamic> json) => _Payslip(
  payslipId: json['payslip_id'] as String,
  staffId: json['staff_id'] as String?,
  payrollMonth: (json['payroll_month'] as num?)?.toInt(),
  payrollYear: (json['payroll_year'] as num?)?.toInt(),
  grossEarnings: const DecimalConverter().fromJson(json['gross_earnings']),
  totalDeductions: const DecimalConverter().fromJson(json['total_deductions']),
  netPay: const DecimalConverter().fromJson(json['net_pay']),
  status: json['status'] as String? ?? 'GENERATED',
  staff: json['staff_accounts'] == null
      ? null
      : PayslipStaffRef.fromJson(
          json['staff_accounts'] as Map<String, dynamic>,
        ),
  fullName: json['full_name'] as String?,
  employeeCode: json['employee_code'] as String?,
);

Map<String, dynamic> _$PayslipToJson(_Payslip instance) => <String, dynamic>{
  'payslip_id': instance.payslipId,
  'staff_id': instance.staffId,
  'payroll_month': instance.payrollMonth,
  'payroll_year': instance.payrollYear,
  'gross_earnings': const DecimalConverter().toJson(instance.grossEarnings),
  'total_deductions': const DecimalConverter().toJson(instance.totalDeductions),
  'net_pay': const DecimalConverter().toJson(instance.netPay),
  'status': instance.status,
  'staff_accounts': instance.staff,
  'full_name': instance.fullName,
  'employee_code': instance.employeeCode,
};

_PayslipSkip _$PayslipSkipFromJson(Map<String, dynamic> json) => _PayslipSkip(
  staffId: json['staff_id'] as String,
  fullName: json['full_name'] as String?,
  employeeCode: json['employee_code'] as String?,
  reason: json['reason'] as String?,
);

Map<String, dynamic> _$PayslipSkipToJson(_PayslipSkip instance) =>
    <String, dynamic>{
      'staff_id': instance.staffId,
      'full_name': instance.fullName,
      'employee_code': instance.employeeCode,
      'reason': instance.reason,
    };

_PayslipGenerationResult _$PayslipGenerationResultFromJson(
  Map<String, dynamic> json,
) => _PayslipGenerationResult(
  generated:
      (json['generated'] as List<dynamic>?)
          ?.map((e) => Payslip.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Payslip>[],
  skipped:
      (json['skipped'] as List<dynamic>?)
          ?.map((e) => PayslipSkip.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PayslipSkip>[],
  totalActiveEmployees: (json['total_active_employees'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PayslipGenerationResultToJson(
  _PayslipGenerationResult instance,
) => <String, dynamic>{
  'generated': instance.generated,
  'skipped': instance.skipped,
  'total_active_employees': instance.totalActiveEmployees,
};
