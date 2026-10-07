import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'admin_staff.dart';

part 'admin_finance_payroll.freezed.dart';
part 'admin_finance_payroll.g.dart';

/// HR & Payroll — backend features/admin/payroll/ (payroll.router.js,
/// mounted at /admin/payroll; School Admin + HR Manager).

/// GET/PATCH /admin/payroll/settings — staff.payroll_statutory_settings
/// (settings.service.js#getSettings). A school that never saved settings
/// gets STATUTORY_DEFAULTS (config/payrollConstants.js) as JSON numbers;
/// a saved row returns Prisma Decimal strings — both parse.
@freezed
abstract class PayrollSettings with _$PayrollSettings {
  const factory PayrollSettings({
    @JsonKey(name: 'pf_percentage') @NullableDecimalConverter() Decimal? pfPercentage,
    @JsonKey(name: 'esi_percentage') @NullableDecimalConverter() Decimal? esiPercentage,
    @JsonKey(name: 'pt_monthly_amount') @NullableDecimalConverter() Decimal? ptMonthlyAmount,
    @JsonKey(name: 'paid_leave_days_per_month') @LooseNumConverter() num? paidLeaveDaysPerMonth,
  }) = _PayrollSettings;

  factory PayrollSettings.fromJson(Map<String, dynamic> json) => _$PayrollSettingsFromJson(json);
}

/// `_count: { assignments }` on a template list row.
@freezed
abstract class PayrollTemplateCount with _$PayrollTemplateCount {
  const factory PayrollTemplateCount({@Default(0) int assignments}) = _PayrollTemplateCount;

  factory PayrollTemplateCount.fromJson(Map<String, dynamic> json) => _$PayrollTemplateCountFromJson(json);
}

/// GET /admin/payroll/templates — templates.service.js#listTemplates
/// (include `components` ordered by display_order, `_count.assignments`).
/// The Employee Details salary tab's [SalaryTemplate] (admin_staff.dart)
/// models only id/name/components; the Salary Templates tab also needs
/// `description` and the assigned-employee count, so this is the full row.
/// Components reuse [SalaryComponent].
@freezed
abstract class PayrollSalaryTemplate with _$PayrollSalaryTemplate {
  const factory PayrollSalaryTemplate({
    @JsonKey(name: 'template_id') required String templateId,
    @JsonKey(name: 'template_name') required String templateName,
    String? description,
    @Default(<SalaryComponent>[]) List<SalaryComponent> components,
    @JsonKey(name: '_count') PayrollTemplateCount? count,
  }) = _PayrollSalaryTemplate;

  factory PayrollSalaryTemplate.fromJson(Map<String, dynamic> json) => _$PayrollSalaryTemplateFromJson(json);
}

/// `staff_accounts { full_name, employee_code, designation }` include.
@freezed
abstract class PayslipStaffRef with _$PayslipStaffRef {
  const factory PayslipStaffRef({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? designation,
  }) = _PayslipStaffRef;

  factory PayslipStaffRef.fromJson(Map<String, dynamic> json) => _$PayslipStaffRefFromJson(json);
}

/// staff.staff_payslips — GET /admin/payroll/payslips
/// (generation.service.js#listPayslips, include staff_accounts) and the
/// `generated` rows of POST /admin/payroll/generate (no include, but
/// `full_name` / `employee_code` spread in). `status` stays a String
/// (GENERATED today).
@freezed
abstract class Payslip with _$Payslip {
  const factory Payslip({
    @JsonKey(name: 'payslip_id') required String payslipId,
    @JsonKey(name: 'staff_id') String? staffId,
    @JsonKey(name: 'payroll_month') int? payrollMonth,
    @JsonKey(name: 'payroll_year') int? payrollYear,
    @JsonKey(name: 'gross_earnings') @DecimalConverter() required Decimal grossEarnings,
    @JsonKey(name: 'total_deductions') @DecimalConverter() required Decimal totalDeductions,
    @JsonKey(name: 'net_pay') @DecimalConverter() required Decimal netPay,
    @Default('GENERATED') String status,
    @JsonKey(name: 'staff_accounts') PayslipStaffRef? staff,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
  }) = _Payslip;

  factory Payslip.fromJson(Map<String, dynamic> json) => _$PayslipFromJson(json);
}

/// One `skipped` entry of POST /admin/payroll/generate.
@freezed
abstract class PayslipSkip with _$PayslipSkip {
  const factory PayslipSkip({
    @JsonKey(name: 'staff_id') required String staffId,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? reason,
  }) = _PayslipSkip;

  factory PayslipSkip.fromJson(Map<String, dynamic> json) => _$PayslipSkipFromJson(json);
}

/// POST /admin/payroll/generate → `{ generated, skipped, total_active_employees }`.
@freezed
abstract class PayslipGenerationResult with _$PayslipGenerationResult {
  const factory PayslipGenerationResult({
    @Default(<Payslip>[]) List<Payslip> generated,
    @Default(<PayslipSkip>[]) List<PayslipSkip> skipped,
    @JsonKey(name: 'total_active_employees') @Default(0) int totalActiveEmployees,
  }) = _PayslipGenerationResult;

  factory PayslipGenerationResult.fromJson(Map<String, dynamic> json) => _$PayslipGenerationResultFromJson(json);
}
