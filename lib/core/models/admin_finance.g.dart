// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_finance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminFeeDashboard _$AdminFeeDashboardFromJson(Map<String, dynamic> json) =>
    _AdminFeeDashboard(
      totalFeeCollected: const DecimalConverter().fromJson(
        json['total_fee_collected'],
      ),
      todaysCollection: const DecimalConverter().fromJson(
        json['todays_collection'],
      ),
      thisMonthCollection: const DecimalConverter().fromJson(
        json['this_month_collection'],
      ),
      pendingAmount: const DecimalConverter().fromJson(json['pending_amount']),
      studentsWithPendingFees:
          (json['students_with_pending_fees'] as num?)?.toInt() ?? 0,
      activeScholarships: (json['active_scholarships'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$AdminFeeDashboardToJson(_AdminFeeDashboard instance) =>
    <String, dynamic>{
      'total_fee_collected': const DecimalConverter().toJson(
        instance.totalFeeCollected,
      ),
      'todays_collection': const DecimalConverter().toJson(
        instance.todaysCollection,
      ),
      'this_month_collection': const DecimalConverter().toJson(
        instance.thisMonthCollection,
      ),
      'pending_amount': const DecimalConverter().toJson(instance.pendingAmount),
      'students_with_pending_fees': instance.studentsWithPendingFees,
      'active_scholarships': instance.activeScholarships,
    };

_AdminFeeCategory _$AdminFeeCategoryFromJson(Map<String, dynamic> json) =>
    _AdminFeeCategory(
      feeCategoryId: json['fee_category_id'] as String,
      categoryName: json['category_name'] as String,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminFeeCategoryToJson(_AdminFeeCategory instance) =>
    <String, dynamic>{
      'fee_category_id': instance.feeCategoryId,
      'category_name': instance.categoryName,
      'is_active': instance.isActive,
    };

_AdminFeeHead _$AdminFeeHeadFromJson(Map<String, dynamic> json) =>
    _AdminFeeHead(
      feeHeadId: json['fee_head_id'] as String,
      feeHeadName: json['fee_head_name'] as String,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminFeeHeadToJson(_AdminFeeHead instance) =>
    <String, dynamic>{
      'fee_head_id': instance.feeHeadId,
      'fee_head_name': instance.feeHeadName,
      'is_active': instance.isActive,
    };

_FeeHeadRef _$FeeHeadRefFromJson(Map<String, dynamic> json) => _FeeHeadRef(
  feeHeadId: json['fee_head_id'] as String?,
  feeHeadName: json['fee_head_name'] as String?,
);

Map<String, dynamic> _$FeeHeadRefToJson(_FeeHeadRef instance) =>
    <String, dynamic>{
      'fee_head_id': instance.feeHeadId,
      'fee_head_name': instance.feeHeadName,
    };

_FeeCategoryRef _$FeeCategoryRefFromJson(Map<String, dynamic> json) =>
    _FeeCategoryRef(
      feeCategoryId: json['fee_category_id'] as String?,
      categoryName: json['category_name'] as String?,
    );

Map<String, dynamic> _$FeeCategoryRefToJson(_FeeCategoryRef instance) =>
    <String, dynamic>{
      'fee_category_id': instance.feeCategoryId,
      'category_name': instance.categoryName,
    };

_AdminFeeStructure _$AdminFeeStructureFromJson(
  Map<String, dynamic> json,
) => _AdminFeeStructure(
  feeStructureId: json['fee_structure_id'] as String,
  classId: json['class_id'] as String?,
  sessionId: json['session_id'] as String?,
  feeHeadId: json['fee_head_id'] as String?,
  feeCategoryId: json['fee_category_id'] as String?,
  amount: const DecimalConverter().fromJson(json['amount']),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  classRef: json['classes'] == null
      ? null
      : ClassRef.fromJson(json['classes'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
  feeHead: json['fee_heads'] == null
      ? null
      : FeeHeadRef.fromJson(json['fee_heads'] as Map<String, dynamic>),
  feeCategory: json['fee_categories'] == null
      ? null
      : FeeCategoryRef.fromJson(json['fee_categories'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminFeeStructureToJson(_AdminFeeStructure instance) =>
    <String, dynamic>{
      'fee_structure_id': instance.feeStructureId,
      'class_id': instance.classId,
      'session_id': instance.sessionId,
      'fee_head_id': instance.feeHeadId,
      'fee_category_id': instance.feeCategoryId,
      'amount': const DecimalConverter().toJson(instance.amount),
      'due_date': instance.dueDate?.toIso8601String(),
      'classes': instance.classRef,
      'academic_sessions': instance.session,
      'fee_heads': instance.feeHead,
      'fee_categories': instance.feeCategory,
    };

_AdminFeeConcession _$AdminFeeConcessionFromJson(Map<String, dynamic> json) =>
    _AdminFeeConcession(
      concessionId: json['concession_id'] as String,
      name: json['name'] as String,
      concessionType: json['concession_type'] as String? ?? 'SCHOLARSHIP',
      calculationType: json['calculation_type'] as String? ?? 'PERCENTAGE',
      value: const DecimalConverter().fromJson(json['value']),
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$AdminFeeConcessionToJson(_AdminFeeConcession instance) =>
    <String, dynamic>{
      'concession_id': instance.concessionId,
      'name': instance.name,
      'concession_type': instance.concessionType,
      'calculation_type': instance.calculationType,
      'value': const DecimalConverter().toJson(instance.value),
      'is_active': instance.isActive,
    };

_FinanceRouteRef _$FinanceRouteRefFromJson(Map<String, dynamic> json) =>
    _FinanceRouteRef(
      routeId: json['route_id'] as String?,
      routeName: json['route_name'] as String?,
    );

Map<String, dynamic> _$FinanceRouteRefToJson(_FinanceRouteRef instance) =>
    <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
    };

_FinanceRouteStop _$FinanceRouteStopFromJson(Map<String, dynamic> json) =>
    _FinanceRouteStop(
      stopId: json['stop_id'] as String,
      stopName: json['stop_name'] as String,
      stopOrder: (json['stop_order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FinanceRouteStopToJson(_FinanceRouteStop instance) =>
    <String, dynamic>{
      'stop_id': instance.stopId,
      'stop_name': instance.stopName,
      'stop_order': instance.stopOrder,
    };

_AdminTransportFeeRate _$AdminTransportFeeRateFromJson(
  Map<String, dynamic> json,
) => _AdminTransportFeeRate(
  rateId: json['rate_id'] as String,
  routeId: json['route_id'] as String?,
  stopId: json['stop_id'] as String?,
  sessionId: json['session_id'] as String?,
  feeHeadId: json['fee_head_id'] as String?,
  amount: const DecimalConverter().fromJson(json['amount']),
  route: json['routes'] == null
      ? null
      : FinanceRouteRef.fromJson(json['routes'] as Map<String, dynamic>),
  stop: json['route_stops'] == null
      ? null
      : FinanceRouteStop.fromJson(json['route_stops'] as Map<String, dynamic>),
  session: json['academic_sessions'] == null
      ? null
      : SessionRef.fromJson(json['academic_sessions'] as Map<String, dynamic>),
  feeHead: json['fee_heads'] == null
      ? null
      : FeeHeadRef.fromJson(json['fee_heads'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdminTransportFeeRateToJson(
  _AdminTransportFeeRate instance,
) => <String, dynamic>{
  'rate_id': instance.rateId,
  'route_id': instance.routeId,
  'stop_id': instance.stopId,
  'session_id': instance.sessionId,
  'fee_head_id': instance.feeHeadId,
  'amount': const DecimalConverter().toJson(instance.amount),
  'routes': instance.route,
  'route_stops': instance.stop,
  'academic_sessions': instance.session,
  'fee_heads': instance.feeHead,
};

_FinanceRouteOption _$FinanceRouteOptionFromJson(Map<String, dynamic> json) =>
    _FinanceRouteOption(
      routeId: json['route_id'] as String,
      routeName: json['route_name'] as String,
      stops:
          (json['route_stops'] as List<dynamic>?)
              ?.map((e) => FinanceRouteStop.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FinanceRouteStop>[],
    );

Map<String, dynamic> _$FinanceRouteOptionToJson(_FinanceRouteOption instance) =>
    <String, dynamic>{
      'route_id': instance.routeId,
      'route_name': instance.routeName,
      'route_stops': instance.stops,
    };

_FinanceActiveSession _$FinanceActiveSessionFromJson(
  Map<String, dynamic> json,
) => _FinanceActiveSession(
  sessionId: json['session_id'] as String,
  sessionName: json['session_name'] as String?,
);

Map<String, dynamic> _$FinanceActiveSessionToJson(
  _FinanceActiveSession instance,
) => <String, dynamic>{
  'session_id': instance.sessionId,
  'session_name': instance.sessionName,
};
