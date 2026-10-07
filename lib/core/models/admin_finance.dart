import 'package:decimal/decimal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../utils/json_converters.dart';
import 'academic_refs.dart';

part 'admin_finance.freezed.dart';
part 'admin_finance.g.dart';

/// School Admin fee configuration — backend features/admin/fees/
/// (fees.router.js, mounted at /admin/fees). Every list endpoint returns
/// the raw Prisma rows (no `select`), so the fields below are the
/// finance.* columns in prisma/schema.prisma plus the `include`s each
/// service names. Prisma `Decimal` columns arrive as JSON strings;
/// service-computed totals (the dashboard) arrive as JSON numbers —
/// [DecimalConverter] accepts both.

/// GET /admin/fees/dashboard — dashboard.service.js#getDashboard. Every
/// money figure is a `Number(...)` sum computed server-side.
@freezed
abstract class AdminFeeDashboard with _$AdminFeeDashboard {
  const factory AdminFeeDashboard({
    @JsonKey(name: 'total_fee_collected') @DecimalConverter() required Decimal totalFeeCollected,
    @JsonKey(name: 'todays_collection') @DecimalConverter() required Decimal todaysCollection,
    @JsonKey(name: 'this_month_collection') @DecimalConverter() required Decimal thisMonthCollection,
    @JsonKey(name: 'pending_amount') @DecimalConverter() required Decimal pendingAmount,
    @JsonKey(name: 'students_with_pending_fees') @Default(0) int studentsWithPendingFees,
    @JsonKey(name: 'active_scholarships') @Default(0) int activeScholarships,
  }) = _AdminFeeDashboard;

  factory AdminFeeDashboard.fromJson(Map<String, dynamic> json) => _$AdminFeeDashboardFromJson(json);
}

