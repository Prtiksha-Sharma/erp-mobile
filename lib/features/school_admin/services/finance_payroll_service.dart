import 'package:dio/dio.dart';

import '../../../core/api/api_result_extensions.dart';
import '../../../core/api/dio_client.dart';
import '../../../core/error/result.dart';
import '../../../core/models/admin_finance_payroll.dart';

/// Every `/admin/payroll/*` call the web's payrollService.js makes
/// (backend features/admin/payroll/payroll.router.js — School Admin and
/// HR Manager).
class AdminPayrollService {
  Dio get _dio => DioClient.instance.dio;

  Future<Result<PayrollSettings>> getSettings() => guard(() async {
    final res = await _dio.get('/admin/payroll/settings');
    return PayrollSettings.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  /// Only the keys present are written (settings.service.js#updateSettings
  /// ignores undefined ones).
  Future<Result<void>> updateSettings(Map<String, Object> payload) =>
      guard(() async => _dio.patch('/admin/payroll/settings', data: payload));

  Future<Result<List<PayrollSalaryTemplate>>> listTemplates() => guard(() async {
    final res = await _dio.get('/admin/payroll/templates');
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => PayrollSalaryTemplate.fromJson(e as Map<String, dynamic>)).toList();
  });

  /// `components` is a full replace on update (templates.service.js).
  Future<Result<void>> createTemplate(Map<String, Object?> payload) =>
      guard(() async => _dio.post('/admin/payroll/templates', data: payload));

  Future<Result<void>> updateTemplate(String templateId, Map<String, Object?> payload) =>
      guard(() async => _dio.patch('/admin/payroll/templates/$templateId', data: payload));

  /// 400s while any employee is assigned the template.
  Future<Result<void>> deleteTemplate(String templateId) =>
      guard(() async => _dio.delete('/admin/payroll/templates/$templateId'));

  Future<Result<PayslipGenerationResult>> generatePayslips({required int month, required int year}) => guard(() async {
    final res = await _dio.post('/admin/payroll/generate', data: {'payroll_month': month, 'payroll_year': year});
    return PayslipGenerationResult.fromJson(res.data['data'] as Map<String, dynamic>);
  });

  Future<Result<List<Payslip>>> listPayslips({required int month, required int year}) => guard(() async {
    final res = await _dio.get(
      '/admin/payroll/payslips',
      queryParameters: {'payroll_month': month, 'payroll_year': year},
    );
    final data = res.data['data'] as List? ?? const [];
    return data.map((e) => Payslip.fromJson(e as Map<String, dynamic>)).toList();
  });
}