/// finance.fee_categories — GET /admin/fees/categories
/// (feeCategories.service.js#listFeeCategories, no select). Named with the
/// Admin prefix because the student portal already has a `FeeCategory`.
@freezed
abstract class AdminFeeCategory with _$AdminFeeCategory {
  const factory AdminFeeCategory({
    @JsonKey(name: 'fee_category_id') required String feeCategoryId,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _AdminFeeCategory;

  factory AdminFeeCategory.fromJson(Map<String, dynamic> json) => _$AdminFeeCategoryFromJson(json);
}

/// finance.fee_heads — GET /admin/fees/heads (feeHeads.service.js#listFeeHeads).
@freezed
abstract class AdminFeeHead with _$AdminFeeHead {
  const factory AdminFeeHead({
    @JsonKey(name: 'fee_head_id') required String feeHeadId,
    @JsonKey(name: 'fee_head_name') required String feeHeadName,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _AdminFeeHead;

  factory AdminFeeHead.fromJson(Map<String, dynamic> json) => _$AdminFeeHeadFromJson(json);
}

/// `fee_heads: { fee_head_id, fee_head_name }` include.
@freezed
abstract class FeeHeadRef with _$FeeHeadRef {
  const factory FeeHeadRef({
    @JsonKey(name: 'fee_head_id') String? feeHeadId,
    @JsonKey(name: 'fee_head_name') String? feeHeadName,
  }) = _FeeHeadRef;

  factory FeeHeadRef.fromJson(Map<String, dynamic> json) => _$FeeHeadRefFromJson(json);
}

/// `fee_categories: { fee_category_id, category_name }` include.
@freezed
abstract class FeeCategoryRef with _$FeeCategoryRef {
  const factory FeeCategoryRef({
    @JsonKey(name: 'fee_category_id') String? feeCategoryId,
    @JsonKey(name: 'category_name') String? categoryName,
  }) = _FeeCategoryRef;

  factory FeeCategoryRef.fromJson(Map<String, dynamic> json) => _$FeeCategoryRefFromJson(json);
}

/// finance.fee_structures — GET /admin/fees/structures
/// (feeStructures.service.js#listFeeStructures: include classes
/// {class_id, class_name}, academic_sessions {session_id, session_name},
/// fee_heads {fee_head_id, fee_head_name}, fee_categories {fee_category_id,
/// category_name}). `fee_category_id` null = the default rate.
@freezed
abstract class AdminFeeStructure with _$AdminFeeStructure {
  const factory AdminFeeStructure({
    @JsonKey(name: 'fee_structure_id') required String feeStructureId,
    @JsonKey(name: 'class_id') String? classId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'fee_head_id') String? feeHeadId,
    @JsonKey(name: 'fee_category_id') String? feeCategoryId,
    @DecimalConverter() required Decimal amount,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'classes') ClassRef? classRef,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
    @JsonKey(name: 'fee_heads') FeeHeadRef? feeHead,
    @JsonKey(name: 'fee_categories') FeeCategoryRef? feeCategory,
  }) = _AdminFeeStructure;

  factory AdminFeeStructure.fromJson(Map<String, dynamic> json) => _$AdminFeeStructureFromJson(json);
}

/// finance.fee_concessions — GET /admin/fees/concessions
/// (concessions.service.js#listConcessions). `concession_type`
/// (SCHOLARSHIP/DISCOUNT) and `calculation_type` (PERCENTAGE/FLAT) stay
/// Strings so an unexpected value never crashes the list.
@freezed
abstract class AdminFeeConcession with _$AdminFeeConcession {
  const factory AdminFeeConcession({
    @JsonKey(name: 'concession_id') required String concessionId,
    required String name,
    @JsonKey(name: 'concession_type') @Default('SCHOLARSHIP') String concessionType,
    @JsonKey(name: 'calculation_type') @Default('PERCENTAGE') String calculationType,
    @DecimalConverter() required Decimal value,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _AdminFeeConcession;

  factory AdminFeeConcession.fromJson(Map<String, dynamic> json) => _$AdminFeeConcessionFromJson(json);
}

/// `routes: { route_id, route_name }` include.
@freezed
abstract class FinanceRouteRef with _$FinanceRouteRef {
  const factory FinanceRouteRef({
    @JsonKey(name: 'route_id') String? routeId,
    @JsonKey(name: 'route_name') String? routeName,
  }) = _FinanceRouteRef;

  factory FinanceRouteRef.fromJson(Map<String, dynamic> json) => _$FinanceRouteRefFromJson(json);
}

/// `route_stops: { stop_id, stop_name }` include (and the route picker's
/// full route_stops rows, which add `stop_order`).
@freezed
abstract class FinanceRouteStop with _$FinanceRouteStop {
  const factory FinanceRouteStop({
    @JsonKey(name: 'stop_id') required String stopId,
    @JsonKey(name: 'stop_name') required String stopName,
    @JsonKey(name: 'stop_order') int? stopOrder,
  }) = _FinanceRouteStop;

  factory FinanceRouteStop.fromJson(Map<String, dynamic> json) => _$FinanceRouteStopFromJson(json);
}

/// transport.transport_fee_rates — GET /admin/fees/transport-rates
/// (transportFeeRates.service.js RATE_INCLUDE: routes, route_stops,
/// academic_sessions, fee_heads). `stop_id` null = the route default.
@freezed
abstract class AdminTransportFeeRate with _$AdminTransportFeeRate {
  const factory AdminTransportFeeRate({
    @JsonKey(name: 'rate_id') required String rateId,
    @JsonKey(name: 'route_id') String? routeId,
    @JsonKey(name: 'stop_id') String? stopId,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'fee_head_id') String? feeHeadId,
    @DecimalConverter() required Decimal amount,
    @JsonKey(name: 'routes') FinanceRouteRef? route,
    @JsonKey(name: 'route_stops') FinanceRouteStop? stop,
    @JsonKey(name: 'academic_sessions') SessionRef? session,
    @JsonKey(name: 'fee_heads') FeeHeadRef? feeHead,
  }) = _AdminTransportFeeRate;

  factory AdminTransportFeeRate.fromJson(Map<String, dynamic> json) => _$AdminTransportFeeRateFromJson(json);
}

/// GET /admin/transport/routes — admin/transport/overview.service.js
/// #listRoutes (include buses, route_stops ordered by stop_order). Only
/// what the Transport Fee Rates route/stop pickers read.
@freezed
abstract class FinanceRouteOption with _$FinanceRouteOption {
  const factory FinanceRouteOption({
    @JsonKey(name: 'route_id') required String routeId,
    @JsonKey(name: 'route_name') required String routeName,
    @JsonKey(name: 'route_stops') @Default(<FinanceRouteStop>[]) List<FinanceRouteStop> stops,
  }) = _FinanceRouteOption;

  factory FinanceRouteOption.fromJson(Map<String, dynamic> json) => _$FinanceRouteOptionFromJson(json);
}

/// The institution's active academic session — the web reads it from
/// Redux (`/schools/by-slug`, which needs the subdomain), so mobile takes
/// `session_id` / `session_name` from GET /admin/staff/class-teacher/overview
/// (admin/staff/classTeacherInsights.service.js#getOverview, which resolves
/// the same `is_active`, newest-`created_at` session).
@freezed
abstract class FinanceActiveSession with _$FinanceActiveSession {
  const factory FinanceActiveSession({
    @JsonKey(name: 'session_id') required String sessionId,
    @JsonKey(name: 'session_name') String? sessionName,
  }) = _FinanceActiveSession;

  factory FinanceActiveSession.fromJson(Map<String, dynamic> json) => _$FinanceActiveSessionFromJson(json);
}
